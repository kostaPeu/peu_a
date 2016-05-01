package shopERP.purchase.action;

import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import shopERP.groupware.model.GwService;
import shopERP.purchase.model.ErpService;
import shopERP.purchase.model.Purchase;
import shopERP.purchase.model.PurchaseListView;

public class InsertPurchase implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		int re = -1;
		Purchase p = new Purchase();
		HttpSession session = request.getSession();		
		String emp_id = (String)session.getAttribute("emp_id");
		p.setBuy_id(request.getParameter("buy_id"));
		p.setCustomer_id(request.getParameter("customer_id"));
		p.setProduct_id(request.getParameter("product_id"));
		p.setWarehouse_id(request.getParameter("warehouse_id"));
		p.setPay_type(request.getParameter("pay_type"));
		p.setBuy_price(Integer.parseInt(request.getParameter("buy_price")));
		p.setBuy_amount(Integer.parseInt(request.getParameter("buy_amount")));
		p.setEmp_id(emp_id);
		
		ErpService erpService = ErpService.getInstance();
		try {
			re = erpService.insertPurchase(p);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ActionForward forward = new ActionForward();
		if(re > 0){
			forward.setRedirect(true);
			forward.setPath("PurchaseList.pc");
		}
		return forward;
	}
}
