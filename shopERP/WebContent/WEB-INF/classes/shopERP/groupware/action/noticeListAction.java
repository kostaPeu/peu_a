package shopERP.groupware.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.Notice;
import shopERP.groupware.model.GwService;

public class noticeListAction implements Action {

   @Override
   public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
      
      GwService service = GwService.getInstance();
      List<Notice> list = service.noticeList();
      ArrayList<String> e_name = new ArrayList<String>();
      
      for(int i=0;i<list.size();i++){
         String name = service.getEmpName(list.get(i).getEmp_id());
         e_name.add(name);
      }
      
      request.setAttribute("list", list);
      request.setAttribute("e_name_list", e_name);
      
      ActionForward forward = new ActionForward();
      
      forward.setRedirect(false);
      forward.setPath("./mainTest2.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/notice/notice_list.jsp");
      
      return forward;
   }

}