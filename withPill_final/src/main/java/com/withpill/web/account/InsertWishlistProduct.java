package com.withpill.web.account;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.web.account.dao.AccountDao;
import com.withpill.web.account.dto.WishlistProductDto;

@WebServlet("/Account/InsertWishlistProduct")
public class InsertWishlistProduct extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		AccountDao accountDao = new AccountDao();
		String userId = (String) req.getSession().getAttribute("userId");
		
		int accountId = accountDao.getAccountId(userId);
		int productId = Integer.parseInt(req.getParameter("productId"));	
		System.out.println("productId : " + productId);
		
		int wishlistId = accountDao.getWishlistId(accountId);
		
		WishlistProductDto wishlistProductDto = new WishlistProductDto(wishlistId, productId);
		accountDao.insertWishlistProduct(wishlistProductDto);
		
		PrintWriter out = resp.getWriter();
		out.print("SUCCESS");
	}
}
