package shopERP.purchase.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.purchase.action.Action;
import shopERP.purchase.action.ActionForward;
import shopERP.purchase.action.CustomerList;
import shopERP.purchase.action.InsertPurchase;
import shopERP.purchase.action.ProductList;
import shopERP.purchase.action.PurchaseList;
import shopERP.purchase.action.SearchPurchase;
import shopERP.purchase.action.SearchPurchaseList;
import shopERP.purchase.action.WareHouseList;
import shopERP.purchase.model.Product;

@WebServlet("*.pc")
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
		
		if(command.equals("insertPurchase.pc")) {
			action = new InsertPurchase();
			forward = action.excute(request, response);
		}else if(command.equals("PurchaseList.pc")) {
			action = new PurchaseList();
			forward = action.excute(request, response);
		}else if(command.equals("GetCustomerValue.pc")){
			action = new CustomerList();
			forward = action.excute(request, response);
		}else if(command.equals("GetProductValue.pc")){
			action = new ProductList();
			forward = action.excute(request, response);
		}else if(command.equals("GetWarehouseValue.pc")){
			action = new WareHouseList();
			forward = action.excute(request, response);
		}else if(command.equals("GetPurchaseValue.pc")){
			action = new SearchPurchase();
			forward = action.excute(request, response);
		}else if(command.equals("SearchPurchase.pc")){
			action = new SearchPurchaseList();
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
