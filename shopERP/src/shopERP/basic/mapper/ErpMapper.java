package shopERP.basic.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import shopERP.basic.model.Customer;

public interface ErpMapper {
	int insertCustomer(Customer customer);
	List<Customer> customerList(RowBounds rb);
	Integer totalCount();
	Customer selectCustomer(String customer_id);
	int updateCustomer(Customer customer);
	int deleteCustomer(String customer_id);
}
