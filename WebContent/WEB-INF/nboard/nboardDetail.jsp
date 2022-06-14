<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ender.boardmodel.BoardVO"%>
<%@page import="com.ender.boardmodel.BoardDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>Board Detail</title>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">

<link rel="stylesheet" href="${path}/css/board.css?ver=1">

<script type="text/javascript">
	function fnUpdate(bo_id) {
		location.href = "boardUpdateForm.do?bo_num=" + ${vo.bo_num};
	}
</script>
</head>
<body>
	<c:import url="/WEB-INF/header.jsp" />

	<div class="board_wrap">
		<input type='hidden' name='bo_num' value='${vo.bo_num}' /> <input
			type="hidden" name="bo_id" value="${userName}" />
		<div class="board_title">
			<strong>[상세보기]</strong>
		</div>
		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title">${vo.bo_subject}</div>
				<div class="info">
					<dl>
						<dt>번호</dt>
						<dd>${vo.bo_num}</dd>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>${vo.bo_id}</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>2021.1.16</dd>
					</dl>
					<dl>
						<dt>조회</dt>
						<dd>${vo.bo_readcount}</dd>
					</dl>
				</div>
				<div class="cont">${vo.bo_content}</div>
			</div>
			<div class="bt_wrap">
				<input type="button" value="리스트"
					onclick="location.href='${path}/boardList.do'" class='do-btn' />
				<c:if test="${vo.bo_id==userName or userGrade==3}">
					<input type='button' value='수정' class='do-btn'
						onclick="fnUpdate('${vo.bo_id}')" />
					<input type='button' value='삭제' class='do-btn' id="del" />
				</c:if>

			</div>

		</div>
	</div>

	<c:import url="/WEB-INF/footer.jsp" />

	<script type="text/javascript">
	const del = document.getElementById('del');
	del.addEventListener('click', function () {
		Swal.fire({
			   title: '정말로 삭제하시겠습니까?',
			   text: '다시 되돌릴 수 없습니다. 신중하세요.',
			   icon: 'warning',
			   
			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
			   confirmButtonText: '승인', // confirm 버튼 텍스트 지정
			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
			   
			   reverseButtons: true, // 버튼 순서 거꾸로
			   
			}).then(result => {
			   // 만약 Promise리턴을 받으면,
			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
			   
			      Swal.fire('삭제가 완료되었습니다.', '다음에도 좋은 글 부탁드리겠습니다.', 'success').then(result => {
					   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
						   location.href = "${path}/boardDelete.do?bo_num=" + ${vo.bo_num};
						   }
			   })
			   
			}
			})
	})
	</script>
</body>
</html>