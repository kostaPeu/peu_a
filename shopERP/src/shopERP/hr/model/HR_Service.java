package shopERP.hr.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class HR_Service {
	public static HR_dao dao;
	public static HR_Service service = new HR_Service();
	//private static final int PAGE_SIZE = 5;
	
	public static HR_Service getInstance(){
		dao = dao.getInstance();
		return service;
	}

	public String basicCheckService(HttpServletRequest request) {
		String b_id = request.getParameter("b_id");
		String result = null;
		
		if(request.getParameter("b_type").equals("dept")){
			System.out.println("dept");
			result=dao.deptChecker(b_id);
		}
		else if(request.getParameter("b_type").equals("position")){
			System.out.println("p");
			result=dao.positionChecker(b_id);
		}
		else if(request.getParameter("b_type").equals("job")){
			System.out.println("j");
			result=dao.jobChecker(b_id);
		}
		else{
			System.out.println("d");
			result=dao.dutyChecker(b_id);
		}
		
		return result;
	}

	public int basicInsertService(HttpServletRequest request) {
		hr_basic hrb = new hr_basic();
		hrb.setBasic_id(request.getParameter("basic_id"));
		hrb.setBasic_name(request.getParameter("basic_name"));
		hrb.setBasic_type(request.getParameter("basic_type"));
		int result=0;
		
		if(hrb.getBasic_type().equals("dept")){
			result=dao.deptInsert(hrb);
		}
		else if(hrb.getBasic_type().equals("position")){
			result=dao.positionInsert(hrb);
		}
		else if(hrb.getBasic_type().equals("job")){
			result=dao.jobInsert(hrb);
		}
		else{
			result=dao.dutyInsert(hrb);
		}
		return result;
	}

	public List<deptList> deptListService() {
		List<deptList> list = null;
		list=dao.deptList();
		return list;
	}
}
