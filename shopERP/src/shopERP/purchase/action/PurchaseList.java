package shopERP.purchase.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.purchase.model.ErpService;
import shopERP.purchase.model.PurchaseListView;



public class PurchaseList implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		
		List<PurchaseListView> list = null;
		ErpService erpService = ErpService.getInstance();
		try {
			list = erpService.purchaseList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainTest2.jsp?left=./purchase/view/purchase.jsp&contents=./purchase/view/purchase_check.jsp");
		return forward;
	}

}
