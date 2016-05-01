package shopERP.basic.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.basic.model.Customer;
import shopERP.basic.model.ErpService;

public class CustomerAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		int re = -1;
		Customer customer = new Customer();
		customer.setCustomer_id(request.getParameter("customer_id"));
		customer.setCustomer_name(request.getParameter("customer_name"));
		customer.setRepre_name(request.getParameter("repre_name"));
		customer.setPhone_number(request.getParameter("phone_number"));
		customer.setCustomer_address(request.getParameter("customer_address"));
		customer.setCopy_bankbook(request.getParameter("copy_bankbook"));
		customer.setBankbook_check(request.getParameter("bankbook_check"));
		customer.setCustomer_email(request.getParameter("customer_email"));
		customer.setCustomer_fax(request.getParameter("customer_fax"));
		customer.setCheckman(request.getParameter("checkman"));
		
		ErpService erpService = ErpService.getInstance();
		
		try {
			re = erpService.insertCustomer(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ActionForward forward = new ActionForward();
		if(re > 0){
			forward.setRedirect(true);
			forward.setPath("CustomerList.ba");
		}else{
			forward.setRedirect(true);
			forward.setPath("/shopERP/mainTest2.jsp");
		}
		return forward;
	}
}
