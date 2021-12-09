package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.concert.command.MCommand;
import com.concert.dao.MemberDao;

public class FindIdCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MemberDao dao = new MemberDao();
		String name = request.getParameter("name");
		System.out.println(name);
		String tel = request.getParameter("tel");
		System.out.println(tel);
		String findId = dao.findId(name, tel);
		if(findId != null) {
			System.out.println("userId else 실행");
			System.out.println(findId);
			request.setAttribute("msg", true);
			request.setAttribute("findId", findId);
		} else {
			System.out.println("userId == null 실행");
			System.out.println(findId);
			request.setAttribute("msg", false);
			
		}
	}

}