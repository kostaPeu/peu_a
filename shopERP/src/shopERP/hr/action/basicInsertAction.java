package shopERP.hr.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.hr.model.HR_Service;

public class basicInsertAction implements HR_Action {
	HR_Service service = HR_Service.getInstance();
	@Override
	public HR_ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) {
		int result=0;
		try {
			result=service.basicInsertService(request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		HR_ActionForward forward = new HR_ActionForward();
		
		request.setAttribute("result", result);
		
		forward.setRedirect(false);
		forward.setPath("/hr/view/hr_basic.jsp");
		return forward;
	}

}
