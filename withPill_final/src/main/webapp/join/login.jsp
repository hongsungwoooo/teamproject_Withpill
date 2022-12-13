<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <link rel="shortcut icon" href="/favicon/favicon.ico">
    <title>맞춤영양제 위드필</title>

    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="/assets/css/owl.css">
    <link rel="stylesheet" href="/assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="/assets/css/login.css">

    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style>
	.kakao_login{
		background-color:#fff !important; 
		border:none !important; 
		padding: 0 !important;
		border-radius : 0 !important;
	}
</style>
</head>
<body>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  


  <div class="login-form">
    <div class="container">
      <div class="row">

        <div class="col-lg-12">
          <form id="login-form" name="gs"  action="/join/AccountLoginOk.wp" method="post"> 
            <div class="row">
              <div class="col-lg-12">
                <a href="/"><img src="/assets/images/withpill_blue.png" alt="" class="logo"></a>
                
              </div>
              <div class="col-lg-12">
                  <fieldset>
                      <label for="Name" class="form-label">아이디</label>
                      <input type="text" name="userId" class="userId" placeholder="아이디 또는 이메일을 입력하세요" autocomplete="on" required >
                  </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                    <label for="password" class="form-label">비밀번호</label>
                    <input type="password" name="password" class="password" placeholder="비밀번호를 입력하세요" required >
                </fieldset>
              </div>
              
            
           
              <div class="col-lg-12">                        
                <fieldset>
                   <button class="submit" onclick="sendit();">로그인</button>
                  
                </fieldset>
              </div>
              <nav>
                <a href="/join/searchLogin.jsp">비밀번호 찾기</a>
                <span>|</span>
                <a href="/join/terms.jsp">회원가입</a>
               </nav>
              <br><hr/><br>
			<div class="kakao_login-wrap" onclick="loginWithKakao()">
				<button type="button" class="kakao_login">
					<img src="/assets/images/kakao_login_large_wide.png" class="img-button"/>
				</button>				   				
			</div>
		</div>
	</form>
</div>
</div>
</div>
</div>





  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

  <!-- <script src="/assets/js/isotope.min.js"></script> -->
  <!-- <script src="/assets/js/owl-carousel.js"></script> -->
  <!-- <script src="/assets/js/wow.js"></script> -->
  <!-- <script src="/assets/js/tabs.js"></script> -->
  <!-- <script src="/assets/js/popup.js"></script> -->
  <script src="/assets/js/custom.js"></script> 
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
        // 2. 카카오 초기화
        Kakao.init('aa9e687e051f351d75d28e948d0f82df'); //개인 앱 키
        console.log( Kakao.isInitialized() ); // 초기화 판단여부

        // 3. 데모버전으로 들어가서 카카오로그인 코드를 확인.
        function loginWithKakao() {
            Kakao.Auth.login({
                success: function (authObj) {
                    console.log(authObj); // access토큰 값
                    Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장
                    
                    getInfo();
                    
                    
                },
                fail: function (err) {
                    console.log(err);
                }
            });
        }

        // 4. 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
        function getInfo() {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    console.log(res);
                    // 이메일, 성별, 닉네임, 프로필이미지
                    var email = res.kakao_account.email;
                    var name = res.kakao_account.profile.nickname;
                    alert('카카오 로그인 성공');
                    alert('email : ' + email + '\n' + 'name : ' + name);
                    
                    location.href = '/index.jsp'; //로그인성공시 이동페이지
                    console.log(genderId, name);
                    
                },
                fail: function (error) {
                    alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
                }
            });
        }	

        
        
        
     // 로그아웃function
	function kakaoLogout() {
		if (Kakao.Auth.getAccessToken()) {
			Kakao.API.request({
				url: '/v1/user/unlink',
				success: function (response) {
				console.log(response)
				},
				fail: function (error) {
					console.log(error)
				},
			})
			
		Kakao.Auth.setAccessToken(undefined)
		}
	}  
  </script>

  <script type="text/javascript">
     function sendit(){
		let frm = document.gs;
		let userId = gs.userId;
		let password = gs.password;
		
		// 아이디 유무
		if( userId.value == "" ){
			alert("아이디를 입력하세요!");
			userId.focus();
			return false;
		}
		
		// 비밀번호 유무
		if( password.value == "" ){
			alert("패스워드를 입력하세요!");
			password.focus();
			return false;
		}
		
		// submit()
		gs.submit();
	}
      </script>
 </body>
</html>
