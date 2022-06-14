<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>수강 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CUSTOM CSS -->
<link rel="stylesheet" href="${path}/css/ender.css">
<link rel="stylesheet" href="${path}/css/userClassDetail.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />
</head>
<body>

	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<div class="card-wrapper">
		<div class="card">
			<!-- card left -->
			<div class="product-imgs">
				<div class="img-display">
					<div class="img-showcase">
						<img src="${path}/image/JAVA-book.png" alt="shoe image">

					</div>
				</div>

			</div>
			<!-- card right -->
			<div class="product-content">
				<h2 class="product-title">JAVA</h2>

				<div class="product-rating">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star-half-alt"></i> <span>4.7(21)</span>
				</div>



				<div class="product-detail">
					<h2>JAVA 간단한 설명:</h2>
					<p>1. JAVA 강의를 통해 JAVA의 기초적인 정보들을 습득하고 실습 예제를 <br>통해 실력을 향상시켜보기!</p>
					<p>2. JAVA를 이용한 간단한 연산식 계산하기!</p>
					<ul>
						<li>난이도: <span>쉬움</span></li>
						<li>강사: <span>Mr. KIM</span></li>
						<li>범주: <span>프로그래밍 언어</span></li>
					</ul>
				</div>

				<div class="watch-info">

					<button type="button" class="watch_btn"
						onclick="location.href='${path}/userClassVideo.do'">
						Watch <i class="fas fa-play"></i>
					</button>

				</div>


			</div>
		</div>
	</div>

	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->

</body>
</html>