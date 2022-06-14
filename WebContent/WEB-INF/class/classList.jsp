<%@page import="com.ender.model.ClassVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ender.model.ClassDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<link rel="stylesheet" href="${path}/css/table.css">

<meta charset="UTF-8">
<title>Ender Online Class</title>
<script type="text/javascript">
	function delFunction(num){
		location.href="${path}/classDelete.do?c_num="+num;	
	}
</script>
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->
	<div class="table-container">
		<h1 class="heading">강의 목록</h1>
		<table class='table'>
			<thead>
				<tr>
					<th>강좌</th>
					<th>강사</th>
					<th>교재 링크</th>
					<th>강좌 금액</th>
					<th>강좌 수</th>
					<th>삭제</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="vo" items="${classlist}">
					<tr>
						<td data-label="강좌"><a href='${path}/classContent.do?c_num=${vo.num}'>${vo.name}</a></td>
						<td data-label="강사">${vo.tr}</td>
						<td data-label="교재 링크"><a href='${path}/bookContent.do?b_num=${vo.b_num}'>${vo.b_name}</a></td>
						<td data-label="강좌 금액">${vo.price}</td>
						<td data-label="강좌 수">${vo.content}</td>
						<td data-label="삭제"><input type="button" value="삭제" class="btn btn-danger"
							onclick="delFunction(${vo.num})" /></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>

	<input type="button" value="강좌등록" class="regist_LEC"
		onclick="location.href='${path}/classRegister.do'" />

	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>