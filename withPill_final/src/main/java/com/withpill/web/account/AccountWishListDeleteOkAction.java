package com.withpill.web.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;

public class AccountWishListDeleteOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AccountDao adao = new AccountDao();
		
		int wishlistId = Integer.parseInt(req.getParameter("wishListId"));
		int productId = Integer.parseInt(req.getParameter("productId"));
		
		if(adao.deleteMyWishList(wishlistId, productId)){
			
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/join/AccountMyPageView.wp");
		}
		
		
	
		return forward;
	}

}
