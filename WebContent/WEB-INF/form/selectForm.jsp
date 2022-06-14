<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href="${path}/css/selectForm.css">

<!-- 아이디/비번 찾기 선택 FORM -->

<div class="select-form-container" id="select-open">

	<div id="close-select-btn" class="fas fa-times"></div>

	<form id="select-form">
		<h3>찾을 항목 선택</h3>
		<div class="select-container">

			<div class="container">
				<div class="buttons">
					<a href="#" class="sbtn btn-id" id="searchID">아이디</a>
					<a href="#" class="sbtn btn-pw" id="searchPW">비밀번호</a>
				</div>
			</div>
		</div>
	</form>

</div>