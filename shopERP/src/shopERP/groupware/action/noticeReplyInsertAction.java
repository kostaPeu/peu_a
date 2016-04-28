package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.NoticeReply;

public class noticeReplyInsertAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		NoticeReply noticeReply = new NoticeReply();
		HttpSession session = request.getSession();
		GwService service = GwService.getInstance();
		
		String id = request.getParameter("notice_id");
		int notice_id = Integer.parseInt(id);
		
		String emp_id = (String)session.getAttribute("emp_id");
		
		noticeReply.setEmp_id(emp_id);
		noticeReply.setNotice_id(notice_id);
		noticeReply.setNreply_content(request.getParameter("no_reply"));
		
		int re=-1;
		
		try {
			re =service.noticeReplyInsert(noticeReply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("noticeViewAction.gw");

		return forward;
	}
}
