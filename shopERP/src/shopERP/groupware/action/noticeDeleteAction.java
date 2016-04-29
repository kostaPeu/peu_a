package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;

public class noticeDeleteAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		GwService service= GwService.getInstance();
		String id = request.getParameter("notice_id");
		int notice_id = Integer.parseInt(id);
		
		HttpSession session = request.getSession();
		String e_id = (String)session.getAttribute("emp_id");
		
		Notice notice = service.selectNotice(notice_id);
		
		ActionForward forward = new ActionForward();
		
		if(e_id.equals(notice.getEmp_id())){
			service.noticeDelete(notice_id);
			System.out.println("삭제 완료.");
		}else{
			System.out.println("삭제 권한 없음.");
		}

		forward.setRedirect(true);
		forward.setPath("noticeListAction.gw");

		return forward;
	}

}
