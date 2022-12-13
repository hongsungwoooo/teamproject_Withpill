package com.withpill.web.survey;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;

public class SurveydetailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String answerResult = req.getParameter("answerResult");
		System.out.println(answerResult);
		
		String[] answerR = answerResult.split(",");
		 
		List<String> answerList = new ArrayList<>();
		for (int i = 0; i < answerR.length; i++) {
			answerList.add(answerR[i]);
		}
		
		ActionForward forward = new ActionForward();
		String answerFirst = answerList.get(0);
		Map<String, String> answerMap = new HashMap<String, String>(); 
		answerMap = (Map<String, String>) req.getSession().getAttribute("answerMap");
		System.out.println(answerMap.size());
		
		if(answerMap.size()==3) {
			for(int i =0; i<3; i++) {
				if(i < answerList.size()) {
					answerMap.put("surveyQ4-" + (i+1), answerList.get(i));
				} else {
					answerMap.put("surveyQ4-" + (i+1), null);
				}
				
			}
			req.getSession().setAttribute("answerMap", answerMap);
			
		}
		if(answerList.get(0).equals("")) {
			forward.setPath("/survey/surveyQ5.jsp");
			forward.setRedirect(false);
		}else {
			answerList.remove(0);
			req.setAttribute("answerList", answerList);
			forward.setRedirect(false);
			forward.setPath("/survey/surveydetailQ"+answerFirst+".jsp");
		}
		
		
		
		return forward;
	}

}
