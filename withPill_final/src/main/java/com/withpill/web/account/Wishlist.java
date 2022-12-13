package com.withpill.web.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.WishlistProductDto;

public class Wishlist implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AccountDao adao	=	new AccountDao();
		
//		테스트용 세팅
//		req.getSession().setAttribute("userid", "admin");
		String userId = (String) req.getSession().getAttribute("userId");
		
		int accountId = adao.getAccountId(userId);
		System.out.println("accountid" + accountId);

		req.getSession().setAttribute("admin", "1");
		String admin = (String) req.getSession().getAttribute("admin");
		System.out.println(admin);

		
		int productId = Integer.parseInt(req.getParameter("productId"));		
		int wishlistId = adao.getWishlistId(accountId);
		WishlistProductDto wishlistProductDto = new WishlistProductDto(wishlistId, productId);
		
		adao.insertWishlistProduct(wishlistProductDto);

		
		
		return forward;
	}
}
