package shopERP.groupware.model;

import java.io.Serializable;
import java.sql.Date;

public class ShareFolder implements Serializable {
	private int share_folder_id;
	private String emp_id;
	private String file_type;
	private String file_name;
	private long file_size;
	private Date share_folder_date;
	private int down_amount;
	private String upload_file;
	
	public ShareFolder(){}

	public ShareFolder(int share_folder_id, String emp_id, String file_type, String file_name, long file_size,
			Date share_folder_date, int down_amount, String upload_file) {
		super();
		this.share_folder_id = share_folder_id;
		this.emp_id = emp_id;
		this.file_type = file_type;
		this.file_name = file_name;
		this.file_size = file_size;
		this.share_folder_date = share_folder_date;
		this.down_amount = down_amount;
		this.upload_file = upload_file;
	}

	public int getShare_folder_id() {
		return share_folder_id;
	}

	public void setShare_folder_id(int share_folder_id) {
		this.share_folder_id = share_folder_id;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getFile_type() {
		return file_type;
	}

	public void setFile_type(String file_type) {
		this.file_type = file_type;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public long getFile_size() {
		return file_size;
	}

	public void setFile_size(long file_size) {
		this.file_size = file_size;
	}

	public Date getShare_folder_date() {
		return share_folder_date;
	}

	public void setShare_folder_date(Date share_folder_date) {
		this.share_folder_date = share_folder_date;
	}

	public int getDown_amount() {
		return down_amount;
	}

	public void setDown_amount(int down_amount) {
		this.down_amount = down_amount;
	}

	public String getUpload_file() {
		return upload_file;
	}

	public void setUpload_file(String upload_file) {
		this.upload_file = upload_file;
	}

	@Override
	public String toString() {
		return "ShareFolder [share_folder_id=" + share_folder_id + ", emp_id=" + emp_id + ", file_type=" + file_type
				+ ", file_name=" + file_name + ", file_size=" + file_size + ", share_folder_date=" + share_folder_date
				+ ", down_amount=" + down_amount + ", upload_file=" + upload_file + "]";
	}
	
	
}
