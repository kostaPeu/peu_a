package shopERP.odm.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.odm.model.OdmService;
import shopERP.odm.model.ShoppingMall;

public class ShoppingMallListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		OdmService service = OdmService.getInstance();

		List<ShoppingMall> list = null;
		try {
			list = service.shoppingMallList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getShoppingmall_name());
		}
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainTest2.jsp?left=./odm/view/odm.jsp&contents=./odm/view/odm_orderCollect.jsp");
		return forward;
	}

}
