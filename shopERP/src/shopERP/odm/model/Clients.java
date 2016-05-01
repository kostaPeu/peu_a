package shopERP.odm.model;

import java.io.Serializable;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

public class Clients implements Serializable{
	private String client_id;
	private String client_name;
	private String client_phonenumber;
	private String client_address;
	
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public String getClient_phonenumber() {
		return client_phonenumber;
	}
	public void setClient_phonenumber(String client_phonenumber) {
		this.client_phonenumber = client_phonenumber;
	}
	public String getClient_address() {
		return client_address;
	}
	public void setClient_address(String client_address) {
		this.client_address = client_address;
	}
	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(client_id).append(client_name).append(client_phonenumber).append(client_address).toHashCode();
	}
	@Override
	public boolean equals(Object obj) {
		   Clients c = (Clients) obj;
		    if (obj instanceof Clients) {
		      return new EqualsBuilder().append(client_id, c.client_id).append(client_name, c.client_name).append(client_phonenumber, c.client_phonenumber).append(client_address, c.client_address).isEquals();
		    }
		    return false;
	}
	
}
