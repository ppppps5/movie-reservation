package com.concert.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.MemberDao;
import com.concert.dto.MemberDto;

public class MlistCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userId = request.getParameter("id");
		
		MemberDao mDao=new MemberDao();	
		
		MemberDto dto=mDao.selectId(userId);
		
		request.setAttribute("dto", dto);
	}

}
