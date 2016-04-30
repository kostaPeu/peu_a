package shopERP.purchase.model;

import java.io.Serializable;

public class WareHouse implements Serializable{
	private String warehouse_id;
	private String warehouse_name;
	private String warehouse_loc;
	public String getWarehouse_id() {
		return warehouse_id;
	}
	public void setWarehouse_id(String warehouse_id) {
		this.warehouse_id = warehouse_id;
	}
	public String getWarehouse_name() {
		return warehouse_name;
	}
	public void setWarehouse_name(String warehouse_name) {
		this.warehouse_name = warehouse_name;
	}
	public String getWarehouse_loc() {
		return warehouse_loc;
	}
	public void setWarehouse_loc(String warehouse_loc) {
		this.warehouse_loc = warehouse_loc;
	}
}
