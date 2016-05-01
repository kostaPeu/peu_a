package shopERP.accounting.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.model.AcService;
import shopERP.accounting.model.Accounts;

public class insertAccountsAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		Accounts accounts = new Accounts();

		int re = -1;

		accounts.setAccount_number(request.getParameter("account_number"));
		accounts.setAccount_name(request.getParameter("account_name"));
		accounts.setCode(Integer.parseInt(request.getParameter("code")));
		accounts.setAccount_detail(request.getParameter("account_detail"));
		accounts.setUse(request.getParameter("use"));
		accounts.setRemarks(request.getParameter("remarks"));

		AcService service = AcService.getInstance();
		try {
			re = service.insertAccountService(accounts);
		} catch (Exception e) {
			e.printStackTrace();
		}

		ActionForward forward = new ActionForward();

		if (re > 0) {
			forward.setInRedirect(true);
			forward.setPath("accountList.ac");
		} else {
			forward.setInRedirect(true);
			forward.setPath("accountList.ac");
		}
		return forward;
	}

}
