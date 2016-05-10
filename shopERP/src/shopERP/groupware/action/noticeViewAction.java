package shopERP.groupware.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;
import shopERP.groupware.model.NoticeReply;

public class noticeViewAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		Notice notice = new Notice();

		String id = request.getParameter("notice_id");
		int notice_id = Integer.parseInt(id);
		
		GwService service = GwService.getInstance();
		notice = service.selectNotice(notice_id);
		String e_name = service.getEmpName(notice.getEmp_id());

		List<NoticeReply> list = service.noticeReplyList(notice_id);
		
		ArrayList<String> re_name = new ArrayList<String>();
	      
	      for(int i=0;i<list.size();i++){
	         String name = service.getEmpName(list.get(i).getEmp_id());
	         re_name.add(name);
	      }
	      
		request.setAttribute("notice", notice);
		request.setAttribute("e_name", e_name);
		request.setAttribute("re_name", re_name);
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./main.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/notice/notice_view.jsp");
		
		return forward;
	}

}
