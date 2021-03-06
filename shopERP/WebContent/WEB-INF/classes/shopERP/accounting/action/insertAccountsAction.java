package shopERP.accounting.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.model.AcDao;
import shopERP.accounting.model.Accounts;

public class insertAccountsAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		Accounts accounts = new Accounts();
		
		accounts.setAccount_number(request.getParameter("account_number"));
		accounts.setAccount_name(request.getParameter("account_name"));
		accounts.setCode(Integer.parseInt(request.getParameter("code")));
		accounts.setAccount_detail(request.getParameter("account_detail"));
		accounts.setUse(request.getParameter("use"));
		accounts.setRemarks(request.getParameter("remarks"));
		
		AcDao dao = AcDao.getInstance();
		int re = dao.insertAccount(accounts);
		
		ActionForward forward = new ActionForward();
		if(re ==1){
			forward.setInRedirect(true);
			forward.setPath("accountList.ac");
		}else {
			forward.setInRedirect(true);
			forward.setPath("");
		}
		return forward;
	}

}
