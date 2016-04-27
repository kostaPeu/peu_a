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
		return dao.insertPurchase(purchase);
	}
	public List<PurchaseListView> purchaseList(){
		return dao.purchaseList();
	}
}
