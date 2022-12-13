package com.withpill.web.survey;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.api.mail.Gmail;
import com.withpill.web.survey.dao.SurveyDao;

public class SurveyInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		SurveyDao sdao = new SurveyDao();
		Map<String, String> answerMap = (Map<String, String>) req.getSession().getAttribute("answerMap");
		
		System.out.println("--------------------------------");
		for( String key : answerMap.keySet() ){
            System.out.println( String.format("키 : %s, 값 : %s", key, answerMap.get(key)) );
        }
		sdao.insertSurvey(answerMap);
		
		int surveyId = sdao.getCurrentSeq();
		req.setAttribute("surveyId", surveyId);
		//String content = "위드필 설문 결과 보러가기 http://localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId;
//		String content = "<a href='localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId +"'> 위드필 설문 결과 보러가기 </a>";
//		String a = "<a onclick='goto('localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId + "')'> 위드필 설문 결과 보러가기 </a>"
//				+ "<br> <a href='http://localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId +"'> 위드필 설문 결과 보러가기 </a>"
//				+ "<br> <a onclick=\"goto('localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId + "')\"> 위드필 설문 결과 보러가기 </a>"
//				+ "<br> <a onclick='goto('http://localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId + "')'> 위드필 설문 결과 보러가기 </a>"
//				+ "<br> <a onclick=\"goto('http://localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId + "')\"> 위드필 설문 결과 보러가기 </a>";
		String content = "<a href='http://localhost:8081/survey/SurveyResult.wp?surveyId=" + surveyId +"'> 위드필 설문 결과 보러가기 </a>";
		Gmail.surveySend(content, answerMap.get("surveyQ13"));
		
		answerMap.clear();
		
		safeSession(req, resp);
		
		forward.setRedirect(false);
		forward.setPath("/survey/SurveyResult.wp");
		return forward;
	}

	private void safeSession(HttpServletRequest req, HttpServletResponse resp) {
		String userId = null;
		String adminId = null;
		
		
		if(req.getSession().getAttribute("userId") != null) {
			userId = (String) req.getSession().getAttribute("userId");
		}
		
		if(req.getSession().getAttribute("adminId") != null) {
			userId = (String) req.getSession().getAttribute("adminId");
		}
		
		req.getSession().invalidate();
		
		req.getSession().setAttribute("userId", userId);
		req.getSession().setAttribute("adminId", adminId);
	}
}
