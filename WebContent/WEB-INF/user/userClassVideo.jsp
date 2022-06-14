<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${path}/css/userClassVideo.css">
<title>강의</title>

</head>
<body>
	<section>
		<h2 class="title"></h2>
		<div class="container">
			<div id="video_player">
				<video controls id="main-Video" src=""></video>
			</div>
			<div class="playlistBx">
				<div class="header">
					<div class="row">
						<span class="AllLessons"></span>
					</div>
				</div>
				<ul class="playlist" id="playlist">
				</ul>
			</div>
			<div>
				<button onclick="location.href='${path}/userClassDetail.do'"
					class="video_back">뒤로가기</button>
			</div>
		</div>
	</section>
	<script src="${path}/js/userClassVideoList.js"></script>
	<script src="${path}/js/userClassVideo.js"></script>
</body>
</html>