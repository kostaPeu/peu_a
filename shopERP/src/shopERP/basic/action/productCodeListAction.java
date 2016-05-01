package shopERP.basic.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import shopERP.basic.model.ErpService;
import shopERP.basic.model.Product;
import shopERP.basic.model.ProductCode;
import shopERP.basic.model.Search;

public class productCodeListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("action");
		
		ErpService service = ErpService.getInstance();

		Search search = new Search();
		
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");
		
		List<Product> list = null;
		
		try {
			list = service.productCodeList(request,search);
		} catch (Exception e) {
			e.printStackTrace();
		}
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getProduct_id());
		}
		if(list != null){
			request.setAttribute("list", list);
		}
		String jsonArray = JSONArray.fromObject(list).toString();
		//JSONArray jsonArray = JSONArray.fromObject(list);
		System.out.println(jsonArray);
		
		request.setAttribute("jsonArray", jsonArray);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./basic/view/basic_productCodeJson.jsp");
		
		return forward;
	}

}
