package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopERP.groupware.model.GwService;

public class loginAction implements Action {

	boolean isset(String str){
		if(str == null){
			return false;
		}
		if(str.equals("")){
			return false;
		}
		return true;
	}
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {

		String emp_id = (String)request.getAttribute("emp_id");
		String emp_pwd = (String)request.getAttribute("emp_pwd");
		HttpSession session = request.getSession();
		GwService service = GwService.getInstance();
		
		System.out.println("emp_id : "+emp_id+"emp_pwd : "+emp_pwd);
		
		if(!isset(emp_id)){
			System.out.println("empid : "+request.getParameter("emp_id"));
			System.out.println("아이디 ㄴㄴ");
		}
		if(!isset(emp_pwd)){
			System.out.println("emppwd : "+request.getParameter("emp_pwd"));
			System.out.println("비번 ㄴㄴ");
		}
		
		int idCheck = service.loginIdCheck(emp_id);
		
		if(idCheck == 1){
			String pwd = service.getPwd(emp_id);
			
			if(pwd.equals(emp_pwd)){
				System.out.println("로그인 성공.");
				String main_e_name = service.getEmpName(emp_id);

				session.setAttribute("emp_id", emp_id);
				session.setAttribute("emp_pwd", emp_pwd);
				session.setAttribute("main_e_name", main_e_name);
			}else{
				System.out.println("비번 틀림.");
				
			}
		}else{
			System.out.println("아이디 다시 입력.");
		}
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("./main.jsp");
	
		return forward;
	}

}
