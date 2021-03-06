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
		<img src="image/concert/logo.png" width="200" height="100" alt="??????" />
	        <nav>
	            <span style="font-size: 300%;">MyPage</span>
	            <BR>??????????????? ?????????????????????.
	        </nav>
	        <nav>
	        	<center>
	                <BR><a href="listpage_view.do"><span style="font-size: 125%;">Q&A?????????</span></a></BR>
	                <BR><a href="detail_member_view.do"><span style="font-size: 125%;">???????????? ??????</span></a></BR>
	                <BR><a href="concert_reserve_view.do"><span style="font-size: 125%;">????????????</span></a></BR>
	            </center>    
	        </nav>
	        <nav>
	            	
	            <br><h3><img src="image/concert/phone.jpg" width="35" height="35" alt="telephone"><span style="font-size: 100%;"> ???????????? ????????????</span></h3></h1>
	            <br><span style="font-size: 300%;">041-561-1122</span>
	            <br><span style="font-size: 100%;"> ??????      09:00 ~ 12:00</span>
	            <br><span style="font-size: 100%;">	?????????   09:00 ~ 12:00</span>
	            <br><span style="font-size: 100%;">	????????? ????????? ??????</span>
	        </nav>
    </aside>
    <main>
       
   		<section> 
       
            <h2>?????? ?????? ??????
           </h2>
           <div class="container">
		<form method="post" action="join.do">
			<table class="table tabe=bordered table-hover"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>?????? ?????? ??????</h4></th>
					</tr>
				</thead>
				<tbody>
					<!-- <tr>
						<td style="width: 80px;"><h5>?????????</h5></td>
						<td><input class="form-control" type="text" id="userId"	name="userID" maxLength="30" placeholder="???????????? ??????????????????"></td>
						<td style="width: 80px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">?????? ??????</button></td>
					</tr> -->
					
					<tr>
						<td style="width: 80px;"><h5>????????????</h5></td>
						<td><input class="form-control" type="password" id="userPw" name="userPw" maxLength="30" placeholder="??????????????? ??????????????????"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>???????????? ??????</h5></td>
						<td><input class="form-control" type="password" id="userPw2" name="userPw2" maxLength="30" placeholder="??????????????? ??????????????????"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>??????</h5></td>
						<td><input class="form-control" type="text" id="name" name="name" maxLength="30" placeholder="????????? ??????????????????"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>????????????</h5></td>
						<td><input class="form-control" type="text" id="tel" name="tel" maxLength="30" placeholder="????????? ????????? ??????????????????"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>?????????</h5></td>
						<td><input class="form-control" type="email" id="email" name="email" maxLength="30" placeholder="???????????? ??????????????????"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>????????????</h5></td>
						<td><input class="form-control" type="text" id="birthday" name="birthday" maxLength="30" placeholder="??????????????? ?????????????????? ex)19900901" ></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>??????</h5></td>
						<td colspan="2">
							<div class="form-group" style="text-align: left; margin: 0 auto;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active"> <input
										type="radio" name="gender" autocomplete="off" value="??????" checked>??????
									</label> 
									<label class="btn btn-primary"> <input type="radio" name="gender" autocomplete="off" value="??????">??????
									</label>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>??????</h5></td>
						<td><input class="form-control" type="text" id="address" name="address" maxLength="50" placeholder="????????? ??????????????????"></td>
						<td style="width: 80px;"><button class="btn btn-primary" onclick="searchAddressFunction()" id="find_button" type="button">?????? ??????</button></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>?????? ??????</h5></td>
						<td><input class="form-control" type="text" id="addressDetail" name="addressDetail" maxLength="50" placeholder="?????? ????????? ??????????????????"></td>
					</tr>
					<tr>
					<td style="text-align: left" colspan="3"><input
						class="btn btn-primary pull-right" type="submit" value="???????????? ??????"></td>
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
    			 	????????????
		            <BR>??? ????????? ????????? ???????????? ????????? ????????? ??? ????????? ????????? ?????? ????????????????????? ???????????????. ?????? ?????? ?????? ????????? ???????????? ????????? ???????????? ????????? ??????????????? ?????? ????????? ??????????????? ???????????? ???????????? ?????? ?????? ???????????? ????????? ??????????????? ??????, ????????? ????????? ?????? ??????(???????????? ??????, ???????????? ????????? ??? ??????)??? ????????? ???????????? ????????? ???????????? ????????? ????????? ??????????????? ????????? ??? ????????????.
					<BR>??? ????????? ??????????????? ????????? ???????????? ????????? ????????? ????????? ???????????? ?????? ????????? ???????????? ?????? ????????? ?????? ?????? ???????????? ??????????????? ????????? ??? ????????????.
					<BR>??? ????????? ?????? ??? ?????? ????????? ???????????? ??????, ????????? ??????????????? ?????? ??? ????????? ??? ????????????.
					<BR>1. ?????? ?????? ?????? ????????? ??????????????? ?????? ???6?????? ???????????? ????????? ???????????? ????????? ??????
					<BR>2. ????????? ???????????? ????????? ??????.?????? ?????? ??????, ?????? ?????? ????????? ???????????? ????????? ???????????? ????????? ?????? ?????? ???????????? ?????? ??????
					<BR>3. ?????? ????????? ?????? ????????? ??????????????? ??? ????????? ???????????? ??? ????????????????????? ???????????? ??????
					<BR>4. ????????? ???????????? ????????? ??? ????????? ??????????????? ??????????????? ????????? ????????? ?????? ??????
					<BR>5. ?????? ????????? ?????? ?????? ?????? ???????????? ????????? ????????? ???????????? ????????? ?????? ??????
					<BR>???.????????? ????????? ???????????? ?????? ?????? ?????? ?????? ????????? ????????? ??????????????? ???????????? ????????? ????????? ?????????????????? ????????? ???????????? ????????? ??????
					<BR>???.????????? ?????????????????? ????????? ???????????? ?????? ?????? ????????? ????????? ?????? ??????????????? ????????? ????????? ??????
					<BR>???.????????? ?????????????????? ?????? ?????? ?????? ???????????? ?????? ?????? ??????, ??????????????? ???????????? ?????? ????????? ?????? ?????? (?????????, ??????, ?????? ???) ?????? ????????? ????????? ???????????? ??????
					<BR>???.????????? ?????? ????????? ?????? ?????? ????????? ????????? ????????? ???????????? ???????????? ?????? ?????? ??? ??????????????? ?????? ?????? ????????? ???????????? ??? ????????? ???????????? ??????
					<BR>??? ????????? ?????? ????????? ??????.????????? ???, ????????? ????????? 2??? ?????? ??????????????? 30??? ????????? ??? ????????? ???????????? ???????????? ?????? ????????? ??????????????? ???????????? ??? ????????????.
					<BR>??? ????????? ??????????????? ??????????????? ???????????? ??????????????? ???????????????. ??? ?????? ???????????? ?????? ????????????, ???????????? ?????? ?????? ????????? ????????? ???????????????.
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
	                <center><a href="" target="_blank"><strong>????????????</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>????????????</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>????????????????????????</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>?????????????????????</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>????????????</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <a href="" target="_blank"><strong>??????????????????</strong></a>
	            </div>
	            <div class="footer-txt">
	                <img src="image/concert/logo.png" width="200" height="100" alt="??????" />
	                <div class="footxt">
	                    <p>???????????????</p>
	                    <p class="gray">?????? ????????? ????????? ????????? 215,7???<br />??????  ?????????  |  ??????????????????????????? : ????????? humanticket@naver.com<br />?????????????????????  842-95-00341  |  ?????????????????????  ??? 2005-02682??? 
	                        <br>????????? ?????????????????? : ???????????????</p>
	                    <p>Copyright ?? humanticket Corp. All Rights Reserved.</p>
	                </div>
	            </div>
	        </div>
	    </center>
    </footer>
   </body>
</html>











