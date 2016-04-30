package shopERP.sale.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class SaleListView implements Serializable{
	private String sell_id;
	private String customer_name;
	private String product_name;
	private Timestamp sell_date;
	private String warehouse_name;
	private String pay_type;
	private int sell_price;
	private int sell_amount;
	public String getSell_id() {
		return sell_id;
	}
	public void setSell_id(String sell_id) {
		this.sell_id = sell_id;
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
	public Timestamp getSell_date() {
		return sell_date;
	}
	public void setSell_date(Timestamp sell_date) {
		this.sell_date = sell_date;
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
