package shopERP.purchase.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class ErpService {
	public static ErpDao dao;
	public static ErpService service = new ErpService();
	private static final int PAGE_SIZE = 5;
	public static ErpService getInstance(){
		dao = dao.getInstance();
		return service;
	}
	public int insertPurchase(Purchase purchase){
		dao.updateStockAmount(purchase);
		return dao.insertPurchase(purchase);
	}
	public List<PurchaseListView> purchaseList(){
		return dao.purchaseList();
	}
	public List<Customer> customerList(){
		return dao.customerList();
	}
	public List<Product> productList(){
		return dao.productList();
	}
	public List<WareHouse> warehouseList(){
		return dao.warehouseList();
	}
	public List<PurchaseSearch> searchPurchase(){
		return dao.searchPurchase();
	}
	public List<PurchaseListView> SearchPurchaseList(Search search){
		return dao.searchPurchaseList(search);
	}
}
