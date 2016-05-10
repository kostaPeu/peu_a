package shopERP.odm.action;

import java.security.Provider.Service;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.odm.model.Delivery;
import shopERP.odm.model.DeliveryList;
import shopERP.odm.model.OdmService;

public class DeliveryAddAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		String check = request.getParameter("checks");

		DeliveryList delivery = new DeliveryList();
		Delivery cdelivery = new Delivery();
		OdmService service = OdmService.getInstance();
		System.out.println("action");
		int max = 0;
		try {
			max = service.maxDeliveryList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		delivery.setDelivery_id("delivery_id"+(max+1));
		delivery.setOrder_id(check);
		try {
			cdelivery = service.deliveryList(check);
		} catch (Exception e) {
			e.printStackTrace();
		}
		delivery.setAddressee(cdelivery.getClient_name());
		delivery.setAddressee_address(cdelivery.getClient_address());
		delivery.setInvoice_number("13504-2355-"+(max+1));
		delivery.setDelivery_state("배송대기");
		
		int re = -1;
		
		try {
			re = service.deliveryAdd(delivery);	
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<DeliveryList> list = null;
		
		try {
			list = service.selectDelivery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(list != null){
			request.setAttribute("list", list);
		}
		ActionForward forward = new ActionForward();
		
		if(re == 1){
			forward.setRedirect(true);
			forward.setPath("./main.jsp?left=./odm/view/odm.jsp&contents=./odm/view/odm_deliveryList.jsp");
		}else{
/*			forward.setRedirect(true);
			forward.setPath("insert_form.jsp");*/
		}
		return forward;
	}

}
