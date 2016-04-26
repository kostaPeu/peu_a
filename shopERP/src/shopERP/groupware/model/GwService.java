package shopERP.groupware.model;

public class GwService {
	public static GwDao dao;
	public static GwService service = new GwService();
	
	public static GwService getInstance(){
		dao = dao.getInstance();
		return service;
	}
}
