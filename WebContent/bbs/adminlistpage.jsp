<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>관리자 페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif}
</style>
<body class="w3-theme-l5">

<!-- Navbar -->
<div class="w3-top">
	<div class="w3-bar w3-white w3-wide w3-padding w3-card">
		<a href="../main.do" class="w3-bar-item w3-button"><b>1st</b> Group</a>
		<!-- Float links to the right. Hide them on small screens -->
		<div class="w3-right w3-hide-small">
			<a href="../main.do" class="w3-bar-item w3-button">메인으로</a> 
			<a href="./logout.do" class="w3-bar-item w3-button">로그아웃</a>
		</div>
	</div>
</div>
<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">For Admin Page</h4>
         <p class="w3-center"><img src="./image/concert/admin.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> 관리자</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> 거주지 비공개</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> 생년월일 비공개</p>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
<!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white">
          <button onclick="qnaboard();" class="w3-button w3-block w3-theme-l1 w3-left-align">
          <i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> Q&A 게시판</button>
          <div id="Demo1" class="w3-hide w3-container">
            <!-- <p>Some text..</p> -->
          </div>
<!--           <button onclick="modifymember();" class="w3-button w3-block w3-theme-l1 w3-left-align">
          <i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> 회원정보 수정</button>
          <div id="Demo2" class="w3-hide w3-container">
            <p>Some other text..</p>
          </div> -->
          <button onclick="checkyeyark();" class="w3-button w3-block w3-theme-l1 w3-left-align">
          <i class="fa fa-users fa-fw w3-margin-right"></i> 예약 확인</button>
          <div id="Demo3" class="w3-hide w3-container">
          
          </div>
        </div>      
      </div>
      <br>
      
      <!-- Interests --> 
      <div class="w3-card w3-round w3-white w3-hide-small">
        <div class="w3-container">
          <p>고객센터 전화상담</p>
          <p>
            <span class="w3-tag w3-small w3-theme-l5">041-561-1122</span>
          </p>
        </div>
      </div>
      <br>
      
      <!-- Alert Box -->
      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Hey!</strong></p>
        <p>평일 09:00 ~ 12:00</p>
        <p>토요일 09:00 ~ 12:00</p>
        <p>일요일 공휴일 휴무</p>
      </div>
    
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    <div class="w3-col m7">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
              <table class="table">
			    <thead>
			  </thead>
			  </table>
           	
            </div>
          </div>
        </div>
      </div>
      
       	<div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <span class="w3-right w3-opacity">Updating..</span>
        <h4>Q&A 게시판</h4><br>
        <hr class="w3-clear">
        <table class="table">
			    <thead>
			      <tr>
			        <th>번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			        <th>작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			        <th>제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			        <th>날짜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			        <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조회</th>
			      </tr>
			  </thead>
				<tbody> 
		<c:forEach items="${dtos}" var="dto">
			<tr>
			<td>${dto.bbsId }</td><td>${dto.userId }</td>
			<td><c:forEach begin="1" end="${dto.bbsIndent }">--</c:forEach>
			<a href="bbsContent_view.do?bbsId=${dto.bbsId }">${dto.bbsTitle }</a></td>
			<td>&nbsp;&nbsp;&nbsp;${dto.bbsDate}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.bbsHit }</td>
			</tr>
		</c:forEach>
		</tbody>
	  </table>
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom" style="float:right;"><i class="fa fa-comment" ><a href="../adminReply_view.do"></i>  답글 쓰기</button> 
      </a></div>
      
    <!-- End Middle Column -->
    </div>
    
    <!-- Right Column -->
    <div class="w3-col m2">
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p>개봉 예정작</p>
          <img src="./image/concert/eternals.jpg" alt="이터널스" style="width:100%;">
          <p><strong></strong></p>
          <p>Friday 15:00</p>
          <p><button class="w3-button w3-block w3-theme-l4">Info</button></p>
        </div>
      </div>
      <br>
      
      <div class="w3-card w3-round w3-white w3-padding-16 w3-center">
        <p>ADS</p>
      </div>
      <br>
      
      <div class="w3-card w3-round w3-white w3-padding-32 w3-center">
        <p><i class="fa fa-bug w3-xxlarge"></i></p>
      </div>
      
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>
<script>
// Accordion
function myFunction(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-theme-d1";
  } else { 
    x.className = x.className.replace("w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-theme-d1", "");
  }
}

function qnaboard() {
	location.href = "adminReply_view.do?id=${sessionScope.id }"; //"bbs/listpage.jsp"
}

function modifymember() {
	location.href = "detail_member_view.do?id=${sessionScope.id }" //bbs/detailmember.jsp
}

function checkyeyark() {
	location.href = "concert_reserve_view.do?id=${sessionScope.id }" //bbs/concertreserve.jsp
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>
<%@ include file="../footer.jsp"%>
</body>
</html> 