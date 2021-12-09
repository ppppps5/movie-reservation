package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.concert.dao.AdminDao;
import com.concert.dao.MemberDao;

public class MLoginCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 회원의 로그인 계열 처리 로직
		 */
		String url = "";
		String msg = null;
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDao mDao= new MemberDao();
		AdminDao aDao = AdminDao.getInstance();
		System.out.println(id +"\n"+ pw);
		// 아이디 처리 결과값을 얻어옴 1 성공 0 비밀번호 틀림 -1 아이디도 틀림
		int result = mDao.login(id, pw);
		int aResult = aDao.login(id, pw);
		if(result == 1 && aResult == -1) {
			System.out.println("들어온 result aResult =" + result + aResult);
			msg = "회원 로그인 성공";
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			url = "logincheck.jsp?loginType=0";
			System.out.println("회원 로그인 성공 로직 실행");
			// ---------------------------------------------------
			
		} else if(result == -1 && aResult == 1){
			System.out.println("들어온 result aResult =" + result + aResult);
			msg = "관리자 로그인 성공";
			url = "logincheck.jsp?loginType=1";
			HttpSession session = request.getSession();
			session.setAttribute("sessionID", id);
			System.out.println("관리자 로그인 성공 로직 실행");
			//---------------------------------------------------
		} else {
			System.out.println("들어온 result aResult =" + result + aResult);
			url = "logincheck.jsp?loginType=-1";
			msg = "등록되지 않은 아이디이거나 또는 비밀번호를 잘못 입력하셨습니다.";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
//		request.getRequestDispatcher(url).forward(request, response);
//		login.jsp?seccess=true
	}
}
