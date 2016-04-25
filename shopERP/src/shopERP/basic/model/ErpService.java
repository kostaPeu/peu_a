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

	public List<Product> selectAllProducts() {
		return dao.selectAllProducts();
	}
}
