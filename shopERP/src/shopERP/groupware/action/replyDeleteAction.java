package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;
import shopERP.groupware.model.NoticeReply;

public class replyDeleteAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		GwService service= GwService.getInstance();
		String id = request.getParameter("re_id");
		int nreply_id = Integer.parseInt(id);
		
		HttpSession session = request.getSession();
		String e_id = (String)session.getAttribute("emp_id");
		
		NoticeReply nr = new NoticeReply();
		nr = service.selectNoticeReply(nreply_id);
		int notice_id = nr.getNotice_id();
		
		ActionForward forward = new ActionForward();
		
		if(e_id.equals(nr.getEmp_id())){
			service.replyDelete(nreply_id);
			System.out.println("삭제 완료.");
			forward.setPath("noticeViewAction.gw?notice_id="+notice_id);
		}else{
			System.out.println("삭제 권한 없음.");
			forward.setPath("noticeViewAction.gw?notice_id="+notice_id);
		}

		forward.setRedirect(true);

		return forward;
	}

}
