package shopERP.odm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.odm.action.Action;
import shopERP.odm.action.ActionForward;
import shopERP.odm.action.DeliveryAddAction;
import shopERP.odm.action.OrderCollectAction;
import shopERP.odm.action.OrderListAction;
import shopERP.odm.action.ShoppingMallListAction;

@WebServlet("*.odm")
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

		if(command.equals("shoppingMallList.odm")) {
			action = new ShoppingMallListAction();
			forward = action.excute(request, response);
		}else if(command.equals("orderCollect.odm")) {
			action = new OrderCollectAction();
			forward = action.excute(request, response);
		}else if(command.equals("orderList.odm")){
			action = new OrderListAction();
			forward = action.excute(request, response);
		}else if(command.equals("deliveryAdd.odm")){
			action = new DeliveryAddAction();
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
