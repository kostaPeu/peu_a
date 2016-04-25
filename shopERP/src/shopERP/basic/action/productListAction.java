package shopERP.basic.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.model.ErpService;
import shopERP.basic.model.Product;

public class productListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		
		ErpService service = ErpService.getInstance();
		List<Product> list = null;
		try {
			list = service.selectAllProducts();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("basic_productList.jsp");
		
		return forward;	
	}

}
