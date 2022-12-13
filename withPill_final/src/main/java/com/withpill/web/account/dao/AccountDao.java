package com.withpill.web.account.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.withpill.mybatis.SqlMapConfig;
import com.withpill.web.account.DBUtils;
import com.withpill.web.account.dto.AccountDto;
import com.withpill.web.account.dto.FindDto;
import com.withpill.web.account.dto.ProductDto;
import com.withpill.web.account.dto.WishlistDto;
import com.withpill.web.account.dto.WishlistProductDto;

public class AccountDao {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public AccountDao() {
		sqlsession = factory.openSession(true);
	}

	public int getAccountCnt() {
		return sqlsession.selectOne("Account.getAccountCnt");
	}
	
	public int getAccountId(String userId) {
		return sqlsession.selectOne("Account.getAccountId", userId);
	}

	// 여기서부터 하기
	public int getWishlistProductId(String wishlistProductId) {
		return sqlsession.selectOne("Account.getWishlistProductId", wishlistProductId);
	}

	public int getWishlistId(int accountId) {
		return sqlsession.selectOne("Account.getWishlistId", accountId);
	}

	public void insertWishlistProduct(WishlistProductDto wishlistProductDto) {
		sqlsession.insert("Account.insertWishlistProduct", wishlistProductDto);
	}
	
	public void deleteWishlistProduct(WishlistProductDto wishlistProductDto) {
		sqlsession.delete("Account.deleteWishlistProduct", wishlistProductDto);
	}
	
	public boolean join(AccountDto adto) {
		boolean result = false;
		if( sqlsession.insert("Account.join",adto) != 0) {
			sqlsession.insert("Account.insertWishlist");
			result = true;
			System.out.println("도착2");
		}
		return result;
	}

	public boolean login(String userId, String password) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userId", userId);
		datas.put("password", password);
		boolean result = false;
		
		if((Integer)sqlsession.selectOne("Account.login",datas) == 1) {
			result = true;
		}

		return result;
	}
	
	public boolean checkId( String userId ) {
		boolean result = false;
		int cnt = 0;
		
		cnt = sqlsession.selectOne("Account.checkId", userId);
		
		if( cnt >= 1 ) {
			result = true;
		}
		
		return result;
	}

	public boolean checkHisVo4IPw(FindDto fdto) {
		String result = sqlsession.selectOne("Account.checkHisVo4IPw", fdto);
		if(result == null) {
			return false;
		}
		return true;
	}
	
//	public static boolean checkHisVo4IPw(FindDto fdto) {
//		Connection con = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		System.out.println("이메일 : " + fdto.getEmail());
//		System.out.println("성별 : " + fdto.getGenderId());
//		System.out.println("비밀번호 : " + fdto.getPassword());
//		System.out.println("아이디 : " + fdto.getUserId());
//		
//		String sql = " SELECT name FROM  account " 
//				+ " WHERE name=? AND genderId=? AND email=? AND userId=?";
//
//
//		try {
//			con = DBUtils.getCon();
//			ps = con.prepareStatement(sql);
//			ps.setString(1, fdto.getName());
//			ps.setInt(2, fdto.getGenderId());
//			ps.setString(3, fdto.getEmail());
//			ps.setString(4, fdto.getUserId());
//			rs = ps.executeQuery();
//			if (rs.next()) {
//				return true;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DBUtils.close(con, ps, rs);
//			System.out.println("도착4");
//		}
//		return false;
//	}

	public List<Map<String, Object>> getProductDetail(String product) {
		return sqlsession.selectList("Account.getProductDetail", product);
	}

	public List<Integer> getAccountWishlist(Map<String, String> productIdMap) {
		return sqlsession.selectList("Account.getAccountWishlist", productIdMap);
	}
	
	/*
	 * 기쁜
	 */
	
	public AccountDto myAccount( String userId ) {
		AccountDto boardList = sqlsession.selectOne("Account.myAccount", userId);
		return boardList;
	}
	
	public boolean myAccountEdit(String name, String password, String email, String phone,  String userId) {
		boolean result = false;
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("name", name);
		datas.put("password", password);
		datas.put("email", email);		
		datas.put("phone", phone);
		datas.put("userId", userId);
		
		if(sqlsession.update("Account.myAccountEdit", datas) != 0) {
			result = true;
		}
		
		return result;
	}
	
	public boolean unregisterOk(String userId) {
		boolean result = false;
		if(sqlsession.update("Account.unregisterOk", userId) != 0) {
			result = true;
		}
		
		return result;
	}
	
	public List<ProductDto> myProductList( String userId ) {
		List<ProductDto> productList = sqlsession.selectList("Account.myProductList", userId);
		return productList;
	}
	
	public WishlistDto myWishList( String userId ) {
		WishlistDto wishList = sqlsession.selectOne("Account.myWishList", userId);
		return wishList;
	}
	
	public boolean deleteMyWishList(int wishlistId, int productId) {
		boolean result = false;
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("wishlistId", wishlistId);
		datas.put("productId", productId);

		if(sqlsession.delete("Account.deleteMyWishList", datas) == 1) {
			result = true;
		}
		
		return result;
	}

	public void updatePassword(FindDto fdto) {
		sqlsession.update("Account.updatePassword", fdto);
	}

	public void updateAllNoticeOk(AccountDto accountDto) {
		sqlsession.update("Account.updateAllNoticeOk", accountDto);
	}

	public void updatePromotionNoticeOk(AccountDto accountDto) {
		sqlsession.update("Account.updatePromotionNoticeOk", accountDto);
	}
	
	public void updateAllNoticeNo(AccountDto accountDto) {
		sqlsession.update("Account.updateAllNoticeNo", accountDto);
	}

	public void updatePromotionNoticeNo(AccountDto accountDto) {
		sqlsession.update("Account.updatePromotionNoticeNo", accountDto);
	}

}