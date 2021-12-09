package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session=request.getSession(false);
		 String nowSession = (String) session.getAttribute("id");
		 String nowsession2 = (String) session.getAttribute("sessionID");
		 System.out.println(nowSession);
		 System.out.println(nowsession2);
	    if(session!=null){
	      session.invalidate();
	    }   
//	    response.sendRedirect("main.jsp?msg=logout");
	}

}