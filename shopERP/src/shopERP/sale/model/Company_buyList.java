package shopERP.sale.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Company_buyList implements Serializable{
	private String cbuy_id;
	private String customer_name;
	private String product_name;
	private Timestamp cbuy_date;
	private String warehouse_name;
	private String pay_type;
	private int cbuy_priceout;
	private int cbuy_amount;
	public String getCbuy_id() {
		return cbuy_id;
	}
	public void setCbuy_id(String cbuy_id) {
		this.cbuy_id = cbuy_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Timestamp getCbuy_date() {
		return cbuy_date;
	}
	public void setCbuy_date(Timestamp cbuy_date) {
		this.cbuy_date = cbuy_date;
	}
	public String getWarehouse_name() {
		return warehouse_name;
	}
	public void setWarehouse_name(String warehouse_name) {
		this.warehouse_name = warehouse_name;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public int getCbuy_priceout() {
		return cbuy_priceout;
	}
	public void setCbuy_priceout(int cbuy_priceout) {
		this.cbuy_priceout = cbuy_priceout;
	}
	public int getCbuy_amount() {
		return cbuy_amount;
	}
	public void setCbuy_amount(int cbuy_amount) {
		this.cbuy_amount = cbuy_amount;
	}
	
}
