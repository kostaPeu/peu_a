package shopERP.groupware.mapper;

import java.util.List;

import shopERP.groupware.action.GwPaging;
import shopERP.groupware.model.Notice;
import shopERP.groupware.model.NoticeReply;
import shopERP.groupware.model.GwSearch;
import shopERP.groupware.model.ShareFolder;

public interface GwMapper {
	public List<Notice> noticeList(GwPaging paging);
	public List<Notice> noticeSearch(GwSearch search);
	public List<NoticeReply> noticeReplyList(int notice_id);
	public int noticeCount();
	public String getEmpName(String emp_id);
	public int noticeInsert(Notice notice);
	public int noticeReplyInsert(NoticeReply noticeReply);
	public int noticeUpdate(Notice notice);
	public Notice selectNotice(int notice_id);
	public NoticeReply selectNoticeReply(int nreply_id);
	public void noticeDelete(int notice_id);
	public void replyDelete(int nreply_id);
	public int loginIdCheck(String emp_id);
	public String getPwd(String emp_id);
	public List<ShareFolder> depFileList();
	public int depFileInsert(ShareFolder sharefolder);
	public ShareFolder selectShareFolder(int share_folder_id);
}
