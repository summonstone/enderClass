<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>프로필</title>

<!-- FONT AWESOME CDN  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<!-- CUSTOM CSS -->
<link rel="stylesheet" href="${path}/css/profile.css" />


</head>

<body>

	<div class="card" data-state="#about">

		<div class="card-header">
			<img class="card-avatar" src="${path}/image/pic-1.png" />
			<h1 class="card-fullname">${sessionScope.userName}</h1>

			<c:if test="${sessionScope.userGrade == 1}">
				<h2 class="card-jobtitle">수강생</h2>
			</c:if>

			<c:if test="${sessionScope.userGrade == 3}">
				<h2 class="card-jobtitle">관리자</h2>
			</c:if>
		</div>

		<div class="card-main">
			<div class="card-section is-active" id="about">

				<div class="card-content">
					<div class="card-subtitle">소개</div>
					<p class="card-desc">안녕하세요! 프로그래머가 되고 싶어서 열심히 수업을 듣고 있습니다.</p>
				</div>

				<div class="card-social">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-youtube-play"></i></a> <a href="#"><i
						class="fa fa-linkedin-square"></i></a>
				</div>
			</div>

			<div class="card-section" id="experience">
				<div class="card-content">

					<div class="card-subtitle">월별 학습 계획</div>
					<div class="card-timeline">
						<div class="card-item" data-year="22.02">
							<div class="card-item-title">
								HTML 수강 <span>기초</span>
							</div>

							<div class="card-item-desc">웹페이지의 틀을 담당하는 HTML 공부하기.</div>
						</div>

						<div class="card-item" data-year="22.03">
							<div class="card-item-title">
								CSS 수강 <span>기초</span>
							</div>

							<div class="card-item-desc">웹페이지의 살을 담당하는 CSS 공부하기.</div>
						</div>

						<div class="card-item" data-year="22.04">
							<div class="card-item-title">
								JS 수강 <span>기초</span>
							</div>

							<div class="card-item-desc">웹페이지를 동적 기능을 부여하는 JS 공부하기.</div>
						</div>

						<div class="card-item" data-year="22.05">
							<div class="card-item-title">
								JAVA 수강 <span>기초</span>
							</div>

							<div class="card-item-desc">로그인, 회원가입 등 서버와 웹페이지를 연결시켜보기.</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card-section" id="setting">

				<form action="${path}/userUpdate.do" id="update-form"
					class="card-content" method="post">
					<div class="card-subtitle">프로필 수정</div>
					<div class="card-contact-wrapper">

						<div class="card-contact">
							<i class="fa fa-user" aria-hidden="true"></i> <input type="email"
								name="userID" id="userID" value="${sessionScope.userID}"
								placeholder="${sessionScope.userID}" readonly="readonly">
						</div>

						<div class="card-contact">
							<i class="fa fa-unlock-alt" aria-hidden="true"></i> <input
								type="text" name="userPW" id="userPW" placeholder="비밀번호">
						</div>

						<div class="card-contact">
							<i class="fa fa-phone" aria-hidden="true"></i> <input type="text"
								name="userPhone" id="userPhone" placeholder="연락처">
						</div>

						<button id="updateSubmit" class="contact-me">수정하기</button>
						<button id="leave-btn" class="leave-btn">탈퇴하기</button>
					</div>
				</form>

			</div>

			<div class="card-buttons">
				<button data-section="#about" class="is-active">소개</button>
				<button data-section="#experience">계획</button>
				<button data-section="#setting">수정</button>
				<button onclick="location.href='${path}/ender.jsp'">돌아가기</button>
			</div>
		</div>
	</div>

	<!-- JQUERY -->
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

	<!-- CUSTOM JS -->
	<script type="text/javascript" src="${path}/js/profile.js"></script>

	<script src="${path}/js/sweetalert2.all.min.js"></script>

	<script type="text/javascript">
	const leave = document.getElementById('leave-btn');
	leave.addEventListener('click', function () {
		Swal.fire({
			   title: '정말로 탈퇴하시겠습니까?',
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
			   
			      Swal.fire('탈퇴가 완료되었습니다.', '그 동안 감사했습니다.', 'success').then(result => {
					   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
						      location.href='${path}/userDelete.do';
						   }
			   })
			   
			}
			})
	})
	</script>

</body>
</html>
