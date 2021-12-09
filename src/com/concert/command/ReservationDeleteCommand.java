package com.concert.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.ReservationDao;

public class ReservationDeleteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String rNum=request.getParameter("rNum");
		ReservationDao dao=new ReservationDao();
		dao.delete(rNum);

	}

}
