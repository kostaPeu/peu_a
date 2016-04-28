package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.GwService;

public class noticeDeleteAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		GwService service= GwService.getInstance();
		String id = request.getParameter("notice_id");
		int notice_id = Integer.parseInt(id);
		
		service.noticeDelete(notice_id);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath("noticeListAction.gw");

		return forward;
	}

}
