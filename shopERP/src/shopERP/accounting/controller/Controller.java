package shopERP.accounting.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.action.Action;
import shopERP.accounting.action.ActionForward;
import shopERP.accounting.action.insertAccountsAction;
import shopERP.accounting.action.insertCardsAction;
import shopERP.accounting.action.insertMoneyPlanAction;
import shopERP.accounting.action.listAccountsAction;
import shopERP.accounting.action.listCardsAction;
import shopERP.accounting.action.listMoneyPlanAction;


@WebServlet("*.ac")
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
		
		if (command.equals("insertAccount.ac")) {
			action = new insertAccountsAction();
			forward = action.excute(request, response);
		}else if(command.equals("accountList.ac")){
			action = new listAccountsAction();
			forward = action.excute(request, response);
		}else if (command.equals("insertCard.ac")) {
			action = new insertCardsAction();
			forward = action.excute(request, response);
		}else if (command.equals("cardList.ac")) {
			action = new listCardsAction();
			forward = action.excute(request, response);
		}else if (command.equals("insertMoneyPlan.ac")) {
			action= new insertMoneyPlanAction();
			forward= action.excute(request, response);
		}else if (command.equals("listMoneyPlan.ac")) {
			action = new listMoneyPlanAction();
			forward = action.excute(request, response);
		}
		
		if (forward != null) {
			if (forward.isInRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}


}
