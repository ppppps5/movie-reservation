<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>plz login 8282</title>
<style>
main {
	margin: 0 auto;
	background: white;
	width: 1200px;
	min-height: 500px;
	text-align: : left;
	border: 3px solid lightgray;
}

header, main, footer {
	text-align: center;
}

footer {
	line-height: 100px;
}
</style>
<style>
header {
	display: flex;
	justify-content: left;
}

form {
	padding: 10px;
}

.input-box {
	position: relative;
	margin: 10px 0;
}

.input-box>input {
	background: transparent;
	border: none;
	border-bottom: solid 1px #ccc;
	padding: 20px 0px 5px 0px;
	font-size: 14pt;
	width: 100%;
}

input::placeholder {
	color: transparent;
}

input:placeholder-shown+label {
	color: #aaa;
	font-size: 14pt;
	top: 15px;
}

input:focus+label, label {
	color: #8aa1a1;
	font-size: 10pt;
	pointer-events: none;
	position: absolute;
	left: 0px;
	top: 0px;
	transition: all 0.2s ease;
	-webkit-transition: all 0.2s ease;
	-moz-transition: all 0.2s ease;
	-o-transition: all 0.2s ease;
}

input
:focus
,
input
:not
 
(
:placeholder-shown
 
){
border-bottom
:
 
solid
 
1
px
 
#8aa1a1
;

	
outline
:
 
none
;


}
input[type=submit] {
	background-color: lightgray;
	border: none;
	color: white;
	border-radius: 5px;
	width: 100%;
	height: 50px;
	font-size: 14pt;
	margin-top: 10px;
}

#forgot {
	text-align: right;
	font-size: 12pt;
	color: rgb(164, 164, 164);
	margin: 10px 0px;
}
</style>
</head>
<body>
<!-- Header Start -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="main.do" class="w3-bar-item w3-button"><b>1st</b> Group</a>
    <div class="w3-right w3-hide-small">
      <a href="main.do" class="w3-bar-item w3-button">돌아가기</a>
    </div>
  </div>
</div>
<!-- Header End -->
	<main>
	<h3>로그인</h3>
	<form action="m_login.do" method="POST">
		<div class="input-box">
			<input id="username" type="text" name="id" placeholder="아이디">
			<label for="username">아이디</label>
		</div>
		<div class="input-box">
			<input id="password" type="password" name="pw" placeholder="비밀번호">
			<label for="password">비밀번호</label>
		</div>
		<span style="color:gray" class="text">ID,PW를 잊으셨나요?</span> <a href="findId_view.do">ID찾기</a> <a
			href="findPw_view.do">PW찾기</a><br> <span style="color:gray" class="text">계정이
			없으신가요??</span> <a href="reg_view.do">회원가입</a> <input type="submit"
			id="loginbtn" value="로그인"><label for="loginbtn"></label>
	</form>
	</main>
</body>
</html>
<%@ include file="../footer.jsp"%>