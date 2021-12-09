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
function duplicateId() {
	var userId = $('#userId').val();
	$.ajax({
		type: 'POST',
		url: './DuplicateIdServlet',
		data: { userId : userId },
		success: function(result) {
			if(result == 1) {
				$('#checkMessage').html('사용 가능한 아이디입니다');
				$('#checkType').attr('class', 'modal-content panel-dark');
			}else {
				$('#checkMessage').html('사용 할 수 없는 아이디입니다');
				$('#checkType').attr('class', 'modal-content panel-dark');
			}
			$('#checkModal').modal("show");
		}
	})
}
	
	function passwordCheck() {
		var userPw = $('#userPw').val();
		var userPw2 = $('#userPw2').val();
		if(userPw != userPw2) {
			$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
		}else {
			$('#passwordCheckMessage').html('');
		}
	}
	
	function searchAddressFunction() {
		new daum.Postcode({
			oncomplete : function(data) {
				jQuery("#address").val(data.address);
				jQuery("#addressDetail").focus();
				$("#address").css({
					background : "#b3bbc9"
				});
			}
		}).open();
	}

	function goFirstForm() {
		location.href = "main.do";
	}
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
	<form method="post" action="join.do">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			<div class="w3-bar w3-white w3-wide w3-padding w3-card">
				<a href="main.do" class="w3-bar-item w3-button"><b>1st</b>Group</a>
				<div class="w3-right w3-hide-small">
					<a href="main.do" class="w3-bar-item w3-button">돌아가기</a>
				</div>
			</div>
			<tbody>
				<tr>
					<td style="width: 110px;"><h5>예약번호</h5></td>
					<td><input readonly="readonly" class="form-control" type="text" id="userId"	name="userId" maxLength="30" value="${dto.rNum }"></td>
					
				</tr> 
			
					<tr>
						<td style="width: 110px;"><h5>예매자 아이디</h5></td>
						<td><input readonly="readonly" class="form-control" type="text" id="name"
							name="name" maxLength="30" value="${dto.userId }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>콘서트 번호</h5></td>
						<td><input readonly="readonly" class="form-control" type="text" id="tel"
							name="tel" maxLength="30" value="${dto.cNum }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>예매일</h5></td>
						<td><input readonly="readonly" class="form-control" type="email" id="email"
							name="email" maxLength="30" value="${dto.rDate }"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>예매좌석</h5></td>
						<td><input readonly="readonly" class="form-control" type="text" id="birthday"
							name="birthday" maxLength="30"
							value="${dto.SNAME }"></td>
					</tr>
					

					<tr>
					<td style="text-align: left" colspan="3">
					<a class="btn btn-primary pull-right" type="submit" href="reservationDelete_view.do?rNum=${dto.rNum }">예약취소</a>
					
					</td>
					</tr>	
					<tr>
						<td style="text-align: left" colspan="3">
						<input readonly="readonly" class="btn btn-secondary pull-right" 
						type="button" value="처음으로" onclick="goFirstForm()"></td>
					</tr>
					
				</tbody>
			</table>
		</form>
	</div>
	<%
		String messageContent = null;
		if(session.getAttribute("messageContent") != null) {
			messageContent = (String) session.getAttribute("messageContent");
		}
		
		String messageType = null;
		if(session.getAttribute("messageType") != null) {
			messageType = (String) session.getAttribute("messageType");
		}
		
		if(messageContent != null) {
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content"
					<%if (messageType.equals("오류 메세지")) {
				out.println("panel-warning");
			} else {
				out.println("panel-success");
			}%>>
					}
						<div class="modal-header panel-heading">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span>
								<span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">
								<%= messageType %>
							</h4>
						</div>
						<div class="modal-body">
							<%= messageContent %>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
						</div>
					</div>
			</div>
		</div>
	</div>
	<script>
		$('#messageModal').modal("show");
	</script>
	<%
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
						<div class="modal-header panel-heading">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span>
								<span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">
								확인 메세지
							</h4>
						</div>
						<div class="modal-body" id="checkMessage">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
						</div>
					</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>