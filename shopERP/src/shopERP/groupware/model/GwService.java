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
	
	public List<NoticeReply> noticeReplyList(int notice_id){
		List<NoticeReply> list = dao.noticeReplyList(notice_id);
		return list;
	}
	
	public String getEmpName(String emp_id){
		String name = dao.getEmpName(emp_id);
		return name;
	}
	
	public int noticeInsert(Notice notice){
		int re = dao.noticeInsert(notice);
		return re;
	}

	public int noticeReplyInsert(NoticeReply noticeReply){
		int re = dao.noticeReplyInsert(noticeReply);
		return re;
	}
	
	public int noticeUpdate(Notice notice){
		int re = dao.noticeUpdate(notice);
		return re;
	}
	
	public Notice selectNotice(int notice_id){
		return dao.selectNotice(notice_id);
	}

	public void noticeDelete(int notice_id){
		dao.noticeDelete(notice_id);
	}
	
	public int loginIdCheck(String emp_id){
		int check = dao.loginIdCheck(emp_id);
		return check;
	}
	
	public String getPwd(String emp_id){
		String pwd = dao.getPwd(emp_id);
		return pwd;
	}

}
