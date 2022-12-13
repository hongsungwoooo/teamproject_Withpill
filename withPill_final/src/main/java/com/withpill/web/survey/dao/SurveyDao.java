package com.withpill.web.survey.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionException;
import org.apache.ibatis.session.SqlSessionFactory;

import com.withpill.mybatis.SqlMapConfig;
import com.withpill.web.survey.dto.SurveyDto;

public class SurveyDao {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public SurveyDao() {
		sqlsession = factory.openSession(true);
	}

	public SurveyDto getResult(int surveyId) {
		return sqlsession.selectOne("Survey.getResult", surveyId);
	}
	
	public List<Map<String, Object>> getNutrientEfficacy(int surveyId) {
		return sqlsession.selectList("Survey.getNutrientEfficacy", surveyId);
	}

	public boolean insertSurvey(Map<String, String> answerMap) {
		// TODO Auto-generated method stub
		return sqlsession.insert("Survey.insertSurvey",answerMap) > 0;
	}

	public int getCurrentSeq() {
		return sqlsession.selectOne("Survey.getCurrentSeq");
	}
	public int getSurveyCnt() {
		return sqlsession.selectOne("Survey.getSurveyCnt");
	}
	
	public String getSurveyName() {
		return sqlsession.selectOne("Survey.getSurveyName", 1);
	}

	public int getCount() {
		return sqlsession.selectOne("Survey.getCount");
	}
	
	public String getProductPath(String nutrientName) {
		return sqlsession.selectOne("Survey.getProductPath", nutrientName);
	}

}
