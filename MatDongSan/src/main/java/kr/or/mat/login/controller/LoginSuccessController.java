package kr.or.mat.login.controller;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Controller;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginSuccessController implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(
			  HttpServletRequest request
			, HttpServletResponse response
			, Authentication authentication
	) throws IOException, ServletException {
		
		 Iterator<? extends GrantedAuthority> authIter= authentication.getAuthorities().iterator();
		 
		 HttpSession session = request.getSession();
		 
		 session.setAttribute("", session);
		 
		 while(authIter.hasNext()) {
			 System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+authIter.next());
		 }
		 
		 response.sendRedirect("/index");
	}

}
