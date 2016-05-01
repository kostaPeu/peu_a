package shopERP.odm.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class OrderCollectList implements Serializable{
	private String shoporder_id;
	private String s_client_name;
	private String s_client_phonenumber;
	private String s_client_address;
	private String s_client_id;
	private String s_product_id;
	private String s_detail_id;
	private int sell_price;
	private Timestamp s_order_date;
	private int s_order_amount;
	public String getS_detail_id() {
		return s_detail_id;
	}
	public void setS_detail_id(String s_detail_id) {
		this.s_detail_id = s_detail_id;
	}
	public String getShoporder_id() {
		return shoporder_id;
	}
	public void setShoporder_id(String shoporder_id) {
		this.shoporder_id = shoporder_id;
	}
	public String getS_client_name() {
		return s_client_name;
	}
	public void setS_client_name(String s_client_name) {
		this.s_client_name = s_client_name;
	}
	public String getS_client_phonenumber() {
		return s_client_phonenumber;
	}
	public void setS_client_phonenumber(String s_client_phonenumber) {
		this.s_client_phonenumber = s_client_phonenumber;
	}
	public String getS_client_address() {
		return s_client_address;
	}
	public void setS_client_address(String s_client_address) {
		this.s_client_address = s_client_address;
	}
	public String getS_client_id() {
		return s_client_id;
	}
	public void setS_client_id(String s_client_id) {
		this.s_client_id = s_client_id;
	}
	public String getS_product_id() {
		return s_product_id;
	}
	public void setS_product_id(String s_product_id) {
		this.s_product_id = s_product_id;
	}
	public int getSell_price() {
		return sell_price;
	}
	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	public Timestamp getS_order_date() {
		return s_order_date;
	}
	public void setS_order_date(Timestamp s_order_date) {
		this.s_order_date = s_order_date;
	}
	public int getS_order_amount() {
		return s_order_amount;
	}
	public void setS_order_amount(int s_order_amount) {
		this.s_order_amount = s_order_amount;
	}
	
	
	

}
