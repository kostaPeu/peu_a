package shopERP.groupware.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		System.out.println("emp_id : "+emp_id+"emp_pwd : "+emp_pwd);
		
		if(!isset(emp_id)){
			System.out.println("empid : "+request.getParameter("emp_id"));
			System.out.println("아이디 ㄴㄴ");
		}
		if(!isset(emp_pwd)){
			System.out.println("emppwd : "+request.getParameter("emp_pwd"));
			System.out.println("비번 ㄴㄴ");
		}
		
		String id = "2";
		String pwd = "123";
		
		if(!id.equals(emp_id)){
			System.out.println("아이디 일치 ㄴㄴ");
		}else if(!pwd.equals(emp_pwd)){
			System.out.println("비번 일치 ㄴㄴ");
		}else{
			System.out.println("로그인 성공");
			
			session.setAttribute("emp_id", emp_id);
			session.setAttribute("emp_pwd", emp_pwd);
		}
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("./mainTest2.jsp");
	
		return forward;
	}

}
