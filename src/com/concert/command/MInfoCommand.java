package com.concert.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.MemberDao;
import com.concert.dto.MemberDto;

public class MInfoCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		MemberDao dao = new MemberDao();

		MemberDto dto = dao.select("userId");

		request.setAttribute("dto", dto);
	}

}