package com.withpill.web.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.withpill.web.admin.dto.AdminDto;
import com.withpill.web.admin.dto.BoardDto;
import com.withpill.mybatis.SqlMapConfig;
import com.withpill.web.admin.dto.BoardDto;


public class AdminDao {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public AdminDao() {
		sqlsession = factory.openSession(true);
	}
	
	public List<BoardDto> getBoardList(int startRow, int endRow){
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<BoardDto> boardList = sqlsession.selectList("Admin.getBoardList", datas);
		
		return boardList;
	}
	
	public BoardDto getDetail(int adminid) {
		return (BoardDto)sqlsession.selectOne("Admin.getDetail", adminid);
	}
		
	public boolean insertAdmin(AdminDto adto) {
		boolean result = false;
		
		if(sqlsession.insert("Admin.insertAdmin", adto) == 1) {
			result = true;
		}
		
		return result;
	}
	
	public boolean insertBoard(BoardDto bdto) {
		boolean result = false;
		
		if(sqlsession.insert("Admin.insertBoard", bdto) == 1) {
			result = true;
		}
		
		return result;
	}
	
	public int getSeq() {
		return sqlsession.selectOne("Admin.getSeq");
	}

	public int getBoardCnt() {
		return sqlsession.selectOne("Admin.getBoardCnt");
	}

	public boolean updateBoard(BoardDto bdto) {
		boolean result = false;
		
		if(sqlsession.update("Admin.updateBoard",bdto) != 0) {
			result = true;
		}
		
		return result;
	}
	
	public boolean deleteBoard(int id) {
		boolean result = false;
		
		if(sqlsession.delete("Admin.deleteBoard", id) == 1) {
			result = true;
		}
		
		return result;
	}

	public boolean login(String userId, String password) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userId", userId);
		datas.put("password", password);
		boolean result = false;
		
		if((Integer)sqlsession.selectOne("Admin.login", datas ) == 1) {
			result = true;
		}

		return result;
	}
}
