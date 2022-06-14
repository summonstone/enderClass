<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>ENDER</title>


<!-- === Custom CSS === -->
<link rel="stylesheet" href="${path}/css/professor.css" />

<!-- === Fontawesome CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- === TweenMax CDN -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.2/TweenMax.min.js"></script>


</head>
<body>

	<!-- Container -->
	<div class="container" data-0="transform:translateX(0%);"
		data-1000="transform:translateX(-200%);">

		<!-- Section One -->


		<!--  OVERLAY
      ========================= -->
		<section>
			<div class="overlay">
				<h1>ENDER</h1>
				<span>CODING LIFE</span>
			</div>
			<div class="content">
				<!-- WRAPPER
      ======================== -->
				<div class="wrapper1">
					<main class="left_menu">
						<section class="brand">
							<div class="logo">
								<div class="logo_circle"></div>
							</div>
							<div class="logo_name">ENDER</div>
						</section>

						<!-- SOCIAL-ICONS
      ========================= -->
						<section class="social_content">
							<ul class="social_icons_list">
								<li class="social_icons_list_item active"><i
									class="fa fa-facebook icon active"></i></li>
								<li class="social_icons_list_item"><i
									class="fa fa-twitter icon"></i></li>
								<li class="social_icons_list_item"><i
									class="fa fa-linkedin icon"></i></li>
							</ul>
						</section>
					</main>

					<!-- NAV
      ========================= -->
					<main class="nav">
						<section class="nav__content">
							<div class="search">
								<!-- seach - icons -->
								<button>
									<i class="fa fa-search search_icon"></i>
								</button>
							</div>
							<div class="nav_links_content">
								<ul class="nav_link_list">
									<li><a href="${path}/ender.jsp" class="nav_link active">home</a></li>
									<li><a class="nav_link">career</a></li>
									<li><a class="nav_link">skills</a></li>
									<li><a class="nav_link">comment</a></li>
									<li><a class="nav_link">contact</a></li>
								</ul>
							</div>
						</section>
					</main>

					<!-- LARGER TEXT
      ========================= -->
					<main class="larger_text_content">
						<div class="large_text">
							<h1>
								Back <br /> End
							</h1>
						</div>
						<div class="red_box">
							<div class="red_box_content">
								<span>01</span> <span class="fashion_text">JAVA.</span>
								<div class="see_photos">scroll</div>
							</div>
						</div>
					</main>

					<!-- DESC CONTENT
      ========================= -->
					<main class="desc_content">
						<p>
							JAVA 교수님 <br><span>Mr. KIM</span>
						</p>
						<div class="weddings">
							<span>01.</span> <span>JAVA란?</span>
						</div>
						<div class="modelings">
							<span>02.</span> <span>실습</span>
						</div>
						<div class="fashion_text">성장</div>
						<div class="slide">
							<span>01</span><span>/03</span>
						</div>
					</main>
				</div>
			</div>
		</section>


		<!-- Section Two -->
		<section>
			<div class="content">
				<!-- WRAPPER
      ======================== -->
				<div class="wrapper2">
					<main class="left_menu">
						<section class="brand">
							<div class="logo">
								<div class="logo_circle"></div>
							</div>
							<div class="logo_name">ENDER</div>
						</section>

						<!-- SOCIAL-ICONS
      ========================= -->
						<section class="social_content">
							<ul class="social_icons_list">
								<li class="social_icons_list_item active"><i
									class="fa fa-facebook icon active"></i></li>
								<li class="social_icons_list_item"><i
									class="fa fa-twitter icon"></i></li>
								<li class="social_icons_list_item"><i
									class="fa fa-linkedin icon"></i></li>
							</ul>
						</section>
					</main>

					<!-- NAV
      ========================= -->
					<main class="nav">
						<section class="nav__content">
							<div class="search">
								<!-- seach - icons -->
								<button>
									<i class="fa fa-search search_icon"></i>
								</button>
							</div>
							<div class="nav_links_content">
								<ul class="nav_link_list">
									<li><a href="${path}/ender.jsp" class="nav_link active">home</a></li>
									<li><a class="nav_link">career</a></li>
									<li><a class="nav_link">skills</a></li>
									<li><a class="nav_link">comment</a></li>
									<li><a class="nav_link">contact</a></li>
								</ul>
							</div>
						</section>
					</main>

					<!-- LARGER TEXT
      ========================= -->
					<main class="larger_text_content">
						<div class="large_text">
							<h1>
								Back <br /> End
							</h1>
						</div>
						<div class="red_box">
							<div class="red_box_content">
								<span>02</span> <span class="fashion_text">PYTHON.</span>
								<div class="see_photos">scroll</div>
							</div>
						</div>
					</main>

					<!-- DESC CONTENT
      ========================= -->
					<main class="desc_content">
						<p>
							PYTHON 교수님<br><span>Mr. JEON</span>
						</p>
						<div class="weddings">
							<span>01.</span> <span>PYTHON이란?</span>
						</div>
						<div class="modelings">
							<span>02.</span> <span>실습</span>
						</div>
						<div class="fashion_text">성장</div>
						<div class="slide">
							<span>02</span><span>/03</span>
						</div>
					</main>
				</div>
			</div>
		</section>

		<!-- Section Three -->
		<section>
			<div class="content">
				<!-- WRAPPER
      ======================== -->
				<div class="wrapper3">
					<main class="left_menu">
						<section class="brand">
							<div class="logo">
								<div class="logo_circle"></div>
							</div>
							<div class="logo_name">ENDER</div>
						</section>

						<!-- SOCIAL-ICONS
      ========================= -->
						<section class="social_content">
							<ul class="social_icons_list">
								<li class="social_icons_list_item active"><i
									class="fa fa-facebook icon active"></i></li>
								<li class="social_icons_list_item"><i
									class="fa fa-twitter icon"></i></li>
								<li class="social_icons_list_item"><i
									class="fa fa-linkedin icon"></i></li>
							</ul>
						</section>
					</main>

					<!-- NAV
      ========================= -->
					<main class="nav">
						<section class="nav__content">
							<div class="search">
								<!-- seach - icons -->
								<button>
									<i class="fa fa-search search_icon"></i>
								</button>
							</div>
							<div class="nav_links_content">
								<ul class="nav_link_list">
									<li><a href="${path}/ender.jsp" class="nav_link active">home</a></li>
									<li><a class="nav_link">career</a></li>
									<li><a class="nav_link">skills</a></li>
									<li><a class="nav_link">comment</a></li>
									<li><a class="nav_link">contact</a></li>
								</ul>
							</div>
						</section>
					</main>

					<!-- LARGER TEXT
      ========================= -->
					<main class="larger_text_content">
						<div class="large_text">
							<h1>
								Back <br /> End
							</h1>
						</div>
						<div class="red_box">
							<div class="red_box_content">
								<span>03</span> <span class="fashion_text">SPRING.</span>
								<div class="see_photos">scroll</div>
							</div>
						</div>
					</main>

					<!-- DESC CONTENT
      ========================= -->
					<main class="desc_content">
						<p>
							SPRING 교수님 <br><span>Ms. RYU</span>
						</p>
						<div class="weddings">
							<span>01.</span> <span>SPRING이란?</span>
						</div>
						<div class="modelings">
							<span>02.</span> <span>실습</span>
						</div>
						<div class="fashion_text">성장</div>
						<div class="slide">
							<span>03</span><span>/03</span>
						</div>
					</main>
				</div>
			</div>
		</section>
	</div>
	<!-- Container End -->

</body>

<!-- Scroll JS -->
<script type="text/javascript" src="${path}/js/professor.js"></script>
<script src="${path}/js/gsap.js" defer></script>
<script type="text/javascript">
	var s = skrollr.init();
</script>
</html>