package com.withpill.web.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.withpill.web.account.DBUtils;

public class AjaxDao {
	public static int confirmId(String userId) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int result = 0;

		String sql = " SELECT count(*) FROM  account WHERE userId=?";

		try {
			con = DBUtils.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			rs = ps.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtils.close(con, ps, rs);
		}
		return result;
	}
	
	
}
