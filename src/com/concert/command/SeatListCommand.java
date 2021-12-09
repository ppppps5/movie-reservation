package com.concert.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.SeatDao;
import com.concert.dto.SeatDto;

public class SeatListCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cNum = Integer.parseInt(request.getParameter("cNum"));
		int count = Integer.parseInt(request.getParameter("count"));
		int cMaxPeople = Integer.parseInt(request.getParameter("cMaxPeople"));
		ArrayList<SeatDto> dtos = new ArrayList();
		SeatDao dao = new SeatDao();
		dtos = dao.getSeatList(cNum);
		System.out.println(dtos);
		request.setAttribute("dtos", dtos);
	}

}