package shopERP.groupware.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.Gw;
import shopERP.groupware.model.GwService;

public class notice_write_action implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		GwService service = GwService.getInstance();
		List<Gw> list = service.gwList();
		
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("./groupware/view.notice.notice_list.jsp");
		
		return forward;
	}

}
