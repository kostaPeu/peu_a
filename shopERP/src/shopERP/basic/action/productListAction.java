package shopERP.basic.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.model.ErpService;
import shopERP.basic.model.ListModelProduct;

public class productListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		
		ErpService service = ErpService.getInstance();

		String page = request.getParameter("pageNum");
		ListModelProduct listModel = null;
		try {
			listModel = service.selectAllProducts(request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(listModel != null){
			request.setAttribute("listModel", listModel);
		}
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainTest.jsp?left=./basic/view/basic.jsp&contents=./basic/view/basic_productList.jsp&pageNum="+page);
		return forward;
	}
}
