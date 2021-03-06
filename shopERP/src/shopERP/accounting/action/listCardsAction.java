package shopERP.accounting.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.model.AcDao;
import shopERP.accounting.model.Cards;

public class listCardsAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		
		AcDao dao = AcDao.getInstance();
		List<Cards> list = dao.cardlist();
		
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		forward.setInRedirect(false);
		forward.setPath("./accounting/view/basic/card.jsp");
		return forward;
	}

}
