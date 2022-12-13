package com.withpill.web.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.AccountDto;

public class AccountJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("excute 도착");
		AccountDao adao = new AccountDao();
		AccountDto adto = new AccountDto();
		ActionForward forward = new ActionForward();
		
		adto.setUserId(req.getParameter("userId"));
		adto.setPassword(req.getParameter("password"));
		adto.setEmail(req.getParameter("email"));
		adto.setName(req.getParameter("name"));
		adto.setBirth(req.getParameter("birth"));
		adto.setPhone(req.getParameter("phone"));
		adto.setGenderId(Integer.parseInt(req.getParameter("genderId")));
		
		System.out.println(adto.toString());
		if( adao.join(adto) ) {
			// 회원가입 성공, /join/login.jsp
			// redirect
			forward.setRedirect(true);
			forward.setPath("/index.jsp");
		} else {
			// 회원가입 실패, /join/join.jsp
			// redirect
			forward.setRedirect(true);
			forward.setPath("/join/join.jsp");
		}
		
		return forward;
	}

}











