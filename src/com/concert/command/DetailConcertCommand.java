package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.ConcertDao;
import com.concert.dto.ConcertDto;

public class DetailConcertCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ConcertDao dao = new ConcertDao();
		ConcertDto dto = new ConcertDto();
		String cNum = request.getParameter("cNum");
		dto = dao.getConcertInfo(cNum); 
		request.setAttribute("dto", dto);
	}

}
