package shopERP.odm.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.odm.model.FullOrder;
import shopERP.odm.model.OdmService;

public class OrderListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		OdmService service = OdmService.getInstance();
		
		List<FullOrder> list = null;
		try {
			list = service.fullOrderList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list != null){
			request.setAttribute("list", list);
		}
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainTest2.jsp?left=./odm/view/odm.jsp&contents=./odm/view/odm_orderList.jsp");
		return forward;
	}

}
