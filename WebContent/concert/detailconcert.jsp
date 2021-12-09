<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	h1 {
		padding-bottom : 10px;
		border-bottom: 2px solid gray;
		font-weight: bold;
	}
    #image {
       float:left;
       width: 200px;
       height: 300px;
       margin-right: 20px;
    }
    #wrap {
        margin:100px auto;
        width: 50%;
        border-bottom: 2px solid gray;
        padding-bottom: 10px;
    }
	table {
		margin : 10px;
/* 		border: 1px solid black; */
        border-collapse: collapse;
        height:  300px;
        width: 500px;
	}
	tr,td{
		padding: 5px;
	}
	#buttons {
        clear: both;
		margin: 0 auto;
		width: 50%;
	}
	.button{
		display: inline-block;
		margin: right;
		background-color: black;
		color: lightgray;
	}
</style>
<meta charset="UTF-8">
<title>영화목록 클릭하면 들어오는 곳</title>
</head>
<body>
	<c:if test="${sessionScope.id eq null}">
		<script type="text/javascript">
		alert('로그인이 필요합니다');
		location.href='m_login_view.do';
	</script>
	</c:if>
	<div id="wrap">
		<h1>${dto.cName }</h1>
		<div id="content">
            <img src="${dto.imgSrc }" id="image">
			<table>
				<tr>
					<th>콘서트제목</th>
					<td>${dto.cName }</td>
				</tr>
				<tr>
					<th>콘서트감독</th>
					<td>${dto.cDirector}</td>
				</tr>
				<tr>
					<th>일시</th>
					<td>${dto.cDate}</td>
				</tr>
				<tr>
					<th>잔여 좌석 수</th>
					<td>${dto.cMaxPeople}</td>
				</tr>
				<tr>
					<th>상세 내용</th>
					<td>${dto.cContent}</td>
				</tr>
				<tr>
					<th>티켓 가격</th>
					<td><fmt:formatNumber value="${dto.cPrice }" pattern="#,###"></fmt:formatNumber>원</td>
				</tr>
			</table>
		</div>
		
		<div id="buttons">
			<input class="button" type="button" value="예약하기" onclick="location.href='c_reservation_view.do?cNum=${dto.cNum}'">
			<input class="button" type="button" value="메인으로 돌아가기" onclick="location.href='main.do'">
		</div>
		
	</div>
<%@ include file="../footer.jsp"%>
</body>
</html>