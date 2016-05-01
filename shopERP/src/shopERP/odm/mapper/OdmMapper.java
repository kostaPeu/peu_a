package shopERP.odm.mapper;

import java.util.List;

import shopERP.odm.model.Clients;
import shopERP.odm.model.Delivery;
import shopERP.odm.model.DeliveryList;
import shopERP.odm.model.FullOrder;
import shopERP.odm.model.OrderCollectList;
import shopERP.odm.model.OrderDetail;
import shopERP.odm.model.OrderList;
import shopERP.odm.model.ShoppingMall;

public interface OdmMapper {

	public List<ShoppingMall> shoppingMallList();
	public List<OrderCollectList> collectOrderList();
	public int insertClient(Clients c);
	public int maxClient();
	public List<Clients> selectClientNames();
	public int insertOrderList(OrderList o);
	public int insertOrderDetail(OrderDetail od);
	public int updateOrderCollectDate(String shop_name);
	public List<FullOrder> fullOrderList();
	public int maxDeliveryList();
	public Delivery deliveryList(String check);
	public int deliveryAdd(DeliveryList delivery);
	public List<DeliveryList> selectDelivery();
}
