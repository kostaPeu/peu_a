package shopERP.groupware.model;

import java.io.Serializable;
import java.sql.Date;

public class NoticeReply implements Serializable{
	private int nreply_id;
	private String emp_id;
	private String nreply_content;
	private Date nreply_date;
	private int nreply_ref;
	private int nreply_step;
	private int nreply_level;
	private int notice_id;
	
	public NoticeReply(){}

	public NoticeReply(int nreply_id, String emp_id, String nreply_content, Date nreply_date, int nreply_ref,
			int nreply_step, int nreply_level, int notice_id) {
		super();
		this.nreply_id = nreply_id;
		this.emp_id = emp_id;
		this.nreply_content = nreply_content;
		this.nreply_date = nreply_date;
		this.nreply_ref = nreply_ref;
		this.nreply_step = nreply_step;
		this.nreply_level = nreply_level;
		this.notice_id = notice_id;
	}

	public int getNreply_id() {
		return nreply_id;
	}

	public void setNreply_id(int nreply_id) {
		this.nreply_id = nreply_id;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getNreply_content() {
		return nreply_content;
	}

	public void setNreply_content(String nreply_content) {
		this.nreply_content = nreply_content;
	}

	public Date getNreply_date() {
		return nreply_date;
	}

	public void setNreply_date(Date nreply_date) {
		this.nreply_date = nreply_date;
	}

	public int getNreply_ref() {
		return nreply_ref;
	}

	public void setNreply_ref(int nreply_ref) {
		this.nreply_ref = nreply_ref;
	}

	public int getNreply_step() {
		return nreply_step;
	}

	public void setNreply_step(int nreply_step) {
		this.nreply_step = nreply_step;
	}

	public int getNreply_level() {
		return nreply_level;
	}

	public void setNreply_level(int nreply_level) {
		this.nreply_level = nreply_level;
	}

	public int getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}

	@Override
	public String toString() {
		return "NoticeReply [nreply_id=" + nreply_id + ", emp_id=" + emp_id + ", nreply_content=" + nreply_content
				+ ", nreply_date=" + nreply_date + ", nreply_ref=" + nreply_ref + ", nreply_step=" + nreply_step
				+ ", nreply_level=" + nreply_level + ", notice_id=" + notice_id + "]";
	}
	
	
}
