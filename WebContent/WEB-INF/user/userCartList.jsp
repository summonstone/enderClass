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
<%
	int num = 0;
int aaa = 100;
%>

<script type="text/javascript">
	var a=0;
	var total = 0;
	function nightlight(num,aaa) {
		var result = parseInt(document.getElementById(aaa).value);
		var checked = document.getElementById(num).checked;
		if (checked) {
			total += result;
		} else {
			total -= result;
			if(total<=0){
				total=0;
			}
		}
		document.getElementById("sum").value = total+"원";
	}
	function getPost(mode) { 
		var theForm = document.frmSubmit; 
		var queryString = $("form[id=frm]").serialize();
		
		if(mode == "01") {
 			theForm.method = "post"; 
 			theForm.action = "userOrderInsert.do"; 
			} else if(mode == "02") {
theForm.method = "post"; 
theForm.action = "userCartDelete.do" } 
		theForm.submit(); 
		}

	
</script>
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<div class="table-container">
		<h1 class="heading">주문</h1>
		<form name=frmSubmit id="frm" class="frm">
			<table class='table'>
				<thead>
					<tr>
						<th>강좌</th>
						<th>강사</th>
						<th>강좌 금액</th>
						<th>교재</th>
						<th>교재 이름</th>
						<th>교재 금액</th>
						<th>총 금액</th>
						<th>선택</th>
					</tr>
				</thead>

				<c:forEach var="vo" items="${usercartlist}">
					<tbody>
						<tr>
							<td data-label="강좌">${vo.c_name}</td>
							<td data-label="강사">${vo.c_tr}</td>
							<td data-label="강좌 금액">${vo.c_price}</td>
							<td data-label="교재"><img alt="" src="./image/${vo.b_image}"
								width="40" height="50"></td>
							<td data-label="교재 이름">${vo.b_name}</td>
							<td data-label="교재 금액">${vo.b_price}</td>
							<td data-label="총 금액"><input type="text" size="8"
								id="<%=aaa%>" value="${vo.c_price+vo.b_price}원"></td>
							<td><input type="hidden" name="b_num" value="${vo.b_num}">
								<input type="checkbox" id="<%=num%>" name="isCheck"
								value="${vo.c_num}" onClick="nightlight(<%=num%>,<%=aaa%>)"></td>
							<%
								num++;
							aaa++;
							%>
						</tr>
					</tbody>
				</c:forEach>
			</table>
			<div class="or-btn">
				<input type="button" value="주문" class="btn btn-danger"
					onClick="getPost('01')" /> <input type="button" value="삭제하기"
					class="btn btn-danger" onClick="getPost('02')">
			</div>
			<div class="won-text">
				<input id="sum" type="text" size="8" value="0원" readonly="readonly">
			</div>
		</form>


	</div>
	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>