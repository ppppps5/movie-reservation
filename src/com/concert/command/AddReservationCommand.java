package com.concert.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.concert.dao.ReservationDao;
import com.concert.dao.SeatDao;

public class AddReservationCommand implements MCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 예약된 좌석 비활성화 됨 예약테이블에 예약 추가
		 * 
		 */
		String url = "";
		int seatCount = 0;
		int resCount = 0;
		// 현재 접속중인 아이디 가져오기
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("id");
		// 현재 공연의 cnum 가져오기
		int cNum = Integer.parseInt(request.getParameter("cNum"));
		// 예약하면서 선택한 좌석들이 들어온다
		String[] seats = request.getParameterValues("seat");
		SeatDao sDao = new SeatDao();
		// 예약하면 먼저 예약된 의자 비활성화
		seatCount = sDao.reservated(cNum, seats);
		/////////////////////////////////////////////// 의자 처리 끝
		// 공연넘버, 현재 유저, 좌석을 받아 예약 테이블에 추가하는 작업
		ReservationDao rDao = new ReservationDao();
		resCount = rDao.addReservation(cNum, userId, seats);

		if (seatCount > 0 && resCount > 0) {
			// 데이터가 둘다 성공적으로 넘어감
			url = "concert/endreservation.jsp?success=true";
			request.setAttribute("url", url);
		} else if (seatCount == 0) {
			// 좌석이 제대로 예약되지 않음
			url = "concert/endreservation.jsp?success=false";
			request.setAttribute("url", url);
		}
	}

}