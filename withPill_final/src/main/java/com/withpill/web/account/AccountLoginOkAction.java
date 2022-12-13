package com.withpill.web.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.admin.dao.AdminDao;

public class AccountLoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AccountDao adao = new AccountDao();
		AdminDao adminDao = new AdminDao();
		
		String userId = req.getParameter("userId");
		String password = req.getParameter("password");
		
		if(adminDao.login(userId, password)) {
			req.getSession().setAttribute("adminId", userId);
			System.out.println("adminId : " + req.getSession().getAttribute("adminId"));
			forward.setRedirect(true);
			forward.setPath("/index.jsp");
			return forward;
		}
		
		if(adao.login(userId, password)) {
			// 로그인 성공
			req.getSession().setAttribute("userId", userId);
			req.getSession().setAttribute("accountList", adao.myAccount(userId));
			req.getSession().setAttribute("sessiontest", adao.myAccount(userId).getName());
			forward.setRedirect(true);
			forward.setPath("/index.jsp");
		} else {
			// 로그인 실패
			forward.setRedirect(true);
			forward.setPath("/join/loginfail.jsp");
		}
		
	
		return forward;
	}

	
	
}
