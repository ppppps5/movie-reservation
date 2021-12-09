package com.concert.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.BbsDao;



public class BDeleteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bbsId=request.getParameter("bbsId");
		BbsDao dao=new BbsDao();
		dao.delete(bbsId);

	}

}
