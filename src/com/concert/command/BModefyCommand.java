package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.BbsDao;

public class BModefyCommand implements MCommand {

		
	

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
	
		BbsDao dao=new BbsDao();
		dao.update(
				request.getParameter("bbsId"),
				request.getParameter("bbsTitle"),
				request.getParameter("bbsContent")
				);
	}
		
	

}
