package com.withpill.web.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;

public class AccountUnregisterOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AccountDao adao = new AccountDao();		
		
		String userId = req.getParameter("userId");
		
		if(adao.unregisterOk(userId)){
			req.getSession().invalidate();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/index.jsp");
		}
		
		return forward;
	}
	
}
