<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon/favicon.ico">
    <title>맞춤영양제 위드필</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../assets/css/fontawesome.css">
    <link rel="stylesheet" href="../assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="../assets/css/owl.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/join.css">

    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


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
  
  
  <div class="findpw-form">
    <div class="container">
      <div class="row">

        <div class="col-lg-12">
          <form id="findpw-form" name="findpwform"  action="/searchPw"method="post">
            <div class="row">
              <div class="col-lg-12">
                <a href="/"><img src="../assets/images/withpill_blue.png" alt="" class="logo"></a>
                
              </div>
              <div class="col-lg-12">
                  <fieldset>
                    <h3>비밀 번호 찾기</h3>
                      <h2>가입한 정보를 입력하세요.</h2>
                      <div class="col-lg-4">
                         <label class="name-form" >아이디</label>                      
                      </div>  
                      <div class="col-lg-12">               
                          <input type="text" id="userId" name="userId" class="userId" placeholder="아이디를 입력하세요" autocomplete="on" >
                      </div>
                      <div class="col-lg-4">
                        <label class="name-form" >이름</label>                      
                     </div>  
                     <div class="col-lg-12">               
                      <input type="text" id="name" name="name" class="name" placeholder="이름을 입력하세요" autocomplete="on" >
                  	</div>
                  	<div class="col-lg-4">
                  	<label class="name-form" >이메일</label>                      
                  </div>  
                  <div class="col-lg-12">
                  <input type="text" name="email" class="email" placeholder="이메일을 입력하세요" autocomplete="on" required>
				  </div>
                  <div>
   						<label>성별 :</label>
					    <label style="margin-right: 10px;"><p>남성</p><input type="radio" name="genderId" value="1"checked></label> 
					    <label><p>여성</p><input type="radio"name="genderId" value="2"></label>
				   </div>
                      
                  </fieldset>
              </div>
              
              
              <div class="col-lg-12">                        
                <fieldset>
                  <button class="main-button">임시 비밀번호 발송</button>                  
                </fieldset>
              </div>
              
              

</div>
</form>
</div>
</div>
</div>
  </div>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="../assets/js/isotope.min.js"></script>
  <script src="../assets/js/owl-carousel.js"></script>
  <script src="../assets/js/wow.js"></script>
  <script src="../assets/js/tabs.js"></script>
  <script src="../assets/js/popup.js"></script>
  <script src="../assets/js/custom.js"></script>
  

<!-- naver login API -->
 

  </body>

</html>
