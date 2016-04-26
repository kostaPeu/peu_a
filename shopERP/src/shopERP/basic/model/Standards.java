package shopERP.basic.model;

import java.io.Serializable;

public class Standards implements Serializable{
	private String standard_id;
	private String standard_name;
	
	public String getStandard_id() {
		return standard_id;
	}
	public void setStandard_id(String standard_id) {
		this.standard_id = standard_id;
	}
	public String getStandard_name() {
		return standard_name;
	}
	public void setStandard_name(String standard_name) {
		this.standard_name = standard_name;
	}
	
}
