package shopERP.accounting.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class AcService {

	public static AcDao dao;
	public static AcService service = new AcService();
	private static final int PAGE_SIZE = 5;

	public static AcService getInstance() {
		dao = dao.getInstance();
		return service;
	}

	// 통장계좌 신규등록//
	public int insertAccountService(Accounts accounts) {
		return dao.insertAccount(accounts);
	}

	public List<Accounts> listAccountService() {
		List<Accounts> list = dao.accountlist();
		return list;
	}

	// 신용카드 신규등록//

	public int insertCardService(Cards cards) {
		return dao.insertCard(cards);
	}

	public List<Cards> listCardService() {
		List<Cards> list = dao.cardlist();
		return list;
	}

	// 자금계획 신규등록//

	public int insertMoneyPlanService(MoneyPlan plan) {
		return dao.insertMoneyPlan(plan);
	}

	public List<MoneyPlan> listMoneyPlanService() {
		List<MoneyPlan> list = dao.MoneyPlanList();
		return list;
	}

}
