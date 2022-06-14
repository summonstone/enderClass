<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코스</title>

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/course.css" />

<!-- CUSTOM CSS -->
<link rel="stylesheet" href="${path}/css/ender.css">

</head>
<body>
</head>
<body>

	<!-- HEADER STARTS -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- HEADER ENDS -->

	<!-- course section starts  -->

	<section class="course" id="course">
		<h1 class="heading">인기있는 강좌 목록</h1>

		<div class="box-container">

			<div class="box">
				<img src="${path}/image/JAVA-book.png" alt="" />
				<h3 class="price">₩18,</h3>
				<div class="content">
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half"></i>
					</div>
					<a href="${path}/watchVideo.do" class="title">JAVA 기초</a>
					<p>JAVA의 기초와 간단한 실습 예제!</p>
					<div class="info">
						<h3>
							<i class="far fa-clock"></i> 2 hours
						</h3>
						<h3>
							<i class="far fa-calendar-alt"></i> 6 months
						</h3>
						<h3>
							<i class="fas fa-book"></i> 12 modules
						</h3>
					</div>
				</div>
			</div>

			<div class="box">
				<img src="${path}/image/HTML-book.png" />
				<h3 class="price">₩20,</h3>
				<div class="content">
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half"></i>
					</div>
					<a href="${path}/watchVideo.do" class="title">HTML 기초</a>
					<p>HTML의 기초와 간단한 실습 예제!</p>
					<div class="info">
						<h3>
							<i class="far fa-clock"></i> 2 hours
						</h3>
						<h3>
							<i class="far fa-calendar-alt"></i> 6 months
						</h3>
						<h3>
							<i class="fas fa-book"></i> 12 modules
						</h3>
					</div>
				</div>
			</div>
			
			<div class="box">
				<img src="${path}/image/JS-book.png" alt="" />
				<h3 class="price">₩22,</h3>
				<div class="content">
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half"></i>
					</div>
					<a href="#" class="title">Javascript 기초</a>
					<p>JS의 기초와 간단한 실습 예제!</p>
					<div class="info">
						<h3>
							<i class="far fa-clock"></i> 2 hours
						</h3>
						<h3>
							<i class="far fa-calendar-alt"></i> 6 months
						</h3>
						<h3>
							<i class="fas fa-book"></i> 12 modules
						</h3>
					</div>
				</div>
			</div>

			<div class="box">
				<img src="${path}/image/JSP-book.png" alt="" />
				<h3 class="price">₩20,</h3>
				<div class="content">
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half"></i>
					</div>
					<a href="#" class="title">JSP 기초</a>
					<p>JAVA와 Servlet의 기초와 간단한 실습 예제!</p>
					<div class="info">
						<h3>
							<i class="far fa-clock"></i> 2 hours
						</h3>
						<h3>
							<i class="far fa-calendar-alt"></i> 6 months
						</h3>
						<h3>
							<i class="fas fa-book"></i> 12 modules
						</h3>
					</div>
				</div>
			</div>

			<div class="box">
				<img src="${path}/image/PYTHON-book.png" alt="" />
				<h3 class="price">₩34,</h3>
				<div class="content">
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half"></i>
					</div>
					<a href="#" class="title">Python 기초</a>
					<p>Python의 기초와 실습 예제!</p>
					<div class="info">
						<h3>
							<i class="far fa-clock"></i> 2 hours
						</h3>
						<h3>
							<i class="far fa-calendar-alt"></i> 6 months
						</h3>
						<h3>
							<i class="fas fa-book"></i> 12 modules
						</h3>
					</div>
				</div>
			</div>

			<div class="box">
				<img src="${path}/image/DB-book.png" alt="" />
				<h3 class="price">₩25,</h3>
				<div class="content">
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star-half"></i>
					</div>
					<a href="#" class="title">DB 기초</a>
					<p>DB의 기초와 실습 예제!</p>
					<div class="info">
						<h3>
							<i class="far fa-clock"></i> 2 hours
						</h3>
						<h3>
							<i class="far fa-calendar-alt"></i> 6 months
						</h3>
						<h3>
							<i class="fas fa-book"></i> 12 modules
						</h3>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- course section ends -->

	<!-- FOOTER STARTS -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- FOOTER ENDS -->



</body>
</html>