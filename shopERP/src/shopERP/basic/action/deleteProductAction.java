package shopERP.basic.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.action.Action;
import shopERP.basic.action.ActionForward;
import shopERP.basic.model.ErpService;
import shopERP.basic.model.Product;

public class deleteProductAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		
		String check = request.getParameter("checks");

		ErpService service = ErpService.getInstance();
		
		int re = -1;
		try {
			re = service.deleteProduct(check);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		ActionForward forward = new ActionForward();
		
		if(re == 1){
			forward.setRedirect(true);
			System.out.println("����");
			forward.setPath("productList.ba");
		}else{
			System.out.println("����");
/*			forward.setRedirect(true);
			forward.setPath("insert_form.jsp");*/
		}
		return forward;
	}

}
