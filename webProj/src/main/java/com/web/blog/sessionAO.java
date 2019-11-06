package com.web.blog;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class sessionAO {
	private sessionAO() {
	}

	private static sessionAO instance = new sessionAO();

	public static sessionAO getInstance() {
		return instance;
	}
	
	public void setSession(HttpServletRequest request,String email) {
		HttpSession session = request.getSession(true);
		session.setAttribute("login", email);
	}
	
	public void exitSession(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		session.invalidate();
	}
	public String getSID(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		return session.getAttribute("login").toString();
	}
	
}
