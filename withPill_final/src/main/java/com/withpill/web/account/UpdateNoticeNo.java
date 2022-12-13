package com.withpill.web.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.AccountDto;

@WebServlet("/account/UpdateNoticeNo")
public class UpdateNoticeNo extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) {
		AccountDao accountDao = new AccountDao();
		AccountDto accountDto = new AccountDto();
		accountDto = (AccountDto) req.getSession().getAttribute("accountList");
		System.out.println("userId : " + accountDto.getUserId());
		
		String notice = (String)req.getParameter("notice");
		if(notice.equals("allNoticeAgree")) {
			accountDao.updateAllNoticeNo(accountDto);
		}
		
		if(notice.equals("onlyPromotionNoticeAgree")) {
			accountDao.updatePromotionNoticeNo(accountDto);
		}
	}
}
