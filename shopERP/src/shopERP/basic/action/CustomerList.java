package shopERP.basic.action;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.action.Action;
import shopERP.basic.action.ActionForward;
import shopERP.basic.model.Customer;
import shopERP.basic.model.ErpService;
import shopERP.basic.model.ListModel;

public class CustomerList implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		ErpService erpService = ErpService.getInstance();
		/*Search search = new Search();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");*/
		String page = request.getParameter("pageNum");
		ListModel listModel = null;
		try {
			listModel = erpService.CustomerList(request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(listModel != null){
			request.setAttribute("listModel", listModel);
		}
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./main.jsp?left=./basic/view/basic.jsp&contents=./basic/view/basic_customerList.jsp&pageNum="+page);
		return forward;
	}

}
