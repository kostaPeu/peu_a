package shopERP.sale.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.sale.model.Company_buyList;
import shopERP.sale.model.ErpService;
import shopERP.sale.model.SaleListView;

public class CbuyList implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		List<Company_buyList> list = null;
		ErpService erpService = ErpService.getInstance();
		try {
			list = erpService.cBuyList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./sale/view/buyingMgt_check.jsp");
		return forward;
	}

}
