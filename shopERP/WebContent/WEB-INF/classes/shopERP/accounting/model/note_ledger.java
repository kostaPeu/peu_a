package shopERP.accounting.model;

import java.io.Serializable;

import javax.xml.crypto.Data;

public class note_ledger implements Serializable {

	private String typelist;
	private String dept_id;
	private String proj_id;
	private String customer_id;
	private String account_number;
	private String note_id;
	private int sums;
	private Data red_data;
	private String remarks;
	

	
	public note_ledger(){}

	public String getTypelist() {
		return typelist;
	}

	public void setTypelist(String typelist) {
		this.typelist = typelist;
	}

	public String getDept_id() {
		return dept_id;
	}

	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}

	public String getProj_id() {
		return proj_id;
	}

	public void setProj_id(String proj_id) {
		this.proj_id = proj_id;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getAccount_number() {
		return account_number;
	}

	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}

	public String getNote_id() {
		return note_id;
	}

	public void setNote_id(String note_id) {
		this.note_id = note_id;
	}

	public int getSums() {
		return sums;
	}

	public void setSums(int sums) {
		this.sums = sums;
	}

	public Data getRed_data() {
		return red_data;
	}

	public void setRed_data(Data red_data) {
		this.red_data = red_data;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	
	
}
