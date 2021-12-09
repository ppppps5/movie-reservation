<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
var checkbox = document.getElementsByName("seat");
function countReservate(count){
    var currCount = 0;
    // alert(count)
    for(var i = 0; i<checkbox.length;i++) {
        checkbox[i].disabled = false;
        if(checkbox[i].checked){
            currCount = currCount + 1;
        }
    }
    if(currCount < count){
        for(var i=0; i<checkbox.length;i++){
            checkbox[i].disabled = false;
        }
    } else {
        for(var i=0; i<checkbox.length;i++){
            if(!checkbox[i].checked){
                checkbox[i].disabled = true;
            }
        }
    }
}
</script>
<style type="text/css">
	#checkboxWrap{
		margin:0 auto;
 		width: 50%; 
 		font-size: 22px;
	}
	label{
		margin:0;
	}
	.seat{
		margin:0;
	}
	#seatName {
		display:inline-block;
		vertical-align: top;
		font-weight: bold;
	}
	input[type=checkbox] {
	    display: none;
	}
	input[type="checkbox"]+label {
	    display: inline-block;
	    width: 40px;
	    height: 40px;
	    background: url('./image/seat/cinema-seatOff.png') no-repeat 0 0px / contain;
	}
	
	input[type='checkbox']:checked+label {
	    background: url('./image/seat/cinema-seatOn.png') no-repeat 0 1px / contain;
	}
	
</style>
<meta charset="UTF-8">
<title>좌석선택</title>
</head>
<body>
	<form action="endreservation.do" method="get">
		<c:set var="count" value="1"></c:set>
		
		<input type="hidden" name="cNum" value="${param.cNum }">
		<div id="checkboxWrap">
			<c:forEach items="${dtos }" var="dto">
				<input type="checkbox" name="seat" value="${dto.sName}" id="${dto.sName }" onclick="countReservate(${param.count})">
				<label for="${dto.sName}"></label>
				<c:if test="${count % 10 == 0}">
					<c:set var="TextValue" value="${dto.sName }"/>
					<div id="seatName">${fn:substring(TextValue,0,1) }</div><br> 
				</c:if>
				<c:set var="count" value="${count+1}"></c:set>
			</c:forEach>
			<input type="submit" value="예약하기" style="font-size: 16px">
		</div>
		
	</form>
</body>
</html>