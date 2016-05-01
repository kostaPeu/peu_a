package shopERP.purchase.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import shopERP.purchase.model.Customer;
import shopERP.purchase.model.Product;
import shopERP.purchase.model.Purchase;
import shopERP.purchase.model.PurchaseListView;
import shopERP.purchase.model.PurchaseSearch;
import shopERP.purchase.model.Search;
import shopERP.purchase.model.WareHouse;

public interface ErpMapper {
	int insertPurchase(Purchase purchase);
	List<PurchaseListView> purchaseList();
	List<Customer> customerList();
	List<Product> productList();
	List<WareHouse> warehouseList();
	int updateStockAmount(Purchase purchase);
	List<PurchaseSearch> searchPurchase();
	List<PurchaseListView> searchPurchaseList(Search search);
}
