<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ender.boardmodel.BoardVO"%>
<%@page import="com.ender.boardmodel.BoardDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nboardUpdate</title>
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
			<strong>[수정하기]</strong>
		</div>
		<div class="board_write_wrap">
			<form action="${path}/boardUpdate.do" id="UpdateForm" name="Update"
				method="post">
				<input type="hidden" name="bo_num" value="${vo.bo_num}" /> <input
					type="hidden" name="bo_id" value="${userName}" />
				<div class="board_write">
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd>
								<input type="text" id="bo_subject" name="bo_subject"
									value="${vo.bo_subject}" />
							</dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt>글쓴이</dt>
							<dd>${vo.bo_id}</dd>
						</dl>
						<dl>
							<dt>비밀번호</dt>
							<dd>
								<input type="password" placeholder="비밀번호 입력" value="1234">
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea rows="10" cols="50" id="bo_content" name="bo_content">${vo.bo_content}</textarea>
					</div>
				</div>
				<div class="bt_wrap">
					<input type="button" class="do-btn" id="updateSubmit" value="수정">
					<input type="button" class="do-btn" value="글 목록"
						onclick="location.href='${path}/boardList.do'" />
				</div>
			</form>
		</div>
	</div>



	<c:import url="/WEB-INF/footer.jsp" />

	<script type="text/javascript">
	const update = document.getElementById('updateSubmit');
	update.addEventListener('click', function () {
		if (bo_subject.value != "") {
			if (bo_content.value != "") {
				Swal.fire({
					position : 'center',
					icon : 'success',
					title : '수정이 완료되었습니다.',
					showConfirmButton : true,
				}).then((result) => {
					if (result.isConfirmed) {
						if (bo_subject.value != "") {
							if (bo_content.value != "") {
								const form = document.getElementById('UpdateForm');
								form.submit();
							}
						}
					}
				})
			}
		}
	})
	</script>


</body>

</html>