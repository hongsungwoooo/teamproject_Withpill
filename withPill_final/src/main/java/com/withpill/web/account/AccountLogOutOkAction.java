package com.withpill.web.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;

public class AccountLogOutOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		System.out.println("로그아웃 실행!!");
		HttpSession session = req.getSession();
		session.invalidate();
		
		forward.setRedirect(true);
		forward.setPath("/");		
	
		return forward;
	}

	
	
}
