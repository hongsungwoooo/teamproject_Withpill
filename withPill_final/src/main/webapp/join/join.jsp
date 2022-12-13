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
    <link rel="stylesheet" href="/assets/css/join.css">

   
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




              <!-- ------------------------------------------
                              ★-------join area-------★
                  ------------------------------------------    -->



<div class="join-form join-form-wrap">
		<a href="/"  class="join-logo"><img src="/assets/images/withpill_blue.png" alt=""></a> 	
    	<div class="col-lg-12">
      		<form id="join-form" name="joinform" id="joinform" action="/join/AccountJoin.wp" method="post">
       		<div class="row">
          <!-- ★id★ -->
         
          <div class="col-lg-12">
            <label class="name-form" >아이디</label>                      
          </div>  
          
          
          <div class="col-lg-8">               
              <input type="text" id="userId" name="userId" class="userId" placeholder="아이디를 입력하세요" autocomplete="on" >
          </div>

       <!--    ★checkId★ -->
          <div class="col-lg-4">
       		<input type="button" value="ID 중복확인" id="check-id" style="text-align:center" onclick="checkId(joinform.userId.value);" >
          </div>

          <!-- ★pw★ -->
          <div class="col-lg-12">	
            <label class="password-form">비밀번호</label>                      
          </div>

          <div class="col-lg-12">
            <input type="password" placeholder="비밀번호" id="password" name="password" >                       
          </div>

		  <!-- ★pwCheck★ -->
          <div class="col-lg-12">
            <label class="name-form">비밀번호 확인</label>                      
          </div>

          <div class="col-lg-12">
            <input type="password" placeholder="비밀번호 확인" name="confirmPassword" id="confirmPassword" >
          </div>  

          <!-- ★이메일★ -->
          <div class="col-lg-12">
            <label class="name-form">이메일</label>                      
          </div>

          <div class="col-lg-12">
              <input type="text" id="email" class="email" name="email" placeholder="이메일"autocomplete="on" >
           <!-- 인증번호 전송 버튼-->
          </div>
          <!-- 
          <div class="col-lg-4">    
            <button type="button" onclick="emailAuthentication()" id="eamilAuthBtn"  class="btnChk"style="text-align:center">인증번호 받기 </button>
          </div>
			-->
                       
          <!-- ★인증번호 확인★  -->
         <!--  <div class="col-lg-8">
              <input type="text" name="reemail" id="reemail"placeholder="입력하신 메일로 발송된 인증번호를 입력해 주세요" >
          </div>
          
          <div class="col-lg-4">
            <button type="button" onclick="authCodeCheck()"  id="authCodeCheckBtn" disabled="disabled" class="btnChk" style="text-align:center">인증확인</button>
            <input type="hidden" name="authPass" id="authPass" value="false">
          </div> -->
          
          <!--  -->
          <hr/>
          <!--  -->
            

                
                <div class="col-lg-6"> 
                <!-- 이름 -->
                  <div>
                        <label class="form-label">이름</label>
                        <input type="text" name="name" id="name"class="name" placeholder="Ex. 홍길동" autocomplete="on" >
                  </div>
					
					<!-- 생년 월일-->
                  <div>
                      <label class="form-label">생년월일</label>
                      <input type="text" name="birth" id="birth" class="birth"  placeholder="Ex. 19990808" >
                  </div>    
                </div>     

                <div class="col-lg-6">
                  		<!--번화번호  -->
                      <label class="form-label">전화번호</label>
                      <input type="text" class="phone"name="phone" id="phone"  placeholder="Ex. 01012345678" autocomplete="on" >
                      
                      
                    <label class="form-label">성별</label>
                 <select name="genderId" id="genderId" class="genderId" >             
                          <option  value="1">남자</option>
                          <option  value="2">여자</option>
                 </select>   
                </div>

       
                <!--  -->
                <hr/>
                <!--  -->

                   
              <div class="col-lg-12">                        
                <fieldset>
                   <input type="button" id="finish-button" class="finish-button" onclick="sendit()" value="회원가입">                  
                </fieldset>                                                 
              </div>

        </div>
      </form>      
    </div>
  </div>



            <!-- ------------------------------------------
                              ★-------join area End-------★
                ------------------------------------------    -->

    
    
      <!-- Scripts -->
      <!-- Bootstrap core JavaScript -->
      <script src="/vendor/jquery/jquery.min.js"></script>
      <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
    
	  <script src="/assets/js/isotope.min.js"></script>
      <script src="/assets/js/owl-carousel.js"></script>
      <script src="/assets/js/tabs.js"></script>
      <script src="/assets/js/popup.js"></script>
      <script src="/assets/js/custom.js"></script>
	 <!--  <script src="/join/user.js"></script> -->

		
	
	
<script type="text/javascript"> 
		
		var form = document.joinform;	

		function sendit(){
		let frm = document.joinform;
		let userId = joinform.userId;
		let password = joinform.password;
		let confirmPassword = joinform.confirmPassword
		let email = joinform.email;
		let reemail = joinform.reemail;
		let name = joinform.name;
		let birth = joinform.birth;
		let phone = joinform.phone;
	
		
		
		
		
		// 아이디 유무
		if( userId.value == "" ){
			alert("아이디를 입력하세요!");
			return false;
		}
		
		if( userId.value.length <= 4 || userId.value.length >= 16 ){
		alert("아이디는 5자 이상, 16자 미만으로 입력하세요!");
		return false;
		}
		
		
		if( password.value == "" ){
		alert("비밀번호를 입력하세요");
			return false;
		} else {
			if( password.value.length < 6){
				alert("비밀번호는 6자리 이상으로 입력하세요!");
				return false;
			}
		}
 
 		//비밀번호 == 비밀번호확인
	 	if( password.value != confirmPassword.value ){
			alert("비밀번호가 일치하지 않습니다!");
			return false;
		}
		
 		if( email.value == "" ){
			alert("이메일을 입력하세요!");
			return false;
 		}
		
/*  		if( reemail.value == "" ){
			alert("이메일 인증을 완료 해주세요");
			return false;
 		}	 */
		
 		if( name.value == "" ){
			alert("이름을 입력 해주세요!");
			return false;
 		}	

 		if( birth.value == "" ){
			alert("생년월일을 입력 해주세요!");
			return false;
 		}	

 		if( phone.value == "" ){
			alert("전화번호를 입력 해주세요!");
			return false;
 		}	

		if(!form.userId.readOnly){
 			alert("아이디 중복 검사를 진행해주세요.");
 			return;
 		} 

 		frm.submit();
    	}
    
     	
       	$("input[name='userId']").on("click", function(){
      		form.userId.readOnly = false;
      	})

     	function checkId(userId){
     		
     		if( userId == "" ){
     			alert("아이디를 입력 해주세요!");
     		} else {
     			// 중복처리, ajax     			
     			let xhr = new XMLHttpRequest();
     			xhr.open("get", "idcheck.jsp?userId="+ userId, true);		
     			xhr.send();
     			xhr.onreadystatechange = function(){
     				if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){     					 
     					if (xhr.responseText.trim() =="ok"){
     						form.userId.readOnly = true;
     						alert("사용 가능한 아이디입니다.");
     					}else{
     						alert("사용 불가능한 아이디입니다.");
     					}    				
     				}
     		}
     	}
}
		</script> 
    
 </body>
</html>