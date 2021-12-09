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
	            <BR>admin님은 관리자입니다.
	        </nav>
	        <nav>
	        	<center>
	                <BR><a href="listpage_view.do"><span style="font-size: 125%;">Q&A게시판</span></a></BR>
	                <BR><a href="detail_member_view.do"><span style="font-size: 125%;">회원정보 수정</span></a></BR>
	                <BR><a href="concert_reserve_view.do"><span style="font-size: 125%;">예약확인</span></a></BR>
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
			<h2>Q&A게시판 답글 작성
           </h2>
	<div class="container">
		<form action="adminReply.do" method="post">
			<input type="hidden" name=bbsId value="${dto.bbsId }"/>
			<input type="hidden" name=bbsGroup value="${dto.bbsGroup}"/>
			<input type="hidden" name=bbsStep value="${dto.bbsStep }"/>
			<input type="hidden" name=bbsIndent value="${dto.bbsIndent }"/>
			<table class="table tabe=bordered table-hover"
				style="text-align: left; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>답글 작성</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>작성자</h5></td>
						<td><input class="form-control" type="text" id="userId"	name="userId" maxLength="30"  value=""></td>						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>제목</h5></td>
						<td><input class="form-control" type="text" id="bbsTitle" name="bbsTitle" maxLength="30"  value=""></td>						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>내용</h5></td>
						<td><input class="form-control" type="text" id="bbsContent"	name="bbsContent" maxLength="300"  value="">
						</td>
					</tr>
					
					<tr>
					<td style="text-align: left" colspan="3"><input
						class="btn btn-primary pull-right" type="submit" value="답글 작성"/></td>
					
					</tr>
				</tbody>
			</table>
	</div>
	</section>
	<section>
 
     		<div class="fo1">
    			 유의사항
	            <BR>① 모든 게시물에 대한 책임은 게시한 자에게 있으며 게시물이 전달하는 정보의 신뢰도, 정확성 등에 대해서 회사는 책임지지 않습니다.
				<BR>② 이용자가 직접 삭제한 게시물은 시스템 상에서 완전히 삭제되며 회사는 이를 별도로 보관하거나 복구할 책임을 지지 않습니다.
				<BR>③ 게시물이 아래 각 호에 해당할 경우 회사가 이를 삭제, 이동하거나 등록을 거부할 수 있고 서비스 내 표시 및 공람을 허용하지 않을 수 있습니다.
				<BR>1. 공공질서와 미풍양속을 저해하는 내용
				<BR>2. 폭력적이거나 저속하고 음란한 내용
				<BR>3. 불법 복제, 해킹, 기타 현행법을 위반하거나 저촉할 우려가 있는 내용
				<BR>4. 특정 개인이나 단체를 모욕하거나 명예를 훼손하고 피해를 줄 의도를 담고 있는 내용
				<BR>5. 개인신상에 대한 내용이어서 타인의 명예나 프라이버시를 침해할 수 있는 내용
				<BR>6. 타인의 지적 재산권, 초상권 등 권리를 침해하는 내용
				<BR>7. 광고, 홍보, 판촉 등 영리를 목적으로 한 상업적 내용
				<BR>8. 사적인 정치적 판단이나 종교적 견해로 이용자간 위화감을 조장하는 내용
				<BR>9. 서비스 각 영역이 규정하고 있는 운영 원칙에 어긋나거나 부합하지 않는 내용
				<BR>10. 이해 당사자의 삭제 요청이 있거나 회사가 피소, 고발될 수 있는 근거를 제공하는 경우
				<BR>11. 동일한 내용을 반복 게시하는 등 다른 이용자의 서비스 이용에 지장을 초래하는 경우
				<BR>12. 회사의 원활한 서비스 제공을 방해하는 경우
				<BR>13. 범죄와 결부된다고 객관적으로 인정되는 경우
				<BR>14. 기타 관계법령에 위배된다고 판단되는 내용
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











