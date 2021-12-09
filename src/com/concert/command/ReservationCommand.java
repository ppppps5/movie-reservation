package com.concert.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.ReservationDao;
import com.concert.dto.ReservationDto;

public class ReservationCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userId = request.getParameter("id");
		
		ReservationDao rDao=new ReservationDao();	
		
		ReservationDto dto=rDao.selectId(userId);
		
		request.setAttribute("dto", dto);
	}

}
