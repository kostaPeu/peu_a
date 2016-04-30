package shopERP.groupware.model;

import java.util.List;

import shopERP.groupware.action.Paging;

public class GwService {
	public static GwDao dao;
	public static GwService service = new GwService();
	
	public static GwService getInstance(){
		dao = dao.getInstance();
		return service;
	}

	public List<Notice> noticeList(Paging paging){
		List<Notice> list = dao.noticeList(paging);
		return list;
	}
	
	public List<NoticeReply> noticeReplyList(int notice_id){
		List<NoticeReply> list = dao.noticeReplyList(notice_id);
		return list;
	}

	public int noticeCount(){
		int count = dao.noticeCount();
		return count;
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

	public NoticeReply selectNoticeReply(int nreply_id){
		return dao.selectNoticeReply(nreply_id);
	}

	public void noticeDelete(int notice_id){
		dao.noticeDelete(notice_id);
	}

	public void replyDelete(int nreply_id){
		dao.replyDelete(nreply_id);
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
