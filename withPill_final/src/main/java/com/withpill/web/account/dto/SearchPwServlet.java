package com.withpill.web.account.dto;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.mail.Gmail;
import com.withpill.web.account.MyUtils;
import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.FindDto;
import com.withpill.web.email.MailSendPW;


@WebServlet("/searchPw")
public class SearchPwServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		System.out.println("도착2");
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
System.out.println("도착");
		
		String name = request.getParameter("name");
		int genderId = MyUtils.getIntParam("genderId", request);
		String email = request.getParameter("email");
		String userId = request.getParameter("userId");
		String password = changePw(userId);
		
		AccountDao accountDao = new AccountDao();
		FindDto fdto = new FindDto();
		fdto.setUserId(userId);
		fdto.setName(name);
		fdto.setGenderId(genderId);
		fdto.setEmail(email);
		fdto.setPassword(password);
		System.out.println(fdto.getPassword());
		
		// fdto 검사 - Pw용 - boolean
		boolean CheckPassword = accountDao.checkHisVo4IPw(fdto);

		// Pw찾기 - 정보 일치
		if (CheckPassword) {
			Gmail.findPwSend(fdto);
			accountDao.updatePassword(fdto);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이메일로 PW를 보내드렸어요 '); location.href='/';</script>");
			out.close();
			return;
		}

		// Pw찾기 - 정보 불일치
		if (!CheckPassword) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력하신 정보가 틀립니다!'); location.href='/';</script>");
			out.close();
			return;
		}
	}
	
	private String changePw(String userId) {
		String temp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyz";
		String password = "";
		int length = 10;
		
		for(int i = 0; i < length; i++) {
			int random = (int) (Math.random() * temp.length());
			password += temp.substring(random, random+1);
		}
		
		return password;
	}
}

