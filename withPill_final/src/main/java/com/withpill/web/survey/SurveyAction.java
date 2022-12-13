package com.withpill.web.survey;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;

public class SurveyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		String answer = req.getParameter("answer");
		String answerPath = req.getParameter("answerPath");
		String nextAnswerPath = req.getParameter("nextAnswerPath");
		
		System.out.println("TestAction answer : " + answer);
		System.out.println("answerPath : " + answerPath);
		
		Map<String, String> answerMap = new HashMap<String, String>();
		
		if(req.getSession().getAttribute("answerMap") == null) {
			req.getSession().setAttribute("answerMap", answerMap);
		} 
		answerMap = (Map<String, String>) req.getSession().getAttribute("answerMap");

		answerMap.put(answerPath, answer);
		req.getSession().setAttribute("answerMap", answerMap);
		
        for( String key : answerMap.keySet() ){
            System.out.println( String.format("키 : %s, 값 : %s", key, answerMap.get(key)) );
        }
		System.out.println("answerPath : " + answerPath);
		System.out.println("nextAnswerPath : " + nextAnswerPath);
		ActionForward forward = new ActionForward();
		forward.setPath(nextAnswerPath);
		forward.setRedirect(false);
		return forward;
	}

}
