package shopERP.odm.model;

import java.io.Serializable;
import java.sql.Timestamp;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

public class OrderList implements Serializable{
	private String order_id;
	private String client_id;
	private Timestamp order_date;
	private String settlement_price;
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getSettlement_price() {
		return settlement_price;
	}
	public void setSettlement_price(String settlement_price) {
		this.settlement_price = settlement_price;
	}
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(order_id).append(client_id).append(order_date).append(settlement_price).toHashCode();
	}
	@Override
	public boolean equals(Object obj) {
		 OrderList list = (OrderList) obj;
		    if (obj instanceof OrderList) {
		      return new EqualsBuilder().append(order_id, list.order_id).append(client_id, list.client_id).append(order_date, list.order_date).append(settlement_price, list.settlement_price).isEquals();
		    }
		    return false;
	}
	
}
