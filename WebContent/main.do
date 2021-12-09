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
            height: 1000px;
            float: left;
            margin: 2px;
            border: 1px solid white;
            border-right: none;
            border-left: none;
        }
        section {
            width: 100%;
            height: 600px;
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
       
            <h2>회원 정보 수정
           </h2>
           <div class="container">
		<form method="post" action="join.do">
			<table class="table tabe=bordered table-hover"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 정보 수정</h4></th>
					</tr>
				</thead>
				<tbody>
					<!-- <tr>
						<td style="width: 80px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" id="userId"	name="userID" maxLength="30" placeholder="아이디를 입력해주세요"></td>
						<td style="width: 80px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복 확인</button></td>
					</tr> -->
					
					<tr>
						<td style="width: 80px;"><h5>비밀번호</h5></td>
						<td><input class="form-control" type="password" id="userPw" name="userPw" maxLength="30" placeholder="비밀번호를 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>비밀번호 확인</h5></td>
						<td><input class="form-control" type="password" id="userPw2" name="userPw2" maxLength="30" placeholder="비밀번호를 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>이름</h5></td>
						<td><input class="form-control" type="text" id="name" name="name" maxLength="30" placeholder="이름을 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>휴대전화</h5></td>
						<td><input class="form-control" type="text" id="tel" name="tel" maxLength="30" placeholder="핸드폰 번호를 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>이메일</h5></td>
						<td><input class="form-control" type="email" id="email" name="email" maxLength="30" placeholder="이메일을 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>생년월일</h5></td>
						<td><input class="form-control" type="text" id="birthday" name="birthday" maxLength="30" placeholder="생년월일을 입력해주세요 ex)19900901" ></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>성별</h5></td>
						<td colspan="2">
							<div class="form-group" style="text-align: left; margin: 0 auto;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active"> <input
										type="radio" name="gender" autocomplete="off" value="남성" checked>남성
									</label> 
									<label class="btn btn-primary"> <input type="radio" name="gender" autocomplete="off" value="여성">여성
									</label>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>주소</h5></td>
						<td><input class="form-control" type="text" id="address" name="address" maxLength="50" placeholder="주소를 입력해주세요"></td>
						<td style="width: 80px;"><button class="btn btn-primary" onclick="searchAddressFunction()" id="find_button" type="button">주소 찾기</button></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>상세 주소</h5></td>
						<td><input class="form-control" type="text" id="addressDetail" name="addressDetail" maxLength="50" placeholder="상세 주소를 입력해주세요"></td>
					</tr>
					<tr>
					<td style="text-align: left" colspan="3"><input
						class="btn btn-primary pull-right" type="submit" value="회원정보 수정"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	</section>
	<section>
    	<div class="fo1">
    			 	<br></br>
    			 	<br></br>
    			 	<br></br>
    			 	유의사항
		            <BR>① 회원은 회사에 언제든지 탈퇴를 요청할 수 있으며 회사는 즉시 회원탈퇴요청을 처리합니다. 다만 재화 등의 거래가 완료되지 아니한 경우에는 거래를 완료하여야 하며 거래를 철회하거나 취소하는 경우에는 그로 인한 불이익은 회원이 부담하여야 하고, 회원의 회사에 대한 채무(마이너스 머니, 마이너스 포인트 등 포함)의 이행이 완료되지 아니한 경우에는 완료될 때까지 회원탈퇴가 제한될 수 있습니다.
					<BR>② 회원은 정보제공에 동의한 이후에도 회사가 향후에 패밀리 사이트에 회원 정보를 제공하는 것을 원하지 않을 경우 언제라도 동의철회를 요청할 수 있습니다.
					<BR>③ 회원이 다음 각 호의 사유에 해당하는 경우, 회사는 회원자격을 제한 및 정지할 수 있습니다.
					<BR>1. 가입 시에 허위 내용을 등록하거나 기타 제6조의 신청거부 사유가 있었음이 밝혀진 경우
					<BR>2. 회사를 이용하여 구입한 재화.용역 등의 대금, 기타 회사 이용에 관련하여 회원이 부담하는 채무를 기일 내에 지급하지 않는 경우
					<BR>3. 다른 사람의 회사 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
					<BR>4. 회사를 이용하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
					<BR>5. 기타 다음과 같은 행위 등을 반복하여 회사의 운영을 방해하는 행위를 하는 경우
					<BR>가.회사의 운영에 관련하여 근거 없는 사실 또는 허위의 사실을 적시하거나 유포하여 회사의 명예를 실추시키거나 회사의 신뢰성을 해하는 경우
					<BR>나.회사의 이용과정에서 회사의 직원에게 폭언 또는 음란한 언행을 하여 업무환경을 심각히 해하는 경우
					<BR>다.회사의 이용과정에서 이유 없는 잦은 연락이나 소란 또는 협박, 인과관계가 입증되지 않는 피해에 대한 보상 (적립금, 현금, 상품 등) 요구 등으로 업무를 방해하는 경우
					<BR>라.회사를 통해 구입한 재화 또는 용역에 특별한 하자가 없는데도 불구하고 일부 사용 후 상습적으로 전부 또는 일부를 반품하는 등 업무를 방해하는 경우
					<BR>④ 회사가 회원 자격을 제한.정지한 후, 동일한 행위를 2회 이상 반복하거나 30일 이내에 그 사유를 시정하지 아니하는 경우 회사는 회원자격을 상실시킬 수 있습니다.
					<BR>⑤ 회사가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.
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











