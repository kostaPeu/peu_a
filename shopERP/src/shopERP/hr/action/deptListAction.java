package shopERP.hr.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.hr.model.HR_Service;
import shopERP.hr.model.deptList;

public class deptListAction implements HR_Action {
	HR_Service service = HR_Service.getInstance();
	@Override
	public HR_ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) {
		List<deptList> list= service.deptListService();
		
		return null;
	}

}
