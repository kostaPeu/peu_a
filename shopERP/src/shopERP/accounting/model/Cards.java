package shopERP.accounting.model;

import java.io.Serializable;

public class Cards implements Serializable {
	private String card_number;
	private String card_name;
	private String account_number;
	private String type;
	private String emp_id;
	private String use_detail;
	private String use;
	private String remarks;
/*
	public Cards() {
	}
*/
	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	public String getCard_name() {
		return card_name;
	}

	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}

	public String getAccount_number() {
		return account_number;
	}

	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getUse_detail() {
		return use_detail;
	}

	public void setUse_detail(String use_detail) {
		this.use_detail = use_detail;
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
