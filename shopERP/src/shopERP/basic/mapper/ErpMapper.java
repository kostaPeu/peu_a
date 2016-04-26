package shopERP.basic.mapper;

import java.util.List;

import shopERP.basic.model.Product;
import shopERP.basic.model.ProductList;

public interface ErpMapper {

	public int insertProduct(Product product);
	public List<ProductList> selectAllProducts();
	public int updateProduct(Product product);
	public int deleteProduct(String check);

}
