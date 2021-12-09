<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 완료 후 값 확인후 각 페이지 이동</title>
</head>
<body>
	<c:if test="${param.success eq true}" >
		<script>
			alert('예약이 완료되었습니다.');
			location.href = 'main.do';
		</script>
	</c:if>
	<c:if test="${param.success eq false}" >
		<script>
			alert('예약실패 다시 시도해 주세요');
			location.href = 'main.do';
		</script>
	</c:if>
</body>
</html>