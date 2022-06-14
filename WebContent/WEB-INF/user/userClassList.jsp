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
function addFunction(c_num,b_num){
	if(${sessionScope.userID != null}) {
		Swal.fire({
			  position: 'center',
			  icon: 'success',
			  title: '주문해주셔서 감사합니다.',
			  showConfirmButton: true,
			}).then(result => {
	document.location.href="${path}/userCartInsert.do?c_num="+c_num+"&&b_num="+b_num;
			})
		
	}
else {
			Swal.fire({
				  icon: 'error',
				  title: '로그인 문제',
				  text: '로그인 후 이용 가능합니다!',
				})
	} 
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
					<th>주문</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="vo" items="${userclasslist}">
					<tr>
						<td data-label="강좌"><a
							href='${path}/classContent.do?c_num=${vo.num}'>${vo.name}</a></td>
						<td data-label="강사">${vo.tr}</td>
						<td data-label="교재 링크"><a
							href='${path}/bookContent.do?b_num=${vo.b_num}'>${vo.b_name}</a></td>
						<td data-label="강좌 금액">${vo.price}</td>
						<td data-label="강좌 수">${vo.content}</td>
						<td data-label="주문"><input type="button" id="or-btn"
							value="주문" class="btn btn-danger"
							onclick="addFunction(${vo.num},${vo.b_num})" /></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>


	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->

	<script src="${path}/js/sweetalert2.all.min.js"></script>

</body>
</html>