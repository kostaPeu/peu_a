package shopERP.purchase.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import shopERP.purchase.action.Action;
import shopERP.purchase.action.ActionForward;
import shopERP.purchase.model.ErpService;
import shopERP.purchase.model.Product;
import shopERP.purchase.model.PurchaseSearch;

public class SearchPurchase implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		ErpService erpService = ErpService.getInstance();
		/*Search search = new Search();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");*/
		String page = request.getParameter("pageNum");
		List<PurchaseSearch> list = null;
		try {
			list = erpService.searchPurchase();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}
		String json = JSONArray.fromObject(list).toString();
		System.out.println(json);
		request.setAttribute("json", json);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./purchase/json/Search.jsp");
		return forward;
	}

}
