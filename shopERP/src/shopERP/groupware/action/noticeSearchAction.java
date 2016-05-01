package shopERP.groupware.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopERP.groupware.model.GwService;
import shopERP.groupware.model.Notice;
import shopERP.groupware.model.GwSearch;

public class noticeSearchAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) {
		GwSearch search = new GwSearch();
		String type = request.getParameter("type");
		String word = request.getParameter("word");
		
		search.setType(type);
		search.setWord(word);
		
		GwService service = GwService.getInstance();
		
		List<Notice> list = service.noticeSearch(search);
		
		return null;
	}

}
