package shopERP.sale.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.sale.action.Action;
import shopERP.sale.action.ActionForward;
import shopERP.sale.action.InsertSale;
import shopERP.sale.action.SaleList;
import shopERP.sale.action.SearchSaleList;

@WebServlet("*.sale")
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
		
		if(command.equals("insertSale.sale")) {
			action = new InsertSale();
			forward = action.excute(request, response);
		}else if(command.equals("SaleList.sale")) {
			action = new SaleList();
			forward = action.excute(request, response);
		}else if(command.equals("SaleSearch.sale")) {
			action = new SearchSaleList();
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
