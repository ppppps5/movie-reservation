package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.BbsDao;

public class AdminReplyCommand implements MCommand {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");


			
			BbsDao dao=new BbsDao();
			String bbsId=request.getParameter("bbsId");
			String bbsGroup=request.getParameter("bbsGroup");
			String bbsIndent=request.getParameter("bbsIndent");
			String bbsStep=request.getParameter("bbsStep");
			
			
			String userId=request.getParameter("userId");
			String bbsTitle=request.getParameter("bbsTitle");
			String bbsContent=request.getParameter("bbsContent");
			
			
			dao.reply(bbsId,bbsGroup,bbsIndent,bbsStep,userId,bbsTitle,bbsContent);

		
		
		
	}
		


}



