package shopERP.groupware.action;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.ShareFolder;

public class depFileInsertAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		ShareFolder sharefolder = new ShareFolder();
		HttpSession session = request.getSession();
		GwService service = GwService.getInstance();
		MultipartRequest multi = null;	
		
		
		int sizeLimit = 10 * 1024 * 1024 ; // 10메가입니다.
		
		String savePath = request.getRealPath("/groupware/view/depboard/upload");
		try{
			multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy()); 
		}catch (Exception e) {
			e.printStackTrace();
		} 
		
		
		Enumeration ee = multi.getFileNames();
		
		while(ee.hasMoreElements()){
	         String strName = (String) ee.nextElement();
	         String fileName= multi.getFilesystemName(strName);
	         if (fileName != null) {
	             System.out.println(fileName);
	         }
	    }

		String emp_id = (String)session.getAttribute("emp_id");
		
		String filename = multi.getFilesystemName("filename");
		File file = multi.getFile("filename");
		
		System.out.println(filename);
		System.out.println(file.length());
		System.out.println(multi.getContentType("filename"));
		
		sharefolder.setEmp_id(emp_id);
		sharefolder.setFile_type(multi.getContentType("filename"));
		sharefolder.setFile_name(filename);
		sharefolder.setFile_size(file.length());
		sharefolder.setUpload_file("hoho");
		
		int re = -1;
		
		try {
			re = service.depFileInsert(sharefolder);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath("depFileListAction.gw");
	
		return forward;
	}

}
