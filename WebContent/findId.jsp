<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script>
function showmyid() {
	
}

function goFirstForm() {
	location.href="main.do";
}	
</script>
<head>
<meta charset="UTF-8">
<title>find my id</title>
</head>
<body>
	<c:if test="${requestScope.msg == false}">
		<script type="text/javascript">
			alert("회원정보가 존재하지 않습니다.");
			location.href = "findId.jsp";
		</script>
	</c:if>
	<c:if test="${requestScope.msg == true}">
		<script type="text/javascript">
			var userId = "${findId}";
			alert("회원님의 아이디는 " + userId + " 입니다.");
			location.href = "main.do";
		</script>
	</c:if>
	<div class="container">
		<form action="findId.do" method="post">
			<table class="table table=bordered table-hover table-secondary"	style="text-align: center; 
			border: 1px solid #dddddd">
				<thead class="thead-secondary">
					<tr>
						<th colspan="4"><h4>아이디 찾기</h4></th>
					</tr>
				</thead>
				<tr>
					<td style="width: 110px;"><h5>이름</h5></td>
					<td><input class="form-control" type="text" name="name"
						placeholder="이름을 입력해주세요"></td>
				</tr>

				<tr>
					<td style="width: 110px;"><h5>휴대폰 번호</h5></td>
					<td><input class="form-control" type="text" name="tel"
						placeholder="휴대전화 번호를 입력해주세요"></td>
				</tr>

				<tr>
					<td style="text-align: left" colspan="3"><input
						class="btn btn-secondary pull-right" type="submit" value="아이디 찾기"
						onclick="showmyid()"></td>
				</tr>
				
				<tr>
					<td style="text-align: left" colspan="3"><input
						class="btn btn-secondary pull-right" type="button" value="처음으로"
						onclick="goFirstForm()"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>
<%@ include file="../footer.jsp"%>