<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	String num = request.getParameter("num");
String name = request.getParameter("name");
%>
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
		<h1 class="heading">강좌 등록 화면</h1>
		<form action="${path}/classInsert.do" id="newClass" method="post">
			<table class='table'>

				<tr>
					<td class="ad_regist">강좌</td>
					<td class="in_regist"><input type="text" id="c_name"
						name="c_name" /></td>
				</tr>
				<tr>
					<td class="ad_regist">강사</td>
					<td class="in_regist"><input type="text" id="c_tr" name="c_tr" /></td>
				</tr>
				<tr>
					<td class="ad_regist">금액</td>
					<td class="in_regist"><input type="text" id="c_price"
						name="c_price" /></td>
				</tr>
				<tr>
					<td class="ad_regist">강좌 수</td>
					<td class="in_regist"><input type="text" id="c_content"
						name="c_content" /></td>
				</tr>
				<tr>
					<td class="ad_regist">정보</td>
					<td class="in_regist"><input type="text" id="c_info"
						name="c_info" /></td>
				</tr>
				<tr>
					<td class="ad_regist">교재<br> <input type="button"
						id="sel_book" value="선택"
						onclick="location.href='${path}/bookList.do'" class="sel_book"></td>

					<td><input type="text" value="<%=name%>" name="b_name"
						disabled class="book_name"> <input type="hidden"
						id="b_num" value="<%=num%>" name="b_num"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="등록"
						class="btn btn-success" id="regiform" /> <input type="button"
						value="취소" onclick="location.href='${path}/classList.do'"
						class="btn btn-danger" /></td>
				</tr>
			</table>

		</form>
	</div>

	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->

	<script src="${path}/js/sweetalert2.all.min.js"></script>
	<script src="${path}/js/class.js"></script>
</body>
</html>