<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<script src="${path}/js/sweetalert2.all.min.js"></script>

<!-- 아이디 찾기 FORM -->

<div class="searchID-form-container" id="search-open">

	<div id="close-searchID-btn" class="fas fa-times"></div>

	<form id="searchID-form" method="post" accept-charset="utf-8">
		<h3>아이디 찾기</h3>
		<span>이름</span>
		<input type="text" name="searchName" class="box" placeholder="이름을 입력해주세요." id="searchName">
		
		<span>연락처</span>
		<input type="text" name="searchPhone" class="box" placeholder="숫자만 작성해주세요." id="searchPhone" >

		<div>
			<h3 id="searchName_text"></h3>
		</div>
		<div>
			<h3 id="resultID_text"></h3>
		</div>

		<button type="button" class="findBTN" id="searchID-Btn">찾기</button>
		<button type="button" class="backBTN" id="backID-btn">뒤로</button>
	</form>

</div>

<script type="text/javascript">
	$('#searchID-Btn').click(
			function() {

				var queryString = $("form[id=searchID-form]").serialize();

				$.ajax({
					url : "./searchID.do",
					type : 'GET',
					data : queryString,
					dataType : "json",
					success : function(result) {
						if (result.status == "ok") {
							$("#searchName_text").text(
									result.userName + "님의 아이디는");
							$("#resultID_text").text(result.realID);
						} else if (result.status == "not-ok") {
							$("#searchName_text").text("");
							$("#resultID_text").text("다시 한번 정보를 확인해주세요");
						} else if (result.status == "no-info") {
							$("#searchName_text").text("등록된 아이디가 없습니다");
							$("#resultID_text").text("");
						} 
					},
					error : function() {
						Swal.fire({
							  icon: 'error',
							  title: '미입력',
							  text: '이름을 입력해주세요!',
							})
					}
				});
			});
</script>