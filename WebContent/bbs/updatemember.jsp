<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>welcome to join</title>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
<!-- <div class="w3-bar w3-white w3-wide w3-padding w3-card">
	<a href="main.do" class="w3-bar-item w3-button"><b>1st</b>Group</a>
	<div class="w3-right w3-hide-small">
	<a href="main.do" class="w3-bar-item w3-button">돌아가기</a>
	</div>
</div> -->
<div class="container">
	<form method="post" action="memberModefy.do">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			<div class="w3-bar w3-white w3-wide w3-padding w3-card">
				<a href="main.do" class="w3-bar-item w3-button"><b>1st</b>Group</a>
				<div class="w3-right w3-hide-small">
					<a href="main.do" class="w3-bar-item w3-button">돌아가기</a>
				</div>
			</div>
			<tbody>
				<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><input readonly="readonly" class="form-control" type="text" id="userId"
							name="userId" maxLength="30" value="${dto.userId }"></td>
					</tr>
				<tr>
						<td style="width: 110px;"><h5>비밀번호</h5></td>
						<td><input class="form-control" type="password" onkeyup="passwordCheck();" id="userPw"
							name="userPw" maxLength="30" value="${dto.userPw }"></td>
					</tr>
					
					<tr>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td><input class="form-control" type="text" id="name"
							name="name" maxLength="30" value="${dto.name }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>휴대전화</h5></td>
						<td><input class="form-control" type="text" id="tel"
							name="tel" maxLength="30" value="${dto.tel }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이메일</h5></td>
						<td><input class="form-control" type="email" id="email"
							name="email" maxLength="30" value="${dto.email }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>생년월일</h5></td>
						<td><input class="form-control" type="text" id="birth"
							name="birth" maxLength="30"
							value="${dto.birth }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>성별</h5></td>
						<td><input class="form-control" type="text" id="gender"
							name="gender" maxLength="30"
							value="${dto.gender }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>주소</h5></td>
						<td><input class="form-control" type="text" id="address"
							name="address" maxLength="50" value="${dto.address }"></td>
						<td style="width: 110px;">
						<button  class="btn btn-secondary"
								onclick="searchAddressFunction()" id="find_button" type="button">
								주소	찾기</button></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>상세 주소</h5></td>
						<td><input class="form-control" type="text"
							id="addressDetail" name="addressDetail" maxLength="50"
							value="${dto.addressDetail }"></td>
					</tr>

					<tr>
						<td style="text-align: left" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5>
						<input  class="btn btn-secondary pull-right" 
						type="submit" value="회원정보 수정"></td>
					</tr>

					<tr>
						<td style="text-align: left" colspan="3">
						<input  class="btn btn-secondary pull-right" 
						type="button" value="처음으로" onclick="goFirstForm()"></td>
					</tr>
					
				</tbody>
			</table>
		</form>
	</div>
	
</body>
</html>
<%@ include file="../footer.jsp"%>