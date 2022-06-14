<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ender.boardmodel.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardSearchList</title>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<link rel="stylesheet" href="${path}/css/board.css">

</head>
<body>
	<c:import url="/WEB-INF/header.jsp" />

	<div class="board_wrap">
		<div class="board_title">
			<strong>[검색 결과]</strong>
			<p>검색 된 내용은 총 건입니다.</p>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">작성자</div>
					<div class="date">작성일</div>
					<div class="count">조회수</div>
				</div>
				<c:forEach var="vo" items="${list}">

					<div>
						<div class="num">${vo.bo_num}</div>
						<div class="title">
							<a href='${path}/boardDetail.do?bo_num=${vo.bo_num}'>${vo.bo_subject}</a>
						</div>
						<div class="writer">${vo.bo_id}</div>
						<div class="date">${vo.bo_date}</div>
						<div class="count">${vo.bo_readcount}</div>
					</div>
				</c:forEach>

			</div>

			<div class="board_page">
				<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
				<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
					href="#" class="num">3</a> <a href="#" class="num">4</a> <a
					href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
					href="#" class="bt last">>></a>
			</div>



			<div class="bt_wrap">
				<input type="button" value="글쓰기" class="do-btn"
					onclick="location.href='${path}/boardInsertForm.do'" /> <input
					type="button" value="글 목록" class="do-btn"
					onclick="location.href='${path}/boardList.do'" />
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/footer.jsp" />
</body>
</html>