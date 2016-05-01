package shopERP.basic.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import shopERP.basic.model.Customer;
import shopERP.basic.model.Product;
import shopERP.basic.model.ProductList;
import shopERP.basic.model.Search;

public interface ErpMapper {
	Customer selectCustomer(String customer_id);
	int updateCustomer(Customer customer);
	int deleteCustomer(String customer_id);
	public int insertProduct(Product product);
	public List<ProductList> selectAllProducts(RowBounds rb);
	public int updateProduct(Product product);
	public int deleteProduct(String check);
	public int insertCustomer(Customer customer);
	public List<Customer> customerList(RowBounds rb);
	public Integer totalCount();
	public int totalCountProduct();
	public List<Product> productCodeList(Search search);
}
