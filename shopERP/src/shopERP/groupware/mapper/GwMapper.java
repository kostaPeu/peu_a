package shopERP.groupware.mapper;

import java.util.List;

import shopERP.groupware.model.Notice;

public interface GwMapper {
	public List<Notice> noticeList();
	public String getEmpName(int emp_id);
	
}
