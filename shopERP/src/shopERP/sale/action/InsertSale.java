package shopERP.sale.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.sale.model.ErpService;
import shopERP.sale.model.Sale;

public class InsertSale implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		Sale sale = new Sale();
		int re = -1;
		sale.setSell_id(request.getParameter("sell_id"));
		sale.setCustomer_id(request.getParameter("customer_id"));
		sale.setProduct_id(request.getParameter("product_id"));
		sale.setWarehouse_id(request.getParameter("warehouse_id"));
		sale.setPay_type(request.getParameter("pay_type"));
		sale.setSell_price(Integer.parseInt(request.getParameter("sell_price")));
		sale.setSell_amount(Integer.parseInt(request.getParameter("sell_amount")));
		
		ErpService erpService = ErpService.getInstance();
		try {
			re = erpService.insertSale(sale);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ActionForward forward = new ActionForward();
		if(re > 0){
			forward.setRedirect(true);
			forward.setPath("saleList.sale");
		}
		return forward;
	}

}
