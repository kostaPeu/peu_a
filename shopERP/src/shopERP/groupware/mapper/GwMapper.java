package shopERP.groupware.mapper;

import java.util.List;

import shopERP.groupware.model.Notice;

public interface GwMapper {
	public List<Notice> noticeList();
	public String getEmpName(String emp_id);
	public int noticeInsert(Notice notice);
	public Notice selectNotice(int notice_id);
}
