package com.withpill.web.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpill.web.account.dto.AccountDto;



public class MyUtils {
	public static void openJSP(String jspNm, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jsp = "../webapp/join/" + jspNm + ".jsp";
		request.getRequestDispatcher(jsp).forward(request, response);
	}

/*
	public static AccountDto getLoginUser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		return (AccountDto) session.getAttribute("loginUser");
	}
	

	
	public static boolean checkLogin(UserVo loginUser, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		if (loginUser == null) {
			openJSP("user/login", request, response);
			return false;
		}
		return true;
	}
*/
	
	public static int parseStrInt(String param) {
		try {
			return Integer.parseInt(param);
		} catch(Exception e) {
			return 0;
		}
	}
	
	public static int getIntParam(String param, HttpServletRequest request) {
		return parseStrInt(request.getParameter(param));
	}
	
	public static boolean confirmPws(String pwd, String newPwd) {
		if (pwd.equals(newPwd)) return true;
		return false;
	}
	
	public static boolean isEmpty(String data) {
		if (data == null || data.equals("")) return true;
		else return false;
	}

	
}