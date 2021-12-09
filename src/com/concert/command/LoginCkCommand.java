package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginCkCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginType = request.getParameter("loginType");
		request.setAttribute("loginType", loginType);
	}

}
