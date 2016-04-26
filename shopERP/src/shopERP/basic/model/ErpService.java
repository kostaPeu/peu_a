package shopERP.basic.model;

import java.util.List;

public class ErpService {
	public static ErpDao dao;
	public static ErpService service = new ErpService();
	
	public static ErpService getInstance(){
		dao = dao.getInstance();
		return service;
	}

	public int insertProduct(Product product) {
		return dao.insertProduct(product);
	}

	public List<ProductList> selectAllProducts() {
		return dao.selectAllProducts();
	}

	public int updateProduct(Product product) {
		return dao.updateProduct(product);
	}

	public int deleteProduct(String check) {
		return dao.deleteProduct(check);
	}

}
