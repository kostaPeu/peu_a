package shopERP.groupware.action;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.imageio.ImageIO;
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
		
		File uploaddir = new File(request.getRealPath("/groupware/view/depboard/upload"));
		File thumbnaildir = new File(request.getRealPath("/groupware/view/depboard/upload")+"/thumbnail");
	
        if (!uploaddir.exists()) { //폴더 없으면 폴더 생성
        	uploaddir.mkdirs();
        }
        
        if (!thumbnaildir.exists()) { //폴더 없으면 폴더 생성
        	thumbnaildir.mkdirs();
        }
		
		int sizeLimit = 10 * 1024 * 1024 ; // 10메가입니다.
		
		String savePath = request.getRealPath("/groupware/view/depboard/upload");
		try{
			multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy()); 
		}catch (Exception e) {
			e.printStackTrace();
		} 
		

//		Enumeration ee = multi.getFileNames();
//		
//		while(ee.hasMoreElements()){
//	         String strName = (String) ee.nextElement();
//	         String fileName= multi.getFilesystemName(strName);
//	         if (fileName != null) {
//	             System.out.println(fileName);
//	         }
//	    }

		String emp_id = (String)session.getAttribute("emp_id");
		
		String filename = multi.getFilesystemName("filename");
		File file = multi.getFile("filename");

		
//		System.out.println(filename);
//		System.out.println(file.length());
//		System.out.println(multi.getContentType("filename"));
		
		
		String filetype = multi.getContentType("filename");
		
		if(filetype.substring(0, 5).equals("image")){
			// 썸네일 생성
		    String strarr = filename.substring(0, filename.lastIndexOf("."));
		    System.out.println(strarr);
		    
		    String thumbnail_path = savePath+"/thumbnail/"+strarr+"_thumb.jpg";
		    		
		    // 원본이미지파일의 경로+파일명
		    File origin_file_name = new File(savePath+"/"+filename);
		    // 생성할 썸네일파일의 경로+썸네일파일명
		    File thumb_file_name = new File(thumbnail_path);
		   
		    BufferedImage buffer_original_image;
		    
			try {
				  buffer_original_image = ImageIO.read(origin_file_name);
				  
				  int origin_width = buffer_original_image.getWidth();
				  int origin_height = buffer_original_image.getHeight();
				  
				  int thumbnail_width = 0;		// 썸네일 가로사이즈
				  int thumbnail_height = 0;		// 썸네일 세로사이즈
				  
				  double origin_ratio = 0;
				  
				  if(origin_width > origin_height){
					  thumbnail_width = 108;
					  origin_ratio = (double)thumbnail_width/origin_width;
					  thumbnail_height = (int)(origin_height * origin_ratio);
				  } else {
					  thumbnail_height = 108;
					  origin_ratio = (double)thumbnail_height/origin_height;
					  thumbnail_width = (int)(origin_width * origin_ratio);
				  }
				  
				  System.out.println(origin_width);
				  System.out.println(origin_height);
				  System.out.println("비율"+origin_ratio);
				  System.out.println(thumbnail_width);
				  System.out.println(thumbnail_height);
				  
			      BufferedImage buffer_thumbnail_image = new BufferedImage(thumbnail_width, thumbnail_height, BufferedImage.TYPE_3BYTE_BGR);
			      Graphics2D graphic = buffer_thumbnail_image.createGraphics();
			      graphic.drawImage(buffer_original_image, 0, 0, thumbnail_width, thumbnail_height, null);
			      ImageIO.write(buffer_thumbnail_image, "jpg", thumb_file_name);
		      
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
		
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
