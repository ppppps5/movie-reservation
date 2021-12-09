package com.concert.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * 회원쪽 로직을 실행시키는 회원command의 인터페이스
 */
public interface MCommand {
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
