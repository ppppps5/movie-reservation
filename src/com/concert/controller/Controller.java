package com.concert.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.concert.command.AddReservationCommand;
import com.concert.command.AdminListCommand;
import com.concert.command.AdminReplyCommand;
import com.concert.command.BCommand;
import com.concert.command.BContentCommand;
import com.concert.command.BDeleteCommand;
import com.concert.command.BModefyCommand;
import com.concert.command.BWriteCommand;
import com.concert.command.BlistCommand;
import com.concert.command.ConcertInfoCommand;
import com.concert.command.DetailConcertCommand;
import com.concert.command.FindIdCommand;
import com.concert.command.FindPasswordCommand;
import com.concert.command.FrontViewCommand;
import com.concert.command.JoinCommand;
import com.concert.command.LogoutCommand;
import com.concert.command.MCommand;
import com.concert.command.MLoginCommand;
import com.concert.command.MemberModefyCommand;
import com.concert.command.MlistCommand;
import com.concert.command.ReservationCommand;
import com.concert.command.ReservationDeleteCommand;
import com.concert.command.SeatListCommand;

/**
 * Servlet implementation class MainController
 */

@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String viewPage = null;
		MCommand mCom = null;
		BCommand bCom = null;
		String uri = request.getRequestURI();
		String conpath = request.getContextPath();
		String com = uri.substring(conpath.length());
		System.out.println(com);
		// 메인, 로그인 부분
		if(com.equals("/main.do")) {
			viewPage = "main.jsp";
			mCom = new FrontViewCommand();
			mCom.excute(request, response);
			System.out.println("viewPage = " + viewPage);
		}else if(com.equals("/m_login_view.do")) {
			viewPage = "login.jsp";
			System.out.println("viewPage = " + viewPage);
		} else if(com.equals("/m_login.do")) {
			mCom = new MLoginCommand();
			mCom.excute(request,response);
			System.out.println("가져온 url: " +request.getAttribute("url"));
			viewPage = (String) request.getAttribute("url");
			System.out.println(viewPage);
		} else if(com.equals("/login_check.do")) {
			viewPage = "logincheck.jsp";
			System.out.println(viewPage);
		}  else if(com.equals("/logout.do")) {
			viewPage="logout.jsp";
			mCom = new LogoutCommand();
			mCom.excute(request, response);
		} else if(com.equals("/admin/logout.do")) {
			viewPage="/logout.jsp";
			mCom = new LogoutCommand();
			mCom.excute(request, response);
		} else if(com.equals("/member_login_view.do")) {
			viewPage = "memberlogin.jsp";
			mCom = new FrontViewCommand();
			mCom.excute(request, response);
			System.out.println(viewPage);
		}
		
		// 콘서트 예약 부분
		if(com.equals("/c_reservation_view.do")) {
			viewPage = "concert/reservation.jsp";
			mCom = new ConcertInfoCommand();
			mCom.excute(request, response);
			System.out.println(viewPage);
		} else if(com.equals("/detail_concert_view.do")) {
			viewPage = "concert/detailconcert.jsp";
			mCom = new DetailConcertCommand();
			mCom.excute(request, response);
			System.out.println(viewPage);
		} else if(com.equals("/c_nextreservation_view.do")) {
			viewPage = "concert/nextreservation.jsp";
			mCom = new SeatListCommand();
			mCom.excute(request, response);
			System.out.println(viewPage);
		} else if(com.equals("/endreservation.do")) {
			System.out.println(viewPage);
			mCom = new AddReservationCommand();
			mCom.excute(request, response);
			viewPage = (String) request.getAttribute("url");
			System.out.println(viewPage + "들어온 url");
		} 
		else if(com.equals("/userinfo_view.do")) {
			viewPage = "bbs/userinfo.jsp";
			mCom = new BlistCommand();
			mCom.excute(request, response);
		} else if(com.equals("/listpage_view.do")) {
			viewPage = "bbs/listpage.jsp";
			mCom = new BlistCommand();
			mCom.excute(request, response);
			
		} else if(com.equals("/concert_reserve_view.do")) {
			viewPage = "bbs/concertreserve.jsp";
			bCom = new ReservationCommand();
			bCom.execute(request, response);
		} else if(com.equals("/BWrite_view.do")) {
			viewPage="bbs/write.jsp";
			
		} else if(com.equals("/BWrite.do")) {
			viewPage="listpage_view.do";
			mCom=new BWriteCommand();
			mCom.excute(request,response);
			String userId = (String) request.getAttribute("userId");
			viewPage="listpage_view.do?id="+userId;
		} else if(com.equals("/update_member_view.do")) {
			viewPage="bbs/updatemember.jsp";
			bCom = new MlistCommand();
			bCom.execute(request, response);						
		} else if(com.equals("/memberModefy.do")) {
			viewPage="detail_member_view.do";
			mCom=new MemberModefyCommand();
			mCom.excute(request,response);
			String userId = (String) request.getAttribute("userId");
			viewPage="detail_member_view.do?id="+userId;
			
		} else if(com.equals("/bbsContent_view.do")) {
			viewPage="bbs/content.jsp";
			bCom=new BContentCommand();
			bCom.execute(request,response);
		} else if(com.equals("/delete_view.do")) {
			viewPage="listpage_view.do";
			bCom=new BDeleteCommand();
			bCom.execute(request,response);
		} else if(com.equals("/detail_member_view.do")) {
			viewPage = "bbs/detailmember.jsp";
			bCom = new MlistCommand();
			bCom.execute(request, response);
		}else if(com.equals("/userinfo_view.do")) {
			viewPage="userinfo.jsp";
			bCom=new BContentCommand();
			bCom.execute(request,response);
		}  else if(com.equals("/userinfo_view.do")) {
			viewPage = "userinfo.jsp";
		}else if(com.equals("/adminReply_view.do")) {
			viewPage="bbs/adminReply.jsp";
			bCom=new BContentCommand();
			bCom.execute(request,response);
			
		}else if(com.equals("/modefy_view.do")) {
			viewPage="bbs/modefy.jsp";
			bCom=new BContentCommand();
			bCom.execute(request,response);
			
		}else if(com.equals("/modefy.do")) {
			viewPage="bbsContent_view.do";
			mCom=new BModefyCommand();
			mCom.excute(request,response);
			
		}else if(com.equals("/adminReply_view.do")) {
			viewPage="bbs/adminReply.jsp";
			bCom=new BContentCommand();
			bCom.execute(request,response);
			
		}else if(com.equals("/adminReply.do")) {
			viewPage="listpage_view.do";
			mCom=new AdminReplyCommand();
			mCom.excute(request,response);
		}else if(com.equals("/reservation_detail_view.do")) {
			viewPage = "bbs/reservationDetail.jsp";
			bCom = new ReservationCommand();
			bCom.execute(request, response);
		}else if(com.equals("/reservationDelete_view.do")) {
			viewPage="concert_reserve_view.do";
			bCom=new ReservationDeleteCommand();
			bCom.execute(request,response);
		} 
		
		// 회원가입
		if(com.equals("/reg_view.do")) {
			viewPage = "join.jsp";
		} else if(com.equals("/join.do")) {
			viewPage = "main.do";
			mCom = new JoinCommand();
			mCom.excute(request, response);
			System.out.println("실행후 이동할 viewPage : " + viewPage);
//			response.sendRedirect(viewPage);
		} else if (com.equals("/findId_view.do")) {
			viewPage = "findId.jsp";
		} else if (com.equals("/findId.do")) {
			viewPage = "findId.jsp";
			mCom = new FindIdCommand();
			mCom.excute(request, response);
		} else if (com.equals("/findPw_view.do")) {
			viewPage = "findpw.jsp";
		} else if (com.equals("/findPw.do")) {
			viewPage = "findpw.jsp";
			mCom = new FindPasswordCommand();
			mCom.excute(request, response);
		}
			
		// 어드민 화면 이동
		if(com.equals("/admin_login_view.do")) {
			viewPage = "admin/adminlogin.jsp";
			mCom = new FrontViewCommand();
			mCom.excute(request, response);
		} else if(com.equals("/admin_list_view.do")) {
			viewPage = "admin/adminlistpage.jsp";
			mCom = new AdminListCommand();
			mCom.excute(request, response);
			
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}