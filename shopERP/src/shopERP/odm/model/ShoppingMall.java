package shopERP.odm.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ShoppingMall implements Serializable{
	private String shoppingmall_id;
	private String shoppingmall_name;
	private Timestamp collect_date;
	public String getShoppingmall_id() {
		return shoppingmall_id;
	}
	public void setShoppingmall_id(String shoppingmall_id) {
		this.shoppingmall_id = shoppingmall_id;
	}
	public String getShoppingmall_name() {
		return shoppingmall_name;
	}
	public void setShoppingmall_name(String shoppingmall_name) {
		this.shoppingmall_name = shoppingmall_name;
	}
	public Timestamp getCollect_date() {
		return collect_date;
	}
	public void setCollect_date(Timestamp collect_date) {
		this.collect_date = collect_date;
	}
	
}
