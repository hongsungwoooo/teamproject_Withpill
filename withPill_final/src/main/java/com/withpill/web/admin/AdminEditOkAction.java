package com.withpill.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.admin.dao.AdminDao;
import com.withpill.web.admin.dto.BoardDto;

public class AdminEditOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDao adao = new AdminDao();
		BoardDto bdto = new BoardDto();
		
		int id = Integer.parseInt(req.getParameter("id"));
		bdto.setId(id);
		String category = req.getParameter("category");
		bdto.setCategory(category);
		System.out.println("category ok : " + category);
		bdto.setTitle(req.getParameter("title"));
		bdto.setContent( req.getParameter("content"));
	
		
		if(adao.updateBoard(bdto)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/admin/AdminView.wp?id=" + id);
		} 
		
		return forward;
	}

}
