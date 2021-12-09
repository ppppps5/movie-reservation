package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.command.MCommand;
import com.concert.dao.MemberDao;

public class FindPasswordCommand implements MCommand {


	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MemberDao dao = new MemberDao();
		String id = request.getParameter("userId");
		String tel = request.getParameter("tel");
		String name = request.getParameter("name");
		String pw = dao.findPw(id, tel, name);
		System.out.println("가져온 정보 id : " + id);
		System.out.println("가져온 정보 tel : " + tel);
		System.out.println("가져온 정보 name : " + name);
		System.out.println("들어온 비밀번호 pw : " + pw);
		request.setAttribute("pw", pw);
		if (pw != null) {
			System.out.println("userPw != null 실행");
			System.out.println(pw);
			request.setAttribute("msg", true);
			request.setAttribute("findPw", pw);
		}else {	
			System.out.println("userPw == null 실행");
			System.out.println(pw);
			request.setAttribute("msg", false);
		}
		
	}

}