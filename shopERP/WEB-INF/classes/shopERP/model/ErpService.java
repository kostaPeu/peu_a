package shopERP.model;

public class ErpService {
	public static ErpDao dao;
	public static ErpService service = new ErpService();
	
	public static ErpService getInstance(){
		dao = dao.getInstance();
		return service;
	}
}
