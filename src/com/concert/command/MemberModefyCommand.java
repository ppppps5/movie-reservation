package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.MemberDao;

public class MemberModefyCommand implements MCommand {
	
@Override
public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	
	
	MemberDao dao=new MemberDao();
	String userId=request.getParameter("userId");
	
	dao.update(
			request.getParameter("userId"),
			request.getParameter("userPw"),
			request.getParameter("name"),
			request.getParameter("tel"),
			request.getParameter("email"),
			request.getParameter("birth"),
			request.getParameter("gender"),
			request.getParameter("address"),
			request.getParameter("addressDetail")
			
			);
			
			request.setAttribute("userId", userId);

	}
}


