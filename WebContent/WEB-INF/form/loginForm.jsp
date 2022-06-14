<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- NAVER API -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>

<!-- JQUERY -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- FONT AWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

<!-- 로그인 FORM  -->
<div class="login-form-container" id="login-open">

	<div id="close-login-btn" class="fas fa-times"></div>

	<form action="${path}/userLogin.do" id="login-form" method="post">
		<h3>로그인</h3>

		<div class="id-content">
			<div class="user">
				<div class="fa fa-user"></div>
			</div>
			<input type="email" name="userID" class="box"
				placeholder="이메일을 입력해주세요." id="userID">
		</div>

		<div class="pw-content">
			<div class="lock">
				<div class="fa fa-lock"></div>
			</div>
			<input type="password" name="userPW" class="box"
				placeholder="비밀번호를 입력해주세요." id="userPW"> <span
				class="show-hide"> <i class="fa fa-eye" id="show"></i>
			</span>
		</div>

		<div class="checkbox">
			<input type="checkbox" name="" id="remember-me"> <label
				for="remember-me">아이디 저장</label>
		</div>

		<button class="loginBtn" id="loginSubmit">로그인</button>

		<!-- 네이버 로그인 버튼 노출 영역 -->
		<div id="naverIdLogin">
			<a id="naverIdLogin_loginButton" href="#" role="button"> <img
				src="https://static.nid.naver.com/oauth/big_g.PNG"></a>
		</div>

		<p>
			가입 정보를 잊어버리셨습니까 ? <a href="#" id="select-btn">아이디/비밀번호 찾기</a>
		</p>

		<p>
			아직 회원이 아니십니까 ? <a href="#" id="regist-btn">회원가입</a>
		</p>

	</form>

</div>

<!-- NAVER JAVASCRIPT SDK -->
<script src="${path}/js/naveridlogin_js_sdk_2.0.2.js"></script>

<!-- NAVER JAVASCRIPT -->
<script src="${path}/js/naverLogin.js"></script>

<script src="${path}/js/sweetalert2.all.min.js"></script>

<!-- 로그인 실패 시 로그인 화면 보이게 하는 기능 -->
<script type="text/javascript">
var fail = <%=request.getParameter("fail")%>;
if (fail == 1) {
Swal.fire({
	  icon: 'error',
	  title: '비밀번호 문제',
	  text: '비밀번호를 다시 한번 확인해주세요!',
	}).then(result => {
	history.go(-1);
	})
} else if (fail == 2) {
	Swal.fire({
		  icon: 'error',
		  title: '아이디 문제',
		  text: '아이디를 다시 한번 확인해주세요!',
		}).then(result => {
		history.go(-1);
		})
}
</script>

<!-- 실험 -->
<script type="text/javascript">
	const pass_field = document.querySelector("#userPW");
	const show_btn = document.querySelector("#show");
	show_btn.addEventListener("click", function() {
		if (pass_field.type === "password") {
			pass_field.type = "text";
			show_btn.classList.add("hide");
		} else {
			pass_field.type = "password";
			show_btn.classList.remove("hide");
		}
	});
</script>
