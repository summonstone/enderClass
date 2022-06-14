<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>칭찬해요!</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="shortcut icon" type="image/png" href="notes.png" />
<link rel="stylesheet" href="${path}/css/note.css">
</head>
<body>
	<div id="modal">
		<div id="inner_modal">
			<textarea placeholder="Note..." id="user_input" maxlength="160"></textarea>
			<i class="far fa-times-circle" id="hide"></i>
		</div>
	</div>

	<main>

		<header>
			<div class="container">
				<div id="header">
					<h1>
						<a href="${path}/ender.jsp"><i class="fas fa-sticky-note"></i>
						</a>칭찬의 한마디!
					</h1>
					<button id="add_note">작성하기</button>
				</div>
			</div>
		</header>

		<section>
			<div class="container">
				<div id="all_notes"></div>
			</div>
		</section>

	</main>

	<script src="${path}/js/note.js"></script>
</body>
</html>