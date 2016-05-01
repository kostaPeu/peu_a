package shopERP.odm.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.odm.model.Clients;
import shopERP.odm.model.OdmService;
import shopERP.odm.model.OrderCollectList;
import shopERP.odm.model.OrderDetail;
import shopERP.odm.model.OrderList;

public class OrderCollectAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		String shop_name = request.getParameter("checks");
		
		List<OrderCollectList> collectList = null;
		
		OdmService service = OdmService.getInstance();
		
		if(shop_name.equals("kostaShopping")){
			try {
				collectList = service.collectOrderList();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		List<Clients> cList = new ArrayList<Clients>();
		for(int i=0;i<collectList.size();i++){
			Clients client = new Clients();
			
			client.setClient_id(collectList.get(i).getS_client_id());
			client.setClient_address(collectList.get(i).getS_client_address());
			client.setClient_name(collectList.get(i).getS_client_name());
			client.setClient_phonenumber(collectList.get(i).getS_client_phonenumber());
			
			cList.add(client);
		}
		
		List<Clients> clientList = new ArrayList<Clients>(new HashSet<Clients>(cList));
		
//		int maxClient = service.maxClient();
//		List<Clients> clientName = service.selectClientNames();

		for(int i=0;i<clientList.size();i++){
			Clients c = new Clients();

			c.setClient_id(clientList.get(i).getClient_id());
			c.setClient_name(clientList.get(i).getClient_name());
			c.setClient_phonenumber(clientList.get(i).getClient_phonenumber());
			c.setClient_address(clientList.get(i).getClient_address());
			
			int re = -1;
			try {
				re = service.insertClient(c);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		List<OrderList> olist = new ArrayList<OrderList>();
		for(int i=0;i<collectList.size();i++){
			OrderList list = new OrderList();
			
			list.setClient_id(collectList.get(i).getS_client_id());
			list.setOrder_date(collectList.get(i).getS_order_date());
			list.setOrder_id(collectList.get(i).getShoporder_id());
			
			olist.add(list);
		}
		
		List<OrderList> orderList = new ArrayList<OrderList>(new HashSet<OrderList>(olist));

		for(int i=0;i<orderList.size();i++){
			OrderList o = new OrderList();

			o.setClient_id(orderList.get(i).getClient_id());
			o.setOrder_date(orderList.get(i).getOrder_date());
			o.setOrder_id(orderList.get(i).getOrder_id());
			
			int re = -1;
			try {
				re = service.insertOrderList(o);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(re>0){
				service.updateOrderCollectDate(shop_name);
			}
		}
		
		for(int i=0;i<collectList.size();i++){
			OrderDetail od = new OrderDetail();
			
			od.setOrder_amount(collectList.get(i).getS_order_amount());
			od.setOrder_detail_id(collectList.get(i).getS_detail_id());
			od.setOrder_id(collectList.get(i).getShoporder_id());
			od.setProduct_id(collectList.get(i).getS_product_id());
			od.setSell_price(collectList.get(i).getSell_price());
			
			int re = -1;
			try {
				re = service.insertOrderDetail(od);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("shoppingMallList.odm");
		
		return forward;
	}

}
