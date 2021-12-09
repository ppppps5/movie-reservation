<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table boarder=1>
	<tr>
		<td>아이디</td>
		<td>${dto.userId }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${dto.name }</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>${dto.tel }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${dto.email }</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>${dto.birth }</td>
	</tr>
	<tr>
		<td>성별</td>
		<td>${dto.gender }</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>${dto.address }</td>
	</tr>
		<tr>
		<td>상세주소</td>
		<td>${dto.addressDetail }</td>
	</tr>
	<tr>
		<td colspan=2>
			<a href="reply_view.do?bbsId=${dto.bbsId }">예약확인</a>
			<a href="modefy_view.do?bbsId=${dto.bbsId }">회원정보수정</a>
			<a href="listpage_view.do">회원목록보기</a>
		</td>
	</tr>
</table>

</body>
</html>














