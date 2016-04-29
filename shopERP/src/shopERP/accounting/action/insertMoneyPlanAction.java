package shopERP.accounting.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.model.AcService;
import shopERP.accounting.model.MoneyPlan;

public class insertMoneyPlanAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		MoneyPlan plan = new MoneyPlan();
		AcService service = AcService.getInstance();

		String awd = null;

		// date 받아오기
		String date1 = request.getParameter("repeat_unit");
		Timestamp date = null;
		if (date1 == null) {
			date = java.sql.Timestamp.valueOf(date1);
		}
		System.out.println(date);
		String date2 = request.getParameter("period");
		Timestamp dates = null;
		if (date2 == null) {
			date = java.sql.Timestamp.valueOf(date2);
		}

		/* plan.setRepeat_unit(request.getParameter(DateStr)); */
	
		plan.setTypelist(request.getParameter("typelist"));
		plan.setFunds_id(request.getParameter("funds_id"));
		plan.setRepeat_unit(date);
		plan.setPeriod(dates);
		plan.setDept_id(request.getParameter("dept_id"));
		plan.setProj_id(Integer.parseInt("proj_id"));
		plan.setAccount_number(request.getParameter("account_number"));
		plan.setCustomer_id(request.getParameter("customer_id"));
		plan.setSums(Integer.parseInt(request.getParameter("sums")));
		plan.setRemarks(request.getParameter("remarks"));
		int re = -1;
		try {
			re = service.insertMoneyPlanService(plan);
		} catch (Exception e) {
			e.printStackTrace();
		}

		ActionForward forward = new ActionForward();

		if (re == 1) {
			forward.setInRedirect(true);
			forward.setPath("MoneyPlan_view.jsp");
		} else {
			forward.setInRedirect(true);
			forward.setPath("MoneyPlan_view.jsp");
		}
		return forward;
	}

}
