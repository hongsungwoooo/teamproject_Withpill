package com.withpill.web.survey;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.survey.dao.SurveyDao;
import com.withpill.web.survey.dto.SurveyDto;

public class SurveyResultAction2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
//		req.setAttribute("surveyId", 15);
		int surveyId = (int) req.getAttribute("surveyId");
		
		SurveyDao surveyDao = new SurveyDao();
		SurveyDto surveyDto = surveyDao.getResult(surveyId);
		
//		List<Map<String, Object>> resultList = new ArrayList<Map<String,Object>>();

		List<Map<String, Object>> resultList = surveyDao.getNutrientEfficacy(surveyId);
		
		for(Map<String, Object> result : resultList) {
			System.out.println("key : " + result.keySet() + ", entry : " + result.entrySet());
			
			System.out.println(result.get("nutrient".toUpperCase()));
			System.out.println(result.get("efficacy".toUpperCase()));
			
		}
		
		req.setAttribute("surveyDto", surveyDto);
		req.setAttribute("resultList", resultList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/survey/survey_result.jsp");
		
		return forward;
	}
}