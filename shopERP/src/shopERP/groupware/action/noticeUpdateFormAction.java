package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;

public class noticeUpdateFormAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("notice_id");
		int notice_id = Integer.parseInt(id);

		GwService service = GwService.getInstance();

		HttpSession session = request.getSession();
		String e_id = (String)session.getAttribute("emp_id");
		
		Notice notice = service.selectNotice(notice_id);
		
		ActionForward forward = new ActionForward();
		
		if(e_id.equals(notice.getEmp_id())){
			request.setAttribute("notice_id", notice_id);
			request.setAttribute("notice", notice);
			
			
			forward.setRedirect(false);
			forward.setPath("./main.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/notice/notice_update.jsp");
		}else{
			System.out.println("수정 권한 없음.");

			forward.setRedirect(true);
			forward.setPath("noticeListAction.gw");
		}

		return forward;
	}

}
