<%@page import="com.withpill.web.account.dao.AccountDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String userId = request.getParameter("userId");
	AccountDao adao = new AccountDao();
	
	if( !adao.checkId(userId) ){
		// 회원가입이 가능한 경우
		out.print("ok");
	} else {
		// 회원가입이 불가능한 경우
		out.print("not-ok");
	}
	

%>