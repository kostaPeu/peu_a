package shopERP.accounting.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.model.AcDao;
import shopERP.accounting.model.Accounts;

public class listAccountsAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		
		AcDao dao = AcDao.getInstance();
		List<Accounts> list = dao.accountlist();
		
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		forward.setInRedirect(false);
		forward.setPath("./accounting/view/basic/BackBook.jsp");
		return forward;
	}

}
