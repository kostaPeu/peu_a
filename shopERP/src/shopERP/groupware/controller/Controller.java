package shopERP.groupware.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.action.Action;
import shopERP.groupware.action.ActionForward;
import shopERP.groupware.action.loginAction;
import shopERP.groupware.action.noticeDeleteAction;
import shopERP.groupware.action.noticeInsertAction;
import shopERP.groupware.action.noticeListAction;
import shopERP.groupware.action.noticeReplyInsertAction;
import shopERP.groupware.action.noticeUpdateAction;
import shopERP.groupware.action.noticeUpdateFormAction;
import shopERP.groupware.action.noticeViewAction;

@WebServlet("*.gw")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String requestUri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = requestUri.substring(conPath.length() + 1);

		Action action = null;
		ActionForward forward = null;

		if (command.equals("noticeListAction.gw")) {
			action = new noticeListAction();
			forward = action.excute(request, response);
		}else if(command.equals("noticeInsertAction.gw")){
			action = new noticeInsertAction();
			forward = action.excute(request, response);
		}else if(command.equals("noticeViewAction.gw")){
			action = new noticeViewAction();
			forward = action.excute(request, response);
		}else if(command.equals("noticeDeleteAction.gw")){
			action = new noticeDeleteAction();
			forward = action.excute(request, response);
		}else if(command.equals("noticeUpdateFormAction.gw")){
			action = new noticeUpdateFormAction();
			forward = action.excute(request, response);
		}else if(command.equals("noticeUpdateAction.gw")){
			action = new noticeUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("noticeReplyInsertAction.gw")){
			action = new noticeReplyInsertAction();
			forward = action.excute(request, response);
		}
		else if(command.equals("loginAction.gw")){
			request.setAttribute("emp_id", request.getParameter("idid"));
			request.setAttribute("emp_pwd", request.getParameter("pwpw"));

			action = new loginAction();
			forward = action.excute(request, response);
		}
		
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}


}
