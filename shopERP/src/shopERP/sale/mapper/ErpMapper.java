package shopERP.sale.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import shopERP.sale.model.Company_buy;
import shopERP.sale.model.Sale;
import shopERP.sale.model.SaleListView;
import shopERP.sale.model.Search;


public interface ErpMapper {
	int insertSale(Sale sale);
	List<SaleListView> saleList();
	List<SaleListView> searchSaleList(Search search);
	int insertCbuy(Company_buy cbuy);
}
