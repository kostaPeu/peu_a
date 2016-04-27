package shopERP.purchase.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import shopERP.basic.model.Customer;
import shopERP.basic.model.Product;
import shopERP.basic.model.ProductCode;
import shopERP.basic.model.ProductList;
import shopERP.basic.model.Search;
import shopERP.purchase.model.Purchase;
import shopERP.purchase.model.PurchaseListView;

public interface ErpMapper {
	int insertPurchase(Purchase purchase);
	List<PurchaseListView> purchaseList();
}
