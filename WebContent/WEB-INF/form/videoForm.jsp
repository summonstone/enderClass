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
<title>비디오</title>

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/video.css" />
</head>
<body>

	<div class="container">


		<div class="main-video-container">
			<iframe class="main-video" width="735" height="415"
				src="https://www.youtube.com/embed/R1Aqwq61Nlg?version-2&autoplay=1&mute=1&loop=1"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<h3 class="main-vid-title">JAVA 기초 강의</h3>
			<a href="${path}/ender.jsp">뒤로</a>
		</div>

		<div class="video-list-container">
			<div class="list active">
				<iframe class="list-video" width="100" height="56"
					src="https://www.youtube.com/embed/R1Aqwq61Nlg"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 class="list-title">JAVA 기초 강의</h3>
			</div>

			<div class="list">
				<iframe class="list-video" width="100" height="56"
					src="https://www.youtube.com/embed/yZzUxEp97Ho"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 class="list-title">Spring Boot 기초 강의</h3>
			</div>

			<div class="list">
				<iframe class="list-video" width="100" height="56"
					src="https://www.youtube.com/embed/nahwuaXmgt8"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 class="list-title">React 기초 강의</h3>
			</div>

			<div class="list">
				<iframe class="list-video" width="100" height="56"
					src="https://www.youtube.com/embed/pdWQvfQBSGg"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 class="list-title">Next 기초 강의</h3>
			</div>

			<div class="list">
				<iframe class="list-video" width="100" height="56"
					src="https://www.youtube.com/embed/toLDNN4FQv0"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 class="list-title">Node 기초 강의</h3>
			</div>

			<div class="list">
				<iframe class="list-video" width="100" height="56"
					src="https://www.youtube.com/embed/-tVaahsXpwk"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 class="list-title">Vue 기초 강의</h3>
			</div>

			<div class="list">
				<iframe class="list-video" width="100" height="56"
					src="https://www.youtube.com/embed/9WctwW_Pe1o"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 class="list-title">Django 기초 강의</h3>
			</div>

		</div>
	</div>

	<!-- custom js file link  -->
	<script src="${path}/js/video.js?ver=1"></script>
</body>
</html>
