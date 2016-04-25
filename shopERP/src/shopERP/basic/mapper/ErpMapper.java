package shopERP.basic.mapper;

import java.util.List;

import shopERP.basic.model.Product;

public interface ErpMapper {

	public int insertProduct(Product product);
	public List<Product> selectAllProducts();

}
