package com.withpill.web.survey;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.survey.dao.SurveyDao;
import com.withpill.web.survey.dto.SurveyDto;

public class SurveyResultAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		int surveyId = 0;
		if(req.getParameter("surveyId") != null) {
			surveyId = Integer.parseInt(req.getParameter("surveyId"));
		} else {
			surveyId = (int) req.getAttribute("surveyId");
		}
		
		SurveyDao surveyDao = new SurveyDao();
		SurveyDto surveyDto = surveyDao.getResult(surveyId);
		
		int healthScore = surveyDto.getIntensity()
						+ surveyDto.getHabit()
						+ surveyDto.getNutrition()
						+ surveyDto.getReview()
						+ surveyDto.getEtcfood();
		String improveHealth = healthScore >= 3 ? "건강개선 관리가 필요합니다." : "건강을 잘 챙기고 계십니다.";
		
		List<Map<String, Object>> resultList = surveyDao.getNutrientEfficacy(surveyId);
		
		for(Map<String, Object> result : resultList) {
			String nutrientName = (String) result.get("NUTRIENT");
			String product = surveyDao.getProductPath(nutrientName);
			System.out.println(product);
			
			if(product.equals("CoQ")) {
				product = "CoQ-10";
			}
			
			String productPath = "/assets/images/pill/" + product + "/" + product;
			result.put("PRODUCT", product);
			result.put("PRODUCTPATH", productPath);
		}
		
		req.setAttribute("improveHealth", improveHealth);
		req.setAttribute("surveyDto", surveyDto);
		req.setAttribute("resultList", resultList);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/survey/survey_result.jsp");
		
		return forward;
	}
}