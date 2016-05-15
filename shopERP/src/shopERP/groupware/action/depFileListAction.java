package shopERP.groupware.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.ShareFolder;
import shopERP.groupware.model.GwService;

public class depFileListAction implements Action {

   @Override
   public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
      
      GwService service = GwService.getInstance();
      List<ShareFolder> list = service.depFileList();
      ArrayList<String> e_name = new ArrayList<String>();
      ArrayList<String> f_name = new ArrayList<String>();
      
      for(int i=0;i<list.size();i++){
         String ename = service.getEmpName(list.get(i).getEmp_id());
         e_name.add(ename);
      }
      
      for(int i=0;i<list.size();i++){
    	  String fname = list.get(i).getFile_name();
    	  if(fname.length() > 12){
    		  f_name.add(fname.substring(0, 12)+"..");
    	  } else {
    		  f_name.add(fname);
    	  }
      }
      
      request.setAttribute("list", list);
      request.setAttribute("e_name_list", e_name);
      request.setAttribute("f_name_list", f_name);
      
      ActionForward forward = new ActionForward();
      
      forward.setRedirect(false);
      forward.setPath("./groupware/view/depboard/dep_sharedfolder_list.jsp");
      
      return forward;
   }

}