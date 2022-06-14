<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html lang="ko">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Ender Online Class</title>

	<!-- SWIPER CDN -->
	<link rel="stylesheet"	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

	<!-- FONT AWESOME CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href="${path}/css/ender.css">

	<!-- FAVICON.ICO 404 ERROR -->
	<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">

</head>

<body>

	<!-- HEADER STARTS -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- HEADER ENDS -->

	<!-- HOME STARTS -->

	<section class="home" id="home">

		<div class="row">

			<div class="content">
				<h3>인기 강좌</h3>
				<p>현재 수강생들의 Best Pick!!!</p>
				<a href="${path}/watchVideo.do" class="btn">미리보기</a>
			</div>

			<div class="swiper books-slider">
				<div class="swiper-wrapper">
					<a href="#" class="swiper-slide"><img src="image/JSP-book.png" alt="JSP 책"></a>
					<a href="#" class="swiper-slide"><img src="image/JS-book.png" alt="JS 책"></a>
					<a href="#"	class="swiper-slide"><img src="image/JAVA-book.png" alt="JAVA 책"></a>
					<a href="#" class="swiper-slide"><img src="image/DB-book.png" alt="DB 책"></a>
					<a href="#" class="swiper-slide"><img src="image/PYTHON-book.png" alt="PYTHON 책"></a>
					<a href="#"	class="swiper-slide"><img src="image/HTML-book.png" alt="HTML 책"></a>
				</div>
				<img src="image/stand.png" class="stand" alt="책 받침대">
			</div>

		</div>

	</section>

	<!-- HOME ENDS -->

	<!-- ICONS STARTS -->

	<section class="icons-container">

		<div class="icons">
			<i class="fas fa-shipping-fast"></i>
			<div class="content">
				<h3>배송비 무료</h3>
				<p>수강 과목 별 첫 결제 시</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-lock"></i>
			<div class="content">
				<h3>정보 보안</h3>
				<p>불필요한 정보 미저장</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-redo-alt"></i>
			<div class="content">
				<h3>쉬운 환불</h3>
				<p>14일 이내 전액 환불</p>
			</div>
		</div>

		<div class="icons">
			<i class="fas fa-headset"></i>
			<div class="content">
				<h3>24시간 상담</h3>
				<p>친절하고 쉬운 상담</p>
			</div>
		</div>

	</section>

	<!-- ICONS ENDS -->

	<!-- PROFESSOR STARTS -->

	<section class="professor" id="professor">

		<h1 class="heading">
			<span>인기 교수</span>
		</h1>

		<div class="swiper professor-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_1.png" alt="교수 1">
					</div>
					
					<div class="content">
						<h3>Mr. LEE</h3>
						<div class="comment">'자바가 제일 쉬웠어요'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_2.png" alt="교수 2">
					</div>
					
					<div class="content">
						<h3>Mr. KIM</h3>
						<div class="comment">'JS의 기초를 알려줄게!'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_3.png" alt="교수 3">
					</div>
					
					<div class="content">
						<h3>Mr. JEON</h3>
						<div class="comment">'Python 초보를 고수로'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_4.png" alt="교수 4">
					</div>
					
					<div class="content">
						<h3>Mr. JEONG</h3>
						<div class="comment">'코딩이 어려우신가요?'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_5.png" alt="교수 5">
					</div>
					
					<div class="content">
						<h3>Mr. PARK</h3>
						<div class="comment">'코딩의 기초 중에 기초!'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_6.png" alt="교수 6">
					</div>
					
					<div class="content">
						<h3>Mr. RYU</h3>
						<div class="comment">'실무 중심 교육'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_7.png" alt="교수 7">
					</div>
					
					<div class="content">
						<h3>Mr. SEO</h3>
						<div class="comment">'코드의 예술'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_8.png" alt="교수 8">
					</div>
					
					<div class="content">
						<h3>Ms. LEE</h3>
						<div class="comment">'부자가 되고싶다면 클릭!'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_9.png" alt="교수 9">
					</div>
					
					<div class="content">
						<h3>Ms. HAN</h3>
						<div class="comment">'왜? 코딩이 열풍인가?'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="icons">
						<a href="${path}/joinOnline.do" class="fas fa-video"></a>
						<a href="${path}/note.do"	class="fas fa-heart"></a>
						<a href="#" class="fas fa-eye"></a>
					</div>
					
					<div class="image">
						<img src="image/professor_10.png" alt="교수 10">
					</div>
					
					<div class="content">
						<h3>Ms. KIM</h3>
						<div class="comment">'눈으로 읽히는 코드'</div>
						<a href="${path}/watchProfessor.do" class="btn">상세 보기</a>
					</div>
				</div>

			</div>

			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>

		</div>

	</section>

	<!-- PROFESSOR ENDS -->

	<!-- NEWSLETTER STARTS -->

	<section class="newsletter">

		<form>
			<h3>구독하고 빠른 정보 받기</h3>
			<input type="email" placeholder="이메일을 입력해주세요." class="box">
			<input type="submit" value="구독" class="btn">
		</form>

	</section>

	<!-- NEWSLETTER ENDS -->

	<!-- SUBJECT STARTS -->

	<section class="subject" id="subject">

		<h1 class="heading">
			<span>인기 과목</span>
		</h1>

		<div class="swiper subject-slider">

			<div class="swiper-wrapper">

				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-1.png" alt="교재 1">
					</div>
					
					<div class="content">
						<h3>React</h3>
						
						<div class="price">
							₩39,000 <span>₩42,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-2.png" alt="교재 2">
					</div>
					
					<div class="content">
						<h3>Python</h3>
						
						<div class="price">
							₩34,000 <span>₩40,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star-half-alt"></i>
							<i class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-3.png" alt="교재 3">
					</div>
					
					<div class="content">
						<h3>HTML</h3>
						
						<div class="price">
							₩20,000 <span>₩30,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-4.png" alt="교재 4">
					</div>
					
					<div class="content">
						<h3>CSS</h3>
						
						<div class="price">
							₩21,000 <span>₩31,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-5.png" alt="교재 5">
					</div>
					
					<div class="content">
						<h3>JavaScript</h3>
						
						<div class="price">
							₩22,000 <span>₩32,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
				</a>

			</div>

		</div>

		<div class="swiper subject-slider">

			<div class="swiper-wrapper">

				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-6.png" alt="교재 6">
					</div>
					
					<div class="content">
						<h3>Node.js</h3>
						
						<div class="price">
							₩24,000 <span>₩35,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-7.png" alt="교재 7">
					</div>
					
					<div class="content">
						<h3>Vue.js</h3>
						
						<div class="price">
							₩23,000 <span>₩34,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-8.png" alt="교재 8">
					</div>
					
					<div class="content">
						<h3>Next.js</h3>
						
						<div class="price">
							₩22,000 <span>₩35,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-9.png" alt="교재 9">
					</div>
					
					<div class="content">
						<h3>Nest.js</h3>
						
						<div class="price">
							₩22,000 <span>₩34,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
						</div>
					</div>
				</a>
				
				<a href="#" class="swiper-slide box">
					<div class="image">
						<img src="image/book-10.png" alt="교재 10">
					</div>
					
					<div class="content">
						<h3>Django</h3>
						
						<div class="price">
							₩20,000 <span>₩34,000</span>
						</div>
						
						<div class="stars">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star-half-alt"></i>
							<i class="fas fa-star-half-alt"></i>
							<i class="fas fa-star-half-alt"></i>
						</div>
					</div>
				</a>

			</div>

		</div>

	</section>

	<!-- SUBJECT ENDS -->

	<!-- DEAL STARTS  -->

	<section class="deal">

		<div class="content">
			<h3>오늘의 할인 과목</h3>
			<h1>50% 할인</h1>
			<p>누구나 쉽게 배울 수 있는 Python 강의!</p>
			<a href="#" class="btn">수강하기</a>
		</div>

		<div class="image">
			<img src="image/deal-img.jpg" alt="할인 강좌">
		</div>

	</section>

	<!-- DEAL ENDS -->

	<!-- REVIEWS STARTS -->

	<section class="reviews" id="reviews">

		<h1 class="heading">
			<span>수강 후기</span>
		</h1>

		<div class="swiper reviews-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<img src="image/pic-1.png" alt="수강생 1">
					
					<h3>전 창민</h3>
					<p>어려운 점도 많았지만 찾아보고 해결할 수 있는 능력이 향상되는 시간이어서 좋았습니다.</p>
					
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-2.png" alt="수강생 2">
					
					<h3>서 완석</h3>
					<p>게시판을 구상하면서 저번에 한 번 접해본 내용이었지만 직접 원하는대로 구성하려니 어려웠지만 
						결국 해내서	뿌듯했습니다.</p>
						
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-3.png" alt="수강생 3">
					
					<h3>이 혜미</h3>
					<p>많은 시간을 할애하면서 아쉬운 점도 많았지만 완성본을 보니 뿌듯함이 더 컸고 다음에는 저만의 포트폴리오 
						웹을 만들어보고 싶다는 생각이 들었습니다.</p>
						
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
				
				<div class="swiper-slide box">
					<img src="image/pic-4.jpg" alt="수강생 4">
					
					<h3>정 영진</h3>
					<p>Ajax를 직접 찾아보면서 적용시켜보니 시간이 많이 걸렸지만 오류가 하나 둘 씩 사라지면서 
						작동이 되었을 때는 큰 뿌듯함을 느꼈습니다.</p>
						
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-5.jpg" alt="수강생 5">
					
					<h3>한 광진</h3>
					<p>서로의 막힌 코드를 같이 분석하면서 해결해나가니 실력이 향상되는 것 같았습니다.</p>
					
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>

				<div class="swiper-slide box">
					<img src="image/pic-6.png" alt="수강생 6">
					
					<h3>이 재승</h3>
					<p>똑같은 웹페이지이더라도 구성되는 프로그래밍 언어는 다양하다는 것을 느꼈습니다.</p>
					
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>

			</div>

		</div>

	</section>

	<!-- REVIEWS ENDS -->

	<!-- EVENTS STARTS -->

	<section class="events" id="events">

		<h1 class="heading">
			<span>활동</span>
		</h1>

		<div class="swiper events-slider">

			<div class="swiper-wrapper">

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-1.jpg" alt="이벤트 1">
					</div>
					
					<div class="content">
						<h3>교재 나눔 이벤트</h3>
						<p>다양한 중고 교재들을 나눠드려요!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-2.jpg" alt="이벤트 2">
					</div>
					
					<div class="content">
						<h3>수강 열정 이벤트</h3>
						<p>이 수업만큼은 본인이 최고!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-3.jpg" alt="이벤트 3">
					</div>
					
					<div class="content">
						<h3>정보 나눔 이벤트</h3>
						<p>다양하고 유용한 정보들을 나눠드려요!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-4.jpg" alt="이벤트 4">
					</div>
					
					<div class="content">
						<h3>수강 일지 이벤트</h3>
						<p>본인 만의 공부 비법 대 방출!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

				<div class="swiper-slide box">
					<div class="image">
						<img src="image/blog-5.jpg" alt="이벤트 5">
					</div>
					
					<div class="content">
						<h3>수강생들 응원 이벤트</h3>
						<p>여러분들의 앞날을 응원하는 선배들의 메시지!!</p>
						<a href="#" class="btn">자세히 보기</a>
					</div>
				</div>

			</div>

		</div>

	</section>

	<!-- EVENTS ENDS -->

	<!-- FOOTER STARTS -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- FOOTER ENDS -->

	<!-- LOADER STARTS -->

	<div class="loader-container">
		<img src="image/loading-img.gif">
	</div>
	
	<!-- LOADER ENDS -->

	<!-- AJAX JS -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

	<!-- CUSTOM JS  -->
	<script src="${path}/js/ender.js"></script>

</body>
</html>