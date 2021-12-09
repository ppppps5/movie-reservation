<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.controller {
	padding: 25px 0;
	margin: auto;
	width: 840px;
	text-align: center;
}
table {
	width: 840px;
	padding: 10px 0;
	border-collapse: collapse;
}
th {
	background-color: rgb(100, 100, 100);
	color: white;
}
button {
	margin: 4px 0;
	padding: 10px 0;
	width: 840px;
	background-color: rgb(255, 80, 80);
	color: white;
	border: none;
}
a {
	text-decoration: none;
	color: black;
}
a:hover {
	text-decoration-line: underline;
}
</style>
</head>
<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="main.do" class="w3-bar-item w3-button"><b>1st</b> Group</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="main.do#projects" class="w3-bar-item w3-button">현재 상영중</a>
      <a href="detail_member_view.do" class="w3-bar-item w3-button">마이 페이지</a>
      <a href="logout.do" class="w3-bar-item w3-button">로그아웃</a>
    </div>
  </div>
</div>
<table border="1" width="500">
<tr>
	<th width="60px">아이디</th>
	<th width="60px">이름</th>
	<th width="150px">전화번호</th>
	<th width="150px">이메일</th>
	<th width="150px">생년월일</th>
	<th width="40px">성별</th>
	<th width="150px">주소</th>
	<th width="150px">상세주소</th>
</tr>
<c:forEach items="${dtos}" var="dto">
<tr>
	<td><a href="userinfo_view.do=${dto.userId}">${dto.userId }</a></td>
	<td>${dto.name}</td><td>${dto.tel}</td><td>${dto.email}</td><td>${dto.birth}</td>
	<td>${dto.gender}</td><td>${dto.address}</td><td>${dto.addressDetail}</td>
</tr>
</c:forEach>
<tr>
<tr>
	<td colspan="5"></td>
</tr>
</table>
<%@ include file="../footer.jsp" %>	
</body>
</html>