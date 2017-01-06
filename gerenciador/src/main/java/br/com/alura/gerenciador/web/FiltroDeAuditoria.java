package br.com.alura.gerenciador.web;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.Usuario;

@WebFilter(urlPatterns = "/*")
public class FiltroDeAuditoria implements Filter  {

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) arg0;
		
		
		
		HttpSession session = req.getSession();
		Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");
		
		String usuario = "<deslogado>";
		
		if(usuarioLogado != null){
			usuario = usuarioLogado.getEmail();
		}
		
		System.out.println("Usuário "+ usuario +" acessando a URI "+ req.getRequestURI());
		
		arg2.doFilter(arg0, arg1);
	}


	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}
	
}
