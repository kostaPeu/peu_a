package shopERP.sale.model;

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
	public int insertSale(Sale sale) {
		return dao.insertSale(sale);
	}
	public List<SaleListView> saleList() {
		return dao.saleList();
	}
	public List<SaleListView> searchSaleList(Search search) {
		return dao.searchSaleList(search);
	}
	public int insertCbuy(Company_buy cbuy) {
		return dao.insertCbuy(cbuy);
	}
	public List<Company_buyList> cBuyList() {
		return dao.cBuyList();
	}
}
