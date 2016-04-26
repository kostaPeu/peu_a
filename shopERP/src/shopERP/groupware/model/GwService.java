package shopERP.groupware.model;

import java.util.List;

public class GwService {
	public static GwDao dao;
	public static GwService service = new GwService();
	
	public static GwService getInstance(){
		dao = dao.getInstance();
		return service;
	}
	
	public List<Notice> noticeList(){
		List<Notice> list = dao.noticeList();
		return list;
	}
	
	public String getEmpName(int emp_id){
		String name = dao.getEmpName(emp_id);
		return name;
	}
}
