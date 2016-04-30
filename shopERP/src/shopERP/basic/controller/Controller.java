package shopERP.basic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.action.Action;
<<<<<<< HEAD
import shopERP.basic.action.ActionForward;
=======
import shopERP.basic.action.ActionForward;
import shopERP.basic.action.CustomerAction;
import shopERP.basic.action.CustomerList;
>>>>>>> branch 'master' of https://github.com/kostaPeu/peu_a.git
import shopERP.basic.action.deleteProductAction;
import shopERP.basic.action.insertProductAction;
import shopERP.basic.action.productCodeListAction;
import shopERP.basic.action.productListAction;
import shopERP.basic.action.updateProductAction;
import shopERP.basic.action.CustomerAction;
import shopERP.basic.action.CustomerList;

@WebServlet("*.ba")
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
		System.out.println(command);
		
		if (command.equals("insertProduct.ba")) {
			action = new insertProductAction();
			forward = action.excute(request, response);
		}else if (command.equals("productList.ba")) {
			action = new productListAction();
			forward = action.excute(request, response);
		}else if (command.equals("updateProduct.ba")){
			action = new updateProductAction();
			forward = action.excute(request, response);
		}else if (command.equals("deleteProduct.ba")){
			action = new deleteProductAction();
			forward = action.excute(request, response);
		}else if(command.equals("customerProc.ba")) {
			action = new CustomerAction();
			forward = action.excute(request, response);
		}else if(command.equals("CustomerList.ba")){
			action = new CustomerList();
			forward = action.excute(request, response);
		}else if(command.equals("productCodeJson.ba")){
			action = new productCodeListAction();
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
