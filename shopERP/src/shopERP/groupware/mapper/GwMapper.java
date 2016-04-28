package shopERP.groupware.mapper;

import java.util.List;

import shopERP.groupware.model.Notice;
import shopERP.groupware.model.NoticeReply;

public interface GwMapper {
	public List<Notice> noticeList();
	public List<NoticeReply> noticeReplyList(int notice_id);
	public String getEmpName(String emp_id);
	public int noticeInsert(Notice notice);
	public int noticeReplyInsert(NoticeReply noticeReply);
	public int noticeUpdate(Notice notice);
	public Notice selectNotice(int notice_id);
	public void noticeDelete(int notice_id);
	public int loginIdCheck(String emp_id);
	public String getPwd(String emp_id);
}
