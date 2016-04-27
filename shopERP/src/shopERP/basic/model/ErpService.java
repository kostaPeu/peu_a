package shopERP.basic.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class ErpService {
	public static ErpDao dao;
	public static ErpService service = new ErpService();
	private static final int PAGE_SIZE = 5;
	public static ErpService getInstance(){
		dao = dao.getInstance();
		return service;
	}
	public int insertProduct(Product product) {
		return dao.insertProduct(product);
	}

	public ListModelProduct selectAllProducts(HttpServletRequest request) {
		String pageNum = request.getParameter("pageNum");
		int requestPage = 0;
		if(pageNum != null){
			requestPage = Integer.parseInt(pageNum);
		}
		int totalCount = dao.totalCountProduct();
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE != 0){
			totalPageCount++;
		}
		int startPage = requestPage - (requestPage -1) % 5;
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		List<ProductList> list = dao.selectAllProducts((requestPage - 1)*PAGE_SIZE);
		return new ListModelProduct(list, requestPage, totalPageCount, startPage, endPage);
	}

	public int updateProduct(Product product) {
		return dao.updateProduct(product);
	}

	public int deleteProduct(String check) {
		return dao.deleteProduct(check);
	}

	public int insertCustomer(Customer customer){
		return dao.insertCustomer(customer);
	}
	public ListModel CustomerList(HttpServletRequest request){
		String pageNum = request.getParameter("pageNum");
		int requestPage = 0;
		if(pageNum != null){
			requestPage = Integer.parseInt(pageNum);
		}
		int totalCount = dao.totalCount();
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE != 0){
			totalPageCount++;
		}
		int startPage = requestPage - (requestPage -1) % 5;
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		List<Customer> list = dao.customerList((requestPage - 1)*PAGE_SIZE);
		return new ListModel(list, requestPage, totalPageCount, startPage, endPage);
	}

	public Customer selectCustomer(String customer_id){
		return dao.selectCustomer(customer_id);
	}
	public int updateCustomer(Customer customer){
		return dao.updateCustomer(customer);
	}
	public int deleteCustomer(String customer_id){
		return dao.deleteCustomer(customer_id);
	}
	public List<ProductCode> productCodeList(HttpServletRequest request, Search search) {
		System.out.println("service");
		System.out.println(request.getParameter("searchKey"));
		if (request.getParameter("searchkey") != null) {
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
		}
		return dao.productCodeList(search);
	}
}