package com.withpill.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.admin.dao.AdminDao;

public class AdminListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDao adao = new AdminDao();
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		
		// 전체 게시글 개수
		int totalCnt = adao.getBoardCnt();
		
		// 페이징 처리,현재 넘겨받은 페이지
		String temp = req.getParameter("page");
		int page = 0;
		
		page = temp == null ? 1 : Integer.parseInt(temp);
		
		int pageSize = 10;
		int endRow = page * 10;
		int startRow = endRow - 9;
		
		// 페이지 처리 부분
		int startPage = (page-1) / pageSize * pageSize + 1;
				
		int endPage = startPage + pageSize - 1;
				
		int totalPage = (totalCnt - 1)/pageSize + 1;
				
		endPage = endPage > totalPage? totalPage : endPage;
		
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		
		req.setAttribute("boardList", adao.getBoardList(startRow, endRow));
		req.setAttribute("totalCnt", totalCnt);
		
		forward.setRedirect(false);
		forward.setPath("/service/service_list.jsp");
		
		return forward;
	}

}
