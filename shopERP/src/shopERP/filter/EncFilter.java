package shopERP.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class EncFilter implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		if (request.getCharacterEncoding() == null) {
			request.setCharacterEncoding("utf-8");
		}

		if (request instanceof HttpServletRequest) {
			HttpSession session = ((HttpServletRequest) request).getSession();
			String main_e_name = (String)session.getAttribute("main_e_name");
			
			((HttpServletRequest) request).setAttribute("main_e_name", main_e_name);
		}

		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}