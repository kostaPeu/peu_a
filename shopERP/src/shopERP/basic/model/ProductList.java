package shopERP.basic.model;

import java.io.Serializable;

public class ProductList implements Serializable{
	private String product_id;
	private String product_name;
	private String pgroup_name;
	private String barcode;
	private int price_in;
	private int price_out;
	private String standard_name;
	private String made_in;
	
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
	public String getPgroup_name() {
		return pgroup_name;
	}
	public void setPgroup_name(String pgroup_name) {
		this.pgroup_name = pgroup_name;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public int getPrice_in() {
		return price_in;
	}
	public void setPrice_in(int price_in) {
		this.price_in = price_in;
	}
	public int getPrice_out() {
		return price_out;
	}
	public void setPrice_out(int price_out) {
		this.price_out = price_out;
	}
	public String getStandard_name() {
		return standard_name;
	}
	public void setStandard_name(String standard_name) {
		this.standard_name = standard_name;
	}
	public String getMade_in() {
		return made_in;
	}
	public void setMade_in(String made_in) {
		this.made_in = made_in;
	}
	
	
	
}
