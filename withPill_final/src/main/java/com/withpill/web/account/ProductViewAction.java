package com.withpill.web.account;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.reflection.SystemMetaObject;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.dao.AccountDao;

public class ProductViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		String product = req.getParameter("product");
		String userId = (String) req.getSession().getAttribute("userId");
		
		String productPath = "/assets/images/pill/" + product + "/" + product;
		req.setAttribute("productPath", productPath);
		
		if(product.equals("CoQ-10")) {
			product = "CoQ";
		}
		
		AccountDao accountDao = new AccountDao();
		List<Map<String, Object>> productList = accountDao.getProductDetail(product);
		req.setAttribute("productList", productList);
		
		/*
		 * 사용자가 가지고 있는 찜목록 가져오기
		 */
		Map<String, String> productIdMap = new HashMap<String, String>();
		int index = 1;
		for(Map<String, Object> productMap : productList) {
			productIdMap.put("productId" + index , String.valueOf(productMap.get("ID")));
			System.out.println("productId" + index);
			System.out.println("string.valueof : " + productMap.get("ID"));
			index++;
		}
		
		if(userId == null) {
			forward.setRedirect(false);
			forward.setPath("/nutrient/nutrient_product.jsp");
			return forward;
		}
		
		productIdMap.put("userId", userId);
		
		List<Integer> rateList = accountDao.getAccountWishlist(productIdMap);
		System.out.println("rateList.size() : " + rateList.size());
		for(int i = 0; i < rateList.size(); i++) {
			System.out.println(rateList.get(i));
			int rate = (rateList.get(i) - 1) % 4;
			System.out.println("rate : " + rate);
			rateList.set(i, rate);
		}
		
		System.out.println("rateList.size() : " + rateList.size());
		req.setAttribute("rateList", rateList);
		
		forward.setRedirect(false);
		forward.setPath("/nutrient/nutrient_product.jsp");
		return forward;
	}

}
