package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;

public class noticeInsertAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		Notice notice = new Notice();
		HttpSession session = request.getSession();
		GwService service = GwService.getInstance();
		
		String emp_id = (String)session.getAttribute("emp_id");
		
		notice.setEmp_id(emp_id);
		notice.setNotice_title(request.getParameter("notice_title"));
		notice.setNotice_content(request.getParameter("notice_content"));
		
		int re=-1;
		
		try {
			re =service.noticeInsert(notice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath("noticeListAction.gw");

		return forward;
	}

}
