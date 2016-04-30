package shopERP.sale.model;

import java.sql.Timestamp;

public class Company_buy {
	private String cbuy_id;
	private String customer_id;
	private String product_id;
	private Timestamp cbuy_date;
	private String warehouse_id;
	private String pay_type;
	private int cbuy_priceout;
	private int cbuy_amount;
	public String getCbuy_id() {
		return cbuy_id;
	}
	public void setCbuy_id(String cbuy_id) {
		this.cbuy_id = cbuy_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public Timestamp getCbuy_date() {
		return cbuy_date;
	}
	public void setCbuy_date(Timestamp cbuy_date) {
		this.cbuy_date = cbuy_date;
	}
	public String getWarehouse_id() {
		return warehouse_id;
	}
	public void setWarehouse_id(String warehouse_id) {
		this.warehouse_id = warehouse_id;
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
