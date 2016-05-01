package shopERP.accounting.mapper;

import java.util.List;

import shopERP.accounting.model.Accounts;
import shopERP.accounting.model.Cards;
import shopERP.accounting.model.MoneyPlan;

public interface AccountingMapper {
	public List<Accounts> accountlist();

	public int insertAccount(Accounts accounts);

	public int insertCard(Cards cards);

	public List<Cards> cardlist();

	public int insertMoneyPlan(MoneyPlan plan);

	public List<MoneyPlan> MoneyPlanList();

	public int updateAccount(Accounts accounts);

}
