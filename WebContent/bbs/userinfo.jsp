<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
    <style>
        .clear {
            clear:both;
        }
        aside {
            width: 370px;
            height: 398px;
            float: left;
            padding: 2px;
            border: solid 1px white;
            background-color: white;
            border-right: none;
            border-left: none;
        }
        nav {
            height: 150px;
            margin-bottom: 50px;
            margin: 20px;
            border: 3px solid #666;
            background-color: white;
            border-right: none;
            border-left: none;
            border-bottom: none;
        }
        main {
            width: 980px;
            height: 800px;
            float: left;
            margin: 2px;
            border: 1px solid white;
            border-right: none;
            border-left: none;
        }
        section {
            width: 100%;
            height: 380px;
            margin: 2px;
            border: 1px solid white;
            border-right: none;
            border-left: none;
            font-size: 12px;
            background-color: white;
        }article {
            width: 370px;
            height: 398px;
            padding: 2px;
            border: 1px solid #666;
            border-right: none;
            border-left: none;
        }
        footer {
          	width: 1370px;
            height: 150px;
            margin: 2px;
            border: 1px solid white;
            border-right: none;
            border-left: none;
            border-bottom: none;
        }

        img{border:0;}

        #logo{width:900px; height:400px; margin:10px auto; border:1px solid;}
    </style>
</head>
<body bgcolor="whitesmoke">

    <header>	

    </header>
    <aside>
		<img src="image/concert/logo.png" width="200" height="100" alt="로고" />
	        <nav>
	            <span style="font-size: 300%;">MyPage</span>
	            <BR>곽유빈님은 일반회원입니다.
	        </nav>
	        <nav>
	        	<center>
	                <BR><a href="listpage_view.do?id=${sessionScope.id }"><span style="font-size: 125%;">Q&A게시판</span></a></BR>
	                <BR><a href="detail_member_view.do?id=${sessionScope.id }"><span style="font-size: 125%;">회원정보 수정</span></a></BR>
	                <BR><a href="concert_reserve_view.do?id=${sessionScope.id }"><span style="font-size: 125%;">예약확인</span></a></BR>
	            </center>    
	        </nav>
	        <nav>
	            	
	            <br><h3><img src="image/concert/phone.jpg" width="35" height="35" alt="telephone"><span style="font-size: 100%;"> 고객센터 전화상담</span></h3></h1>
	            <br><span style="font-size: 300%;">041-561-1122</span>
	            <br><span style="font-size: 100%;"> 평일      09:00 ~ 12:00</span>
	            <br><span style="font-size: 100%;">	토요일   09:00 ~ 12:00</span>
	            <br><span style="font-size: 100%;">	일요일 공휴일 휴무</span>
	        </nav>
    </aside>
    <main>
       
   		<section>
		</section>
		<section>
			<div>
    			
		
        	</div>
        </section>
    </main>
    <article>
    	 
    </article>
    <div class="clear"></div>
    <footer>
	    <center> 
	        <div class="cont">
	            <div class="footer-menu">
	                <center><a href="" target="_blank"><strong>회사소개</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>이용약관</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>개인정보처리방침</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>청소년보호정책</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>이용안내</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>티켓판매안내</strong></a>
	            </div>
	            <div class="footer-txt">
	                <img src="image/concert/logo.png" width="200" height="100" alt="로고" />
	                <div class="footxt">
	                    <p>휴먼티켓㈜</p>
	                    <p class="gray">충남 천안시 동남구 대흥로 215,7층<br />대표  박상용  |  개인정보보호책임자 : 박수호 humanticket@naver.com<br />사업자등록번호  842-95-00341  |  통신판매업신고  제 2005-02682호 
	                        <br>호스팅 서비스사업자 : 휴먼티켓㈜</p>
	                    <p>Copyright © humanticket Corp. All Rights Reserved.</p>
	                </div>
	            </div>
	        </div>
	    </center>
    </footer>
   </body>
</html>