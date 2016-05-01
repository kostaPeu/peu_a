package shopERP.sale.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.sale.model.Company_buy;
import shopERP.sale.model.ErpService;

public class insertcBuy implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		int re = -1;
		Company_buy cbuy = new Company_buy();
		cbuy.setCbuy_id(request.getParameter("cbuy_id"));
		cbuy.setCustomer_id(request.getParameter("customer_id"));
		cbuy.setProduct_id(request.getParameter("product_id"));
		cbuy.setWarehouse_id(request.getParameter("warehouse_id"));
		cbuy.setPay_type(request.getParameter("pay_type"));
		cbuy.setCbuy_priceout(Integer.parseInt(request.getParameter("cbuy_priceout")));
		cbuy.setCbuy_amount(Integer.parseInt(request.getParameter("cbuy_amount")));
		ErpService erpService = ErpService.getInstance();
		try {
			re = erpService.insertCbuy(cbuy);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ActionForward forward = new ActionForward();
		if(re > 0){
			forward.setRedirect(true);
			forward.setPath("CbuyList.sale");
		}
		return forward;
	}

}
