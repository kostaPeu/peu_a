package shopERP.groupware.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import shopERP.groupware.model.ShareFolder;
import shopERP.groupware.model.GwService;

public class downloadAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		
		GwService service = GwService.getInstance();
		//List<ShareFolder> list = new ArrayList<ShareFolder>();

		MultipartRequest multi = null;	
		
		int sizeLimit = 10 * 1024 * 1024 ; // 10메가입니다.
		
		String savePath = request.getRealPath("/groupware/view/depboard/upload");
		try{
			multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy()); 
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		String[] strarr = multi.getParameterValues("fileCheck");
		int share_folder_id = 0;
		
		
		if (strarr == null) {
			System.out.println("값ㄴㄴ");
		}
		
		for (int i = 0; i < strarr.length; i++) {
			share_folder_id = Integer.parseInt(strarr[i]);
			System.out.println("hohoho "+ i + " : " +share_folder_id);
			
			ShareFolder sharefolder = null;
			
			if (share_folder_id != 0) {
				sharefolder = service.selectShareFolder(share_folder_id);
				String filename = sharefolder.getFile_name();
				
				System.out.println(filename);
				
				String uploadFileName = request.getRealPath("/groupware/view/depboard/upload") + "/" + filename;
				File downFile = new File(uploadFileName);
				
				System.out.println(uploadFileName);
				System.out.println("으악"+downFile.getName());

				if (downFile.exists() && downFile.isFile()) {
					try {
						long filesize = downFile.length();
						response.setContentType("application/x-msdownload");
						response.setContentLength((int) filesize);
	
						String strClient = request.getHeader("user-agent");
	
						if (strClient.indexOf("MSIE 5.5") != -1) {
							response.setHeader("Content-Disposition", "filename=" + filename + ";");
						} else {
							filename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
							response.setHeader("Content-Disposition", "attachment; filename=" + filename + ";");
						}
	
						response.setHeader("Content-Length", String.valueOf(filesize));
						response.setHeader("Content-Transfer-Encoding", "binary;");
						response.setHeader("Pragma", "no-cache");
						response.setHeader("Cache-Control", "private");
	
						byte b[] = new byte[1024];
	
						BufferedInputStream fin = new BufferedInputStream(new FileInputStream(downFile));
						BufferedOutputStream outs = new BufferedOutputStream(response.getOutputStream());
						int read = 0;
	
						while ((read = fin.read(b)) != -1) {
							outs.write(b, 0, read);
						}
						outs.flush();
						outs.close();
						fin.close();
						
						System.out.println("okok" + i);
						
					} catch (Exception e) {
						System.out.println("Download Exception : " + e.getMessage());
					}
	
				} else {
					System.out.println("Download Error : downFile Error [" + downFile + "]");
				}
			} //end if
		} //end for
		
		return null;
	}
}