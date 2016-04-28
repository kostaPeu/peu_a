package shopERP.accounting.mapper;

import java.util.List;

import shopERP.accounting.model.Accounts;

public interface AccountingMapper {
	public List<Accounts> accountlist();
	public int insertAccount(Accounts accounts);
	
	

}
