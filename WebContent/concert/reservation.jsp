<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기 누르면 들어오는 곳</title>
<style>
	#wrap {
		margin: 0 auto;
		width: 50%;
	}
	h1 {
		padding-bottom : 10px;
		border-bottom: 2px solid gray;
		font-weight: bold;
	}
	table {
		margin : 10px;
/* 		border: 1px solid black; */
        border-collapse: collapse;
        height:  300px;
        width: 800px;
	}
</style>
<script type="text/javascript">
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	function fnCalCount(type) {
		var price = ${dto.cPrice};
		console.log(price);
		var cMaxPeople = ${dto.cMaxPeople};
		var currCount = document.getElementById('count').value;
		
		if(type == 'p') {
			if(currCount < cMaxPeople ){
				currCount = Number(currCount)+1;
				price = Number(price)*currCount;
				
			}
		} else if(type == 'm') {
			if(currCount > 1){
				currCount = Number(currCount)-1;	
				price = Number(price)*currCount;
			}
		}
		document.getElementById('count').value = currCount;
		document.getElementById('price').value = price;
		document.getElementById('currPrice').innerHTML = numberWithCommas(price) + '원';
	} 
</script>
</head>
<body>
	<div id="wrap">
		<h1>예약하기</h1>
		<form action="c_nextreservation_view.do" method="get">
			<input type="hidden" name="cNum" value="${dto.cNum }">
			<input type="hidden" name="cMaxPeople" value="${dto.cMaxPeople }">
			<input type="hidden" value="${dto.cPrice}" id="price">
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
					<td>${dto.cDate }</td>
				</tr>
				<tr>
					<th>잔여 좌석 수</th>
					<td>${dto.cMaxPeople }</td>
				</tr>
				<tr>
					<th>상세 내용</th>
					<td>${dto.cContent}</td>
				</tr>
				<tr>
					<th>가 격</th>
					<td>
						<span id="currPrice">
							<fmt:formatNumber value="${dto.cPrice }" pattern="#,###" />원
						</span>
					</td>
				</tr>
				<tr>
					<th>수량</th>
					<td>
		<!-- 				<input type="text" name="count" value="1"> -->
				        <button type="button" onclick="fnCalCount('m');">-</button>
				        <input type="text" name="count" value="1" style="text-align:center;" id="count" readonly="readonly"/>
						<button type ="button" onclick="fnCalCount('p');">+</button>
					</td>
				</tr>		
			</table>
			<input type="button" value="이전"> <input type="submit" value="다음"> 
		</form>
	</div>
</body>
</html>