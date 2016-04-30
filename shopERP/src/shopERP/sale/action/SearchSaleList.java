package shopERP.sale.action;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.sale.model.ErpService;
import shopERP.sale.model.SaleListView;
import shopERP.sale.model.Search;

public class SearchSaleList implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		Search search = new Search();
		if(request.getParameter("start_date") != ""){
			search.setStart_date(Timestamp.valueOf(request.getParameter("start_date")+" 00:00:00"));
			search.setEnd_date(Timestamp.valueOf(request.getParameter("end_date")+" 00:00:00"));
		}else{
			search.setStart_date(Timestamp.valueOf("1900-01-01 00:00:00"));
			search.setEnd_date(Timestamp.valueOf("2200-01-01 00:00:00"));
		}
		search.setProduct_id(request.getParameter("product_id"));
		search.setCustomer_id(request.getParameter("customer_id"));
		search.setWarehouse_id(request.getParameter("warehouse_id"));
		search.setPay_type(request.getParameter("pay_type"));
		List<SaleListView> list = null;
		ErpService erpService = ErpService.getInstance();
		try {
			list = erpService.searchSaleList(search);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainTest2.jsp?left=./sale/view/sale.jsp&contents=./sale/view/sale_searchList.jsp");
		return forward;
	}

}
