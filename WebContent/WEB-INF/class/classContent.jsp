<%@page import="com.ender.model.ClassVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ender Online Class</title>

<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<link rel="stylesheet" href="${path}/css/content.css">

<%
	ClassVO vo = (ClassVO) request.getAttribute("vo");
String c_name = vo.getName();
String c_tr = vo.getTr();
int c_price = vo.getPrice();
int c_content = vo.getContent();
String c_info = vo.getInfo();
%>
</head>
<body>
	<!-- header section starts  -->

	<jsp:include page="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<div class="card">
		<div class="card-image"><img src="${path}/image/newsletter-img.gif" width="160" height="215"></div>
		<div class="card-text">
			<span class="date">세부사항</span>
			<h2>강좌 이름</h2>
			<p><%=c_name%></p>
			<h2>강사</h2>
			<p><%=c_tr%></p>
			<h2>정보</h2>
			<p><%=c_content%></p>
		</div>

		<div class="card-btn">
			<div class="stat">
				<div class="value">강의 수</div>
				<div class="type"><%=c_content%></div>
			</div>
			<div class="stat border">
				<div class="value">수강료</div>
				<div class="type"><%=c_price%>원
				</div>
			</div>
			<div class="stat">
				<div class="type"><a href="userClassList.do" class="btn btn-secondary">&raquo;</a></div>
			</div>
		</div>
	</div>

	<!-- footer section starts  -->

	<jsp:include page="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->

</body>
</html>