package com.withpill.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.admin.dao.AdminDao;

public class AdminDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDao adao = new AdminDao();
		
		int id = Integer.parseInt( req.getParameter("id") );
		
		if(adao.deleteBoard(id)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/admin/AdminList.wp?id=" + id);
		}
		
		return forward;
	}

}
