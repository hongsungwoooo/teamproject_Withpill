package com.withpill.web.account;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.web.account.dao.AccountDao;


@WebServlet("/account/AccountCount")
public class AccountCount extends HttpServlet{
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		AccountDao adao = new AccountDao();
		
		int accountCnt = adao.getAccountCnt();
		
		PrintWriter out = arg1.getWriter();
		out.print(accountCnt);
	
	}
}
