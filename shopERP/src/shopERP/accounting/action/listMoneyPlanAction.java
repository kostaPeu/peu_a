package shopERP.accounting.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.model.AcDao;
import shopERP.accounting.model.MoneyPlan;

public class listMoneyPlanAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		
		AcDao dao = AcDao.getInstance();
		List<MoneyPlan> list = dao.MoneyPlanList();
		
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		forward.setInRedirect(false);
		forward.setPath("./mainTest2.jsp?left=./accounting/view/Accounleft.jsp&contents=./accounting/view/MoneyPlan_view.jsp");
		return forward;
	}

}
