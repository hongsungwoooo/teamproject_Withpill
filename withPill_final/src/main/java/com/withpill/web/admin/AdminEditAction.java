package com.withpill.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.admin.dao.AdminDao;
import com.withpill.web.admin.dto.BoardDto;

public class AdminEditAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDao adao = new AdminDao();
		BoardDto bdto = new BoardDto();
		
		int id = Integer.parseInt(req.getParameter("id"));
		req.setAttribute("bdto", adao.getDetail(id));
		
		String category = req.getParameter("category");
		System.out.println("category : " + category);
				
		forward.setRedirect(false);
		forward.setPath("/service/service_edit.jsp");
		
		
		return forward;
	}

}
