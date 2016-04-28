package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;

public class noticeViewAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		Notice notice = new Notice();

		String id = request.getParameter("notice_id");
		int notice_id = Integer.parseInt(id);
		
		GwService service = GwService.getInstance();
		notice = service.selectNotice(notice_id);
		String e_name = service.getEmpName(notice.getEmp_id());
		
		request.setAttribute("notice", notice);
		request.setAttribute("e_name", e_name);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainTest2.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/notice/notice_view.jsp");
		
		return forward;
	}

}
