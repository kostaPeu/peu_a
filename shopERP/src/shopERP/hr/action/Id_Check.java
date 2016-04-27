package shopERP.hr.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Id_Check implements HR_Action {

	@Override
	public HR_ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) {
		HR_ActionForward forward = new HR_ActionForward();
		forward.setRedirect(false);
		return forward;
	}

}
