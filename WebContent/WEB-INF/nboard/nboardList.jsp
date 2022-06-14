<%@page import="com.ender.usermodel.UserDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.ender.boardmodel.BoardVO"%>
<%@page import="com.ender.boardmodel.BoardDAO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<%
	String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
UserDTO dto = new UserDTO();
%>

<script type="text/javascript">
	function checkForm() {	
		if (${userID==null}) {
			Swal.fire({
				  icon: 'error',
				  title: '로그인 에러',
				  text: '글쓰기는 로그인 후 이용 가능합니다!',
				  footer: '<a href="${path}/ender.jsp">회원가입하러 가시겠습니까?</a>'
				})
			return false;
		}
		location.href='${path}/boardInsertForm.do'
	}
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList JSP</title>

<script src="${path}/js/sweetalert2.all.min.js"></script>

<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<link rel="stylesheet" href="${path}/css/board.css?ver=2">

</head>
<body>

	<c:import url="/WEB-INF/header.jsp" />

	<div class="board_wrap">
		<div class="board_title">
			<strong>[게시판]</strong>
			<p>여러분들의 의견을 작성해주세요.</p>
		</div>
		<div class="search_board">
			<form action="boardSearch.do" method="post">
				<select name="part" class="part">
					<option value="bo_subject">제목</option>
					<option value="bo_content">내용</option>
					<option value="bo_id">작성자</option>
				</select>
				<div class="search-box">
					<input type="text" class="search-text" name="searchData"
						placeholder="검색어를 입력해주세요." required="required">
					<button class="search-btn">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</form>
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
				<a href="#" class="bt first"><</a>
				<a href="#" class="bt prev"><<</a>
				<a href="#" class="num on">1</a>
				<a href="#" class="num">2</a>
				<a href="#" class="num">3</a>
				<a href="#" class="num">4</a>
				<a href="#" class="num">5</a>
				<a href="#" class="bt next">></a>
				<a href="#" class="bt last">>></a>
			</div>

			<div class="bt_wrap">
				<input type="button" value="글쓰기" class="do-btn"
					onclick="checkForm(); return false;" />
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/footer.jsp" />

</body>
</html>