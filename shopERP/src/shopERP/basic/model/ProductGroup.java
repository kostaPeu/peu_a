package shopERP.basic.model;

import java.io.Serializable;

public class ProductGroup implements Serializable{
	private String pgroup_id;
	private String ptype;
	private String pgroup_name;
	public String getPgroup_id() {
		return pgroup_id;
	}
	public void setPgroup_id(String pgroup_id) {
		this.pgroup_id = pgroup_id;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPgroup_name() {
		return pgroup_name;
	}
	public void setPgroup_name(String pgroup_name) {
		this.pgroup_name = pgroup_name;
	}
	
}
