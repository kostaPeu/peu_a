package shopERP.basic.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.model.ErpDao;
import shopERP.basic.model.ErpService;
import shopERP.basic.model.Product;

public class insertProductAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		Product product = new Product();
		int price_in = 0;
		int price_out = 0;
		product.setProduct_id(request.getParameter("product_id"));
		product.setProduct_name(request.getParameter("product_name"));
		product.setPgroup_id(request.getParameter("pgroup_id"));
		if(request.getParameter("price_in")!=null){
			price_in = Integer.parseInt(request.getParameter("price_in"));
		}
		if(request.getParameter("price_out")!=null){
			price_out = Integer.parseInt(request.getParameter("price_out"));
		}
		product.setPrice_in(price_in);
		product.setPrice_out(price_out);
		product.setMade_in(request.getParameter("made_in"));
		product.setStandard_id(request.getParameter("standard_id"));
		product.setBarcode(request.getParameter("barcode"));


		ErpService service = ErpService.getInstance();
		
		int re = -1;
		try {
			re = service.insertProduct(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		ActionForward forward = new ActionForward();
		
		if(re == 1){
			forward.setRedirect(true);
			forward.setPath("productList.ba");
		}else{
			System.out.println("½ÇÆÐ");
/*			forward.setRedirect(true);
			forward.setPath("insert_form.jsp");*/
		}
		return forward;
	}
}


