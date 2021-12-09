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
	<form method="post" action="BWrite.do">
		<input type="hidden" value="${sessionScope.id}" name="userId">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			<div class="w3-bar w3-white w3-wide w3-padding w3-card">
				<a href="/concertProject/main.do" class="w3-bar-item w3-button"><b>1st</b>Group</a>
				<div class="w3-right w3-hide-small">
					<a href="/concertProject/main.do" class="w3-bar-item w3-button">돌아가기</a>
				</div>
			</div>
			<tbody>
				<tr>
					<td style="width: 110px;"><h5>제목</h5></td>
					<td><input class="form-control" type="text" id="bbsTitle"	name="bbsTitle" maxLength="30" placeholder="제목을 입력하여주세요"></td>
				</tr> 
				<tr>
					<td style="width: 110px;"><h5>내용</h5></td>
					<td><textarea cols="30" rows="10" class="form-control" type="text" id="bbsContent"	name="bbsContent" maxLength="30" placeholder="내용을 입력하여주세요"></textarea></td>
				</tr>
					
					<tr>
						<td style="text-align: left" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5>
						<input  class="btn btn-secondary pull-right" 
						type="submit" value="글쓰기"></td>
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