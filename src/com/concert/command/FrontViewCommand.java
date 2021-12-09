package com.concert.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.ConcertDao;
import com.concert.dto.ConcertDto;

public class FrontViewCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ConcertDao cDao = new ConcertDao();
		ArrayList<ConcertDto>dtos = cDao.getConcertList();
		System.out.println(dtos);
		request.setAttribute("dtos", dtos);
	}
	
}
