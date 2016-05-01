package shopERP.hr.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.hr.action.HR_Action;
import shopERP.hr.action.HR_ActionForward;
import shopERP.hr.action.IdChecker;
import shopERP.hr.action.basicInsertAction;
import shopERP.hr.action.deptListAction;

@WebServlet("*.hr")
public class HR_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HR_Controller() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		hrProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		hrProcess(request, response);
	}

    protected void hrProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String requestURI = request.getRequestURI();
    	System.out.println("requestURI");
    	String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length()+1);
		HR_ActionForward forward = null;
		HR_Action action = null;
		System.out.println(command);
		
		if(command.equals("hr/view/idcheck.hr")){
			action = new IdChecker();
			forward = action.execute(request, response);
		}
		else if(command.equals("hr/view/basic_insert.hr")){
			action = new basicInsertAction();
			forward = action.execute(request, response);
		}
		else if(command.equals("hr/view/deptlist.hr")){
			action = new deptListAction();
			forward = action.execute(request, response);
		}

		if(forward !=null){//포워드값이 있을때
			if(forward.isRedirect()){//리다이렉트 여부 판정 true
				response.sendRedirect(forward.getPath());//리다이렉트방식으로 이동
			}
			else{//리다이렉트 안할때
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());//디스패쳐 방식으로 이동
				dispatcher.forward(request, response);
			}
		}
    }
}
