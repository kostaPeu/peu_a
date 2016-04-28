package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;

public class noticeUpdateAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("notice_id");
		int notice_id = Integer.parseInt(id);
		GwService service = GwService.getInstance();

		Notice notice = service.selectNotice(notice_id);
		
		notice.setNotice_title(request.getParameter("notice_title"));
		notice.setNotice_content(request.getParameter("notice_content"));
		
		int re=-1;
		
		try {
			re =service.noticeUpdate(notice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath("noticeListAction.gw");
		
		return forward;
	}

}
