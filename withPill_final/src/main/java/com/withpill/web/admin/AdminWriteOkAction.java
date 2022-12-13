package com.withpill.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.admin.dao.AdminDao;
import com.withpill.web.admin.dto.BoardDto;

public class AdminWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDao adao = new AdminDao();
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String category = req.getParameter("category");
		
		
		BoardDto bdto = new BoardDto();
		bdto.setTitle(title);
		bdto.setContent(content);
		bdto.setCategory(category);
		
		forward.setRedirect(true);
		
		if(adao.insertBoard(bdto)) {
			int id = adao.getSeq();
			// insert 성공시
			forward.setPath(req.getContextPath() + "/admin/AdminView.wp?id=" + id);
		} else {
			// 실패시
			forward.setPath(req.getContextPath() + "/admin/AdminWrite.wp" );
		}

		return forward;
	}

}
