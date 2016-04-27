package shopERP.basic.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.model.ErpService;

public class DeleteAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		String arr[] = request.getParameterValues("array");
		
		ErpService erpService = ErpService.getInstance();
		int re = -1;
		String str = arr[0];
		String[] customer_id = str.split(",");
		for(int i=0;i<customer_id.length;i++){
			try {
				re = erpService.deleteCustomer(customer_id[i]);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		ActionForward forward = new ActionForward();
		if(re > 0){
			forward.setRedirect(false);
			forward.setPath("CustomerList.ba");
		}
		return forward;
	}
}
