package shopERP.accounting.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.accounting.model.AcDao;
import shopERP.accounting.model.AcService;
import shopERP.accounting.model.Cards;

public class insertCardsAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) {
		Cards cards = new Cards();

		int re = -1;

		cards.setCard_number(request.getParameter("card_number"));
		cards.setCard_name(request.getParameter("card_name"));
		cards.setAccount_number(request.getParameter("account_number"));
		cards.setType(request.getParameter("type"));
		cards.setEmp_id(request.getParameter("emp_id"));
		cards.setUse_detail(request.getParameter("use_detail"));
		cards.setUse(request.getParameter("use"));
		cards.setRemarks(request.getParameter("remarks"));

		AcService service = AcService.getInstance();
		try {
			re = service.insertCardService(cards);
		} catch (Exception e) {
			e.printStackTrace();
		}

		ActionForward forward = new ActionForward();
		if (re > 0) {
			forward.setInRedirect(true);
			forward.setPath("cardList.ac");
		} else {
			System.out.println("성공좀..");
		}
		return forward;
	}

}
