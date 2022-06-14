<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>화상</title>

<link rel="stylesheet" href="${path}/css/online.css" />

<!-- === Fontawesome CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
	<div class="header">
		<nav>
			<img src="${path}/online_img/logo.png" class="logo" />
			<ul>
				<li><img src="${path}/online_img/live.png" class="active" /></li>
				<li><img src="${path}/online_img/video.png" /></li>
				<li><img src="${path}/online_img/message.png" /></li>
				<li><img src="${path}/online_img/notification.png" /></li>
				<li><img src="${path}/online_img/users.png" /></li>
				<li><img src="${path}/online_img/live.png" /></li>
			</ul>
		</nav>

		<div class="container">
			<div class="top-icons">
				<img src="${path}/online_img/search.png" /> <a
					href="${path}/ender.jsp"> <img
					src="${path}/online_img/menu.png" />
				</a>
			</div>

			<div class="row">
				<div class="col-1">
					<video src="${path}/video/online.mp4" autoplay="autoplay"
						muted="muted" class="host-img"></video>

					<div class="controls">
						<img src="${path}/online_img/chat.png" /> <img
							src="${path}/online_img/disconnect.png" /> <img
							src="${path}/online_img/call.png" class="call-icon" /> <img
							src="${path}/online_img/mic.png" /> <img
							src="${path}/online_img/cast.png" />
					</div>
				</div>
				<div class="col-2">
					<div class="joined">
						<p>참여자</p>
						<div>
							<img src="${path}/online_img/people-1.png" /> <img
								src="${path}/online_img/people-2.png" /> <img
								src="${path}/online_img/people-3.png" /> <img
								src="${path}/online_img/people-4.png" /> <img
								src="${path}/online_img/people-5.png" />
						</div>
					</div>

					<div class="invite">
						<p>초대하기</p>
						<div>
							<img src="${path}/online_img/user-1.png" /> <img
								src="${path}/online_img/user-2.png" /> <img
								src="${path}/online_img/user-3.png" /> <img
								src="${path}/online_img/user-4.png" /> <img
								src="${path}/online_img/user-5.png" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>