<%@page import="com.ender.model.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<link rel="stylesheet" href="${path}/css/content.css?ver=1">


<title>Ender Online Class</title>
<%
	BookVO vo = (BookVO) request.getAttribute("vo");
String b_name = vo.getB_name();
String b_image = vo.getB_image();
String b_pub = vo.getB_pub();
int b_price = vo.getB_price();
String b_info = vo.getB_info();
%>
</head>
<body>
	<!-- header section starts  -->

	<jsp:include page="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<div class="card">
		<div class="card-image"><img src="${path}/image/${vo.b_image}" width="160" height="215"/></div> 
		<div class="card-text">
			<span class="date">세부사항</span>
			<h2>교재 이름</h2>
			<p><%=b_name%></p>
			<h2>정보</h2>
			<p><%=b_info%></p>
		</div>

		<div class="card-btn">
			<div class="stat">
				<div class="value">출판사</div>
				<div class="type"><%=b_pub%></div>
			</div>
			<div class="stat border">
				<div class="value">판매가</div>
				<div class="type"><%=b_price%>원
				</div>
			</div>
			<div class="stat">
				<div class="type"><a href="userClassList.do" class="btn btn-secondary">&raquo;</a>
				</div>
			</div>
		</div>
	</div>

	<!-- footer section starts  -->

	<jsp:include page="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->

</body>
</html>