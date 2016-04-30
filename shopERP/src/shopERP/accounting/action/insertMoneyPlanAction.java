package shopERP.accounting.action;

import java.sql.Date;
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

		plan.setTypelist(request.getParameter("typelist"));
		plan.setFunds_id(request.getParameter("funds_id"));
		plan.setRepeat_unit(request.getParameter("repeat_unit"));
		plan.setStart_date(Date.valueOf(request.getParameter("start_date")+ "YYYY/MM/DD"));
		plan.setPeriod(Date.valueOf(request.getParameter("period")+ "YYYY/MM/DD"));
		plan.setDept_id(request.getParameter("dept_id"));
		plan.setProj_id(Integer.parseInt(request.getParameter("proj_id")));
		plan.setAccount_number(request.getParameter("account_number"));
		plan.setCustomer_id(request.getParameter("customer_id"));
		plan.setSums(Integer.parseInt(request.getParameter("sums")));
		plan.setRemarks(request.getParameter("remarks"));
		plan.setDiagnosis_number(Integer.parseInt(request
				.getParameter("diagnosis_number")));

		int re = -1;

		try {
			re = service.insertMoneyPlanService(plan);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(re);
		ActionForward forward = new ActionForward();

		if (re == 1) {
			forward.setInRedirect(true);
			forward.setPath("listMoneyPlan.ac");
		} else {
			forward.setInRedirect(true);
			forward.setPath("listMoneyPlan.ac");
		}
		return forward;
	}

}
