<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<c:if test="${param.loginType == 1}">
		<script type="text/javascript">
			alert("${msg}");
			location.href="admin_login_view.do";
		</script>
	</c:if>
	<c:if test="${param.loginType == 0}">
		<script type="text/javascript">
			alert("${msg}");
			location.href="member_login_view.do";
		</script>
	</c:if>
	<c:if test="${param.loginType == -1}">
		<script type="text/javascript">
			alert("${msg}");
			location.href="m_login_view.do";
		</script>
	</c:if>


</body>
</html>