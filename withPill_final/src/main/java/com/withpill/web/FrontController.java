package com.withpill.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.account.AccountEditOkAction;
import com.withpill.web.account.AccountJoinAction;
import com.withpill.web.account.AccountLogOutOkAction;
import com.withpill.web.account.AccountLoginOkAction;
import com.withpill.web.account.AccountMyPageViewAction;
import com.withpill.web.account.AccountUnregisterOkAction;
import com.withpill.web.account.AccountWishListDeleteOkAction;
import com.withpill.web.account.ProductViewAction;
import com.withpill.web.admin.AdminDeleteOkAction;
import com.withpill.web.admin.AdminEditAction;
import com.withpill.web.admin.AdminEditOkAction;
import com.withpill.web.admin.AdminListAction;
import com.withpill.web.admin.AdminViewAction;
import com.withpill.web.admin.AdminWriteAction;
import com.withpill.web.admin.AdminWriteOkAction;
import com.withpill.web.survey.SurveyAction;
import com.withpill.web.survey.SurveyInsertAction;
import com.withpill.web.survey.SurveyResultAction;
import com.withpill.web.survey.SurveydetailAction;


@WebServlet("*.wp")
public class FrontController extends HttpServlet {
	Map<String, Action> actionMap = new HashMap<String, Action>();
	
	public FrontController() {
		actionMap.put("/survey/survey.wp", new SurveyAction());
		actionMap.put("/survey/surveydetail.wp", new SurveydetailAction());
		actionMap.put("/survey/insertSurvey.wp", new SurveyInsertAction());
		actionMap.put("/survey/SurveyResult.wp", new SurveyResultAction());
		
		actionMap.put("/admin/AdminList.wp", new AdminListAction());
		actionMap.put("/admin/AdminView.wp", new AdminViewAction());
		actionMap.put("/admin/AdminWrite.wp", new AdminWriteAction());
		actionMap.put("/admin/AdminWriteOk.wp", new AdminWriteOkAction());
		actionMap.put("/admin/AdminEdit.wp", new AdminEditAction());
		actionMap.put("/admin/AdminEditOk.wp", new AdminEditOkAction());
		actionMap.put("/admin/AdminDeleteOk.wp", new AdminDeleteOkAction());
		
		actionMap.put("/account/ProductView.wp", new ProductViewAction());
		actionMap.put("/join/AccountJoin.wp", new AccountJoinAction());
		actionMap.put("/join/AccountLoginOk.wp", new AccountLoginOkAction());
		
		
		// ?????? ?????? ??????
		actionMap.put("/join/AccountEditOk.wp", new AccountEditOkAction());
		
		// ?????? ??????
		actionMap.put("/join/AccountUnregisterOk.wp", new AccountUnregisterOkAction());
		
		// ?????? ????????????
		actionMap.put("/join/AccountLogOutOk.wp", new AccountLogOutOkAction());
		
		// ?????? ???????????????
		actionMap.put("/join/AccountMyPageView.wp", new AccountMyPageViewAction());
		
		// ???????????????
		actionMap.put("/join/AccountWishListDelteOk.wp", new AccountWishListDeleteOkAction());
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		try {
			forward = this.actionMap.get(requestURI).execute(req, resp);
		} catch (NullPointerException e) {
			System.out.println("404 Page");
			forward = new ActionForward(true, "/notfound.jsp");
		}
		
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// redirect ??????
				resp.sendRedirect(forward.getPath());
			} else {
				// forward ??????
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
	
}
