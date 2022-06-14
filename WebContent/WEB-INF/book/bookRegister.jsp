<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ender Online Class</title>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<link rel="stylesheet" href="${path}/css/table.css">

</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<div class="regi_container">
		<h1 class="heading">교재 등록</h1>
		<form action="${path}/bookInsert.do" id="newBook" method="post">
			<table class='table'>

				<tr>
					<td class="ad_regist">이름</td>
					<td class="in_regist"><input type="text" id="b_name"
						name="b_name" /></td>
				</tr>
				<tr>
					<td class="ad_regist">출판사</td>
					<td class="in_regist"><input type="text" id="b_pub"
						name="b_pub" /></td>
				</tr>
				<tr>
					<td class="ad_regist">정보</td>
					<td class="in_regist"><input type="text" id="b_info"
						name="b_info" /></td>
				</tr>
				<tr>
					<td class="ad_regist">금액</td>
					<td class="in_regist"><input type="text" id="b_price"
						name="b_price" /></td>
				</tr>
				<tr>
					<td class="ad_regist">이미지</td>
					<td class="in_regist"><input type="file" id="b_image"
						accept="image/jpg" name="b_image" /></td>
				</tr>

			</table>

			<input type="submit" id="book_sub" value="등록" class="btn btn-success" />
			<input type="button" value="취소" class="btn btn-danger"
				onclick="location.href='${path}/bookList.do'" />
		</form>
	</div>


	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->

	<script src="${path}/js/sweetalert2.all.min.js"></script>

	<script src="${path}/js/book.js"></script>
</body>
</html>