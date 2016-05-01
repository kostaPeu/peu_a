package shopERP.sale.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.sale.model.ErpService;
import shopERP.sale.model.Sale;
import shopERP.sale.model.SaleListView;

public class SaleList implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		List<SaleListView> list = null;
		ErpService erpService = ErpService.getInstance();
		try {
			list = erpService.saleList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainTest2.jsp?left=./sale/view/sale.jsp&contents=./sale/view/sale_check.jsp");
		return forward;
		
	}

}
