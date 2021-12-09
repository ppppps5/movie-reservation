package com.concert.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.BbsDao;
import com.concert.dto.BbsDto;


public class AdminListCommand implements MCommand{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BbsDao bDao=new BbsDao();
		ArrayList<BbsDto> dtos=bDao.select();
		request.setAttribute("dtos", dtos);
	}
	
}