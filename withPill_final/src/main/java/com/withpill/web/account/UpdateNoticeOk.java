package com.withpill.web.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.mail.Gmail;
import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.AccountDto;

@WebServlet("/account/UpdateNoticeOk")
public class UpdateNoticeOk extends HttpServlet {
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
		AccountDto accountDto = (AccountDto) req.getSession().getAttribute("accountList");
		System.out.println("userId : " + accountDto.getUserId());
		
		String notice = (String)req.getParameter("notice");
		if(notice.equals("allNoticeAgree")) {
			
			Gmail.noticeSend("위드필 모든 정보 수신 동의해 주셔서 감사드립니다.", accountDto.getEmail());
			accountDao.updateAllNoticeOk(accountDto);
		}
		
		if(notice.equals("onlyPromotionNoticeAgree")) {
			Gmail.noticeSend("위드필 프로모션 수신 동의해 주셔서 감사드립니다.", accountDto.getEmail());
			accountDao.updatePromotionNoticeOk(accountDto);
		}
	}
	
	
}
