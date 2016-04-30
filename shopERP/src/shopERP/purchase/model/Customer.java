package shopERP.purchase.model;

import java.io.Serializable;

public class Customer implements Serializable{
	private String customer_id;
	private String customer_name;
	private String repre_name;
	private String phone_number;
	private String customer_address;
	private String copy_bankbook;
	private String bankbook_check;
	private String customer_email;
	private String customer_fax;
	private String checkman;
	public Customer(){}	
	@Override
	public String toString() {
		return "Customer [customer_id=" + customer_id + ", customer_name="
				+ customer_name + ", repre_name=" + repre_name
				+ ", phone_number=" + phone_number + ", customer_address="
				+ customer_address + ", copy_bankbook=" + copy_bankbook
				+ ", bankbook_check=" + bankbook_check + ", customer_email="
				+ customer_email + ", customer_fax=" + customer_fax
				+ ", checkman=" + checkman + "]";
	}
	public Customer(String customer_id, String customer_name,
			String repre_name, String phone_number, String customer_address,
			String copy_bankbook, String bankbook_check, String customer_email,
			String customer_fax, String checkman) {
		super();
		this.customer_id = customer_id;
		this.customer_name = customer_name;
		this.repre_name = repre_name;
		this.phone_number = phone_number;
		this.customer_address = customer_address;
		this.copy_bankbook = copy_bankbook;
		this.bankbook_check = bankbook_check;
		this.customer_email = customer_email;
		this.customer_fax = customer_fax;
		this.checkman = checkman;
	}

	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getRepre_name() {
		return repre_name;
	}
	public void setRepre_name(String repre_name) {
		this.repre_name = repre_name;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getCustomer_address() {
		return customer_address;
	}
	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}
	public String getCopy_bankbook() {
		return copy_bankbook;
	}
	public void setCopy_bankbook(String copy_bankbook) {
		this.copy_bankbook = copy_bankbook;
	}
	public String getBankbook_check() {
		return bankbook_check;
	}
	public void setBankbook_check(String bankbook_check) {
		this.bankbook_check = bankbook_check;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public String getCustomer_fax() {
		return customer_fax;
	}
	public void setCustomer_fax(String customer_fax) {
		this.customer_fax = customer_fax;
	}
	public String getCheckman() {
		return checkman;
	}
	public void setCheckman(String checkman) {
		this.checkman = checkman;
	}
}
