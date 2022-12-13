package com.withpill.web.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.AccountDto;

public class AccountEditOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AccountDao adao = new AccountDao();		
		
		String userId = req.getParameter("userId");
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		
		if(adao.myAccountEdit(name, password, email, phone, userId)){
			HttpSession session = req.getSession();
			session.setAttribute("accountList", adao.myAccount(userId));
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/join/myPage.jsp");
		}
		return forward;
	}

}
