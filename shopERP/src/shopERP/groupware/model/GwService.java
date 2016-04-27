package shopERP.groupware.model;

import java.util.List;

public class GwService {
	public static GwDao dao;
	public static GwService service = new GwService();
	
	public static GwService getInstance(){
		dao = dao.getInstance();
		return service;
	}

	public List<Gw> gwList() {
		// TODO Auto-generated method stub
		return null;
	}
}
