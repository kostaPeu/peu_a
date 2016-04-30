package shopERP.sale.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Sale implements Serializable{
	private String sell_id;
	private String customer_id;
	private String product_id;
	private Timestamp sell_date;
	private String warehouse_id;
	private String pay_type;
	private int sell_price;
	private int sell_amount;
	public String getSell_id() {
		return sell_id;
	}
	public void setSell_id(String sell_id) {
		this.sell_id = sell_id;
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
	public Timestamp getSell_date() {
		return sell_date;
	}
	public void setSell_date(Timestamp sell_date) {
		this.sell_date = sell_date;
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
	public int getSell_price() {
		return sell_price;
	}
	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	public int getSell_amount() {
		return sell_amount;
	}
	public void setSell_amount(int sell_amount) {
		this.sell_amount = sell_amount;
	}
}
