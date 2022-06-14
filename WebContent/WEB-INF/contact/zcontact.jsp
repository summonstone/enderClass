<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>

<!--link-stylesheet----------->
<link rel="stylesheet" href="${path}/css/contact.css" />

<link rel="stylesheet" href="${path}/css/ender.css">

<!--using-fontAwesome------------>
<script src="https://kit.fontawesome.com/c8e4d183c2.js"
	crossorigin="anonymous"></script>

</head>
<body>
	<!-- HEADER STARTS -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- HEADER ENDS -->

	<section id="contact">
		<!--socail----------->
		<div class="social">
			<!--icons--------->
			<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
				class="fab fa-twitter"></i></a> <a href="#"><i
				class="fab fa-instagram"></i></a> <a href="#"><i
				class="fab fa-dribbble"></i></a> <a href="#"><i
				class="fab fa-behance"></i></a>
		</div>
		<!--contact-box------------->
		<div class="contact-box">
			<!--heading---------->
			<div class="c-heading">
				<h1>찾아오시는 길</h1>
				<p>미리 상담날짜를 예약해주시면 더욱 원활한 상담이 가능합니다.</p>
			</div>
			<!--inputs------------------>
			<div class="c-inputs">
				<form>
					<input type="text" placeholder="성함" />
					<c:if test="${sessionScope.userID != null}">
						<input type="email" placeholder="${sessionScope.userID}" readonly="readonly" />
					</c:if>
					<c:if test="${sessionScope.userID == null}">
						<input type="email" placeholder="email@email.com" />
					</c:if>

					<textarea name="message" placeholder="메세지를 남겨주세요."></textarea>
					<!--sumbit-btn----------->
					<button>보내기</button>
				</form>
			</div>
		</div>
		<!--map------------------->
		<div class="map">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d36902.665035164784!2d126.88226984183534!3d35.16246648774705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35718cf8f7304273%3A0x7181108ea523ce02!2z6rSR7KO86rWt7KCc7KeB7JeF7KCE66y47ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1645027183358!5m2!1sko!2skr"
				width="600" height="450" style="border: 0" allowfullscreen=""
				loading="lazy"></iframe>
		</div>
	</section>

</body>
</html>