package shopERP.odm.model;

public class DeliveryList {
	private String delivery_id;
	private String order_id;
	private String invoice_number;
	private String addressee;
	private String addressee_address;
	private String delivery_state;
	public String getDelivery_id() {
		return delivery_id;
	}
	public void setDelivery_id(String delivery_id) {
		this.delivery_id = delivery_id;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getInvoice_number() {
		return invoice_number;
	}
	public void setInvoice_number(String invoice_number) {
		this.invoice_number = invoice_number;
	}
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public String getAddressee_address() {
		return addressee_address;
	}
	public void setAddressee_address(String addressee_address) {
		this.addressee_address = addressee_address;
	}
	public String getDelivery_state() {
		return delivery_state;
	}
	public void setDelivery_state(String delivery_state) {
		this.delivery_state = delivery_state;
	}
	
}
