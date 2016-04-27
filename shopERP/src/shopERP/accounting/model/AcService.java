package shopERP.accounting.model;

public class AcService {

	public static AcDao dao;
	public static AcService service = new AcService();
	private static final int PAGE_SIZE = 5;
	
	public static AcService getInstance(){
		dao = dao.getInstance();
		return service;
	}
	
	public int insertAccountService(Accounts accounts){
		return dao.insertAccount(accounts);
	}
	
}
