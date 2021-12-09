<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>1st Group</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
	.images{
		height:500px;
	}
</style>
<body>

<!-- Header Start -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="main.do" class="w3-bar-item w3-button"><b>1st</b> Group</a>
    <div class="w3-right w3-hide-small">
      <a href="#projects" class="w3-bar-item w3-button">현재 상영중</a>
      <a href="admin_list_view.do" class="w3-bar-item w3-button">마이 페이지</a>
      <a href="logout.do" class="w3-bar-item w3-button">로그아웃</a>
    </div>
  </div>
</div>
<!-- Header End -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img class="w3-image" src="./image/concert/mainharry.jpg" alt="mainharry" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>해리포터</b></span> <span class="w3-hide-small w3-text-light-grey">마지막 시리즈 대개봉</span></h1>
  </div>
</header>

<!-- 대문사진 부분 -->
<div class="w3-content w3-padding" style="max-width:1564px"></div>

  <!-- 현재 상영중 부분 -->
  <div class="w3-container w3-padding-32" id="projects">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">현재 상영중</h3>
  </div>

  <div class="w3-row-padding">
	<c:forEach items="${dtos }" var="dto">
		<div class="w3-col l3 m6 w3-margin-bottom">
	      <div class="w3-display-container">
	        <div class="w3-display-topleft w3-black w3-padding">${dto.cName }</div>
	        <a href="detail_concert_view.do?cNum=${dto.cNum }"><img src="${dto.imgSrc }" style="width:100%" class="images"></a>
	      </div>
	    </div>
	</c:forEach>
  </div>

  <!-- About Section -->
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">오시는 길</h3>
  </div>

  <div class="w3-row-padding w3-grayscale" >
    <div class="w3-col w3-margin-top w3-center"><!-- "w3-col l3 m6 w3-margin-bottom" -->
      <img src="./image/concert/map.jpg" alt="map" style="max-width:700px;" id="map">
      <p>저희 1조 공연 예매소는 충청남도 천안시 동남구 대흥로 215 백자빌딩 7층에 위치해있으며 주차여건이 어려워 대중교통을 이용해주시면 감사하겠습니다.
      <br>1층에 크게 달식당이 있으며 엘레베이터나 계단을 이용해 7층으로 오시면 됩니다.</p>
	</div>
</div>

</body>
</html>
<%@ include file="../footer.jsp"%>