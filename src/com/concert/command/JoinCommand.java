package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.dao.MemberDao;

public class JoinCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int result = -1;
		MemberDao dao = new MemberDao();
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String birth = request.getParameter("birthday");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String addressDetail = request.getParameter("addressDetail");
		result = dao.join(userId, userPw, name, tel, email, birth, gender, address, addressDetail);
		System.out.println("join 된 결과 : " + result);
		if(result == 0) {
			String msg = "회원가입이 완료되었습니다 로그인 후 이용하세요.";
			request.setAttribute("msg", msg);
		} else {
			String msg = "회원가입 오류";
			request.setAttribute("msg", msg);
		}
	}

}