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
	   int totalCount = service.noticeCount();
	   
	   Paging paging = new Paging();
	   paging.setPageNo(1);
	   paging.setPageSize(8);
	   paging.setTotalCount(totalCount);
	   
	   int start = 8 * (paging.getPageNo()-1) + 1;
	   int limit = start+8; 
	   
	   paging.setStart(start);
	   paging.setLimit(limit);

	   String choice = request.getParameter("choiceP");
	   int choiceP = 1;
	   
	   if(choice != null){
		   choiceP = Integer.parseInt(choice);
		   paging.setPageNo(choiceP);

		   start = 8 * (paging.getPageNo()-1) + 1;
		   limit = start+8; 
		   
		   paging.setStart(start);
		   paging.setLimit(limit);
	   }

	   List<Notice> list = service.noticeList(paging);
	   String coin = request.getParameter("coin");
	  
	  if(coin != null){
		  int liCoin = Integer.parseInt(coin);
		  request.setAttribute("coin", liCoin);
	  }
	  
      ArrayList<String> e_name = new ArrayList<String>();
      
      for(int i=0;i<list.size();i++){
         String name = service.getEmpName(list.get(i).getEmp_id());
         e_name.add(name);
      }
      
      request.setAttribute("paging", paging);
      request.setAttribute("list", list);
      request.setAttribute("e_name_list", e_name);
      
      ActionForward forward = new ActionForward();
      
      forward.setRedirect(false);
      forward.setPath("./mainTest2.jsp?left=./groupware/view/groupware.jsp&contents=./groupware/view/notice/notice_list.jsp");
      
      return forward;
   }

}