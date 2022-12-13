package com.withpill.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.admin.dao.AdminDao;

public class AdminWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath("/service/service_write.jsp");
		
		return forward;
	}

}
