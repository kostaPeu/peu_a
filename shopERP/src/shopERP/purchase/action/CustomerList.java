package shopERP.purchase.action;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import shopERP.purchase.model.Customer;
import shopERP.purchase.model.ErpService;

public class CustomerList implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		ErpService erpService = ErpService.getInstance();
		/*Search search = new Search();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");*/
		String page = request.getParameter("pageNum");
		List<Customer> list = null;
		try {
			list = erpService.customerList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}
		System.out.println(list);
		String json = JSONArray.fromObject(list).toString();
		request.setAttribute("json", json);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./purchase/json/Search.jsp");
		return forward;
	}

}
