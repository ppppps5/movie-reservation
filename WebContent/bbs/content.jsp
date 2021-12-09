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
	<form method="post" action="modefy_view.do">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			<div class="w3-bar w3-white w3-wide w3-padding w3-card">
				<a href="main.do" class="w3-bar-item w3-button"><b>1st</b>Group</a>
				<div class="w3-right w3-hide-small">
					<a href="main.do" class="w3-bar-item w3-button">돌아가기</a>
				</div>
			</div>
			<tbody>
					<tr>
						<td style="width: 110px;"><h5>작성자</h5></td>
						<td><input class="form-control" type="text" id="userId"	name="userId" maxLength="30" value="${dto.userId }"></td>
						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>작성글 <br>번호</h5></td>
						<td><input class="form-control" type="text" id="bbsId"
							name="bbsId" maxLength="30" value="${dto.bbsId }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>작성 <br>날짜</h5></td>
						<td><input class="form-control" type="text" id="bbsDate"
							name="bbsDate" maxLength="30" value="${dto.bbsDate }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>작성글<br>조회수</h5></td>
						<td><input class="form-control" type="text" id="bbsHit"
							name="bbsHit" maxLength="30"
							value="${dto.bbsHit }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>제목</h5></td>
						<td><input class="form-control" type="text" id="bbsTitle"
							name="bbsTitle" maxLength="30"
							value="${dto.bbsTitle }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>내용</h5></td>
						<td><input class="form-control" type="text" id="bbsContent"
							name="bbsContent" maxLength="50" value="${dto.bbsContent }"></td>
					</tr>
					

					<tr>
						<td style="text-align: left" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5>
						<input  class="btn btn-secondary pull-right" 
						type="submit" href="modefy_view.do?userId=${dto.userId }" value= "작성글수정"></td>
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