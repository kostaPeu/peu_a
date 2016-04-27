package shopERP.accounting.model;

import java.io.Serializable;

public class Accounts implements Serializable {

	private String account_number;
	private String account_name;
	private int code;
	private String account_detail;
	private String use;
	private String remarks;
	
	public Accounts(){}
	
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getAccount_detail() {
		return account_detail;
	}
	public void setAccount_detail(String account_detail) {
		this.account_detail = account_detail;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
