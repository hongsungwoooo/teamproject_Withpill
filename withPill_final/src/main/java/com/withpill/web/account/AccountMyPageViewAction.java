package com.withpill.web.account;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.AccountDto;

public class AccountMyPageViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AccountDao adao = new AccountDao();			
		
		AccountDto accountList = (AccountDto) req.getSession().getAttribute("accountList");
		String userId = (String) req.getSession().getAttribute("userId");
		String sessiontest = (String) req.getSession().getAttribute("sessiontest");
		
		System.out.println(accountList);
		System.out.println(sessiontest);
		System.out.println("userId : " +userId);
		
		// 로그인에 성공했을 때
		// 회원의 찜목록이 있을 시 출력
		req.getSession().setAttribute("accountList", accountList);
		req.getSession().setAttribute("userId", userId);
		req.getSession().setAttribute("productList", adao.myProductList(userId));
		req.getSession().setAttribute("wishList", adao.myWishList(userId));
		
		forward.setRedirect(false);
		forward.setPath("/join/myPage.jsp");
	
		return forward;
	}

}
