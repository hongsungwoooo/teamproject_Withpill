package com.withpill.web.survey;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.web.survey.dao.SurveyDao;

@WebServlet("/survey/SurveyCount")
public class SurveyCount extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		SurveyDao sdao = new SurveyDao();
		
		int surveyCnt = sdao.getSurveyCnt();
		
		
		PrintWriter out = arg1.getWriter();
			out.print(surveyCnt);
	}
	

}
