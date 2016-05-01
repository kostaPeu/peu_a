package shopERP.odm.model;

import java.util.List;

public class OdmService {
	public static OdmDao dao;
	public static OdmService service = new OdmService();
	private static final int PAGE_SIZE = 5;
	public static OdmService getInstance(){
		dao = dao.getInstance();
		return service;
	}
	public List<ShoppingMall> shoppingMallList() {
		return dao.shoppingMallList();
	}
	public List<OrderCollectList> collectOrderList() {
		return dao.collectOrderList();
	}
	public int insertClient(Clients c) {
		return dao.insertClient(c);
	}
	public int maxClient() {
		return dao.maxClient();
	}
	public List<Clients> selectClientNames() {
		return dao.selectClientNames();
	}
	public int insertOrderList(OrderList o) {
		return dao.insertOrderList(o);
	}
	public int insertOrderDetail(OrderDetail od) {
		return dao.insertOrderDetail(od);
	}
	public void updateOrderCollectDate(String shop_name) {
		dao.updateOrderCollectDate(shop_name);
	}
	public List<FullOrder> fullOrderList() {
		return dao.fullOrderList();
	}
	public int maxDeliveryList() {
		return dao.maxDeliveryList();
	}
	public Delivery deliveryList(String check) {
		return dao.deliveryList(check);
	}
	public int deliveryAdd(DeliveryList delivery) {
		return dao.deliveryAdd(delivery);
	}
	public List<DeliveryList> selectDelivery() {
		return dao.selectDelivery();
	}
}
