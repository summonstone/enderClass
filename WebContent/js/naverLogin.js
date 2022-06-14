  /* NAVER JAVASCRIPT 설정 정보 및 초기화 */
  window.name = 'opener';
	var naverLogin = new naver.LoginWithNaverId({
		clientId : "Rod_vU6TBIlnj2ml1CYk",
		callbackUrl : "http://"
				+ window.location.hostname
				+ ((location.port == "" || location.port == undefined) ? ""	: ":" + location.port)
        + "/enderClass/ender.jsp",
		isPopup : true,
		loginButton : {
			color : "green",
			type : 3,
			height : 60
		}
	});

	/* 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
	naverLogin.init();

	/* 임의의 링크를 설정해줄 필요가 있는 경우 */
	$("#gnbLogin").attr("href", naverLogin.generateAuthorizeUrl());

	/* 현재 로그인 상태를 확인 */
	window.addEventListener('load', function() {
		naverLogin.getLoginStatus(function(status) {
			if (status) {
				/* 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
				setLoginStatus();
			} else {
				$("#gnbLogin").css("visibility", "hidden");
			}
		});
	});

	/* 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
	function setLoginStatus() {
		var profileImage = naverLogin.user.getProfileImage();
		var name = naverLogin.user.getName();
		var imageViewer = '';
		if (profileImage) {
			imageViewer += '<br><br><img src="' + profileImage + '" height=50 /> <p>';
		}
		$("#name_text").html(imageViewer + name + '님 반갑습니다.</p>');
		$("#login-btn").css("visibility", "hidden");
		$("#pr").attr("href", "${path}/userProfile.do");
		$("#gnbLogin").html("Logout");
		$("#gnbLogin").attr("href", "#");
    
		/* (7) 로그아웃 버튼을 설정하고 동작을 정의합니다. */
		$("#gnbLogin").click(function(e) {
			e.preventDefault();
			naverLogin.logout();
			location.replace('/enderClass/ender.jsp');
		});
	}