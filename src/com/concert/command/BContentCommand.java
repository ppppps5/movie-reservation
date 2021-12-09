package com.concert.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.BbsDao;
import com.concert.dto.BbsDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bbsId = request.getParameter("bbsId");
		BbsDao dao = new BbsDao();

		BbsDto dto = dao.select(bbsId);

		request.setAttribute("dto", dto);

	}

}