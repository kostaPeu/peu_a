package shopERP.odm.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class FullOrder implements Serializable {
	private Timestamp order_date;
	private String order_id;
	private String product_id;
	private String product_name;
	private String client_name;
	private String order_detail_id;
	
	public String getOrder_detail_id() {
		return order_detail_id;
	}
	public void setOrder_detail_id(String order_detail_id) {
		this.order_detail_id = order_detail_id;
	}
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}

}
