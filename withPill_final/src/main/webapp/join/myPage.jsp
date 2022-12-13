<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" minimum-scale="1" maximum-scale="1" content="user-scalable=no;"/>
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" name="viewport" />
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
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
	<link rel="stylesheet" href="/assets/css/style.css"/>
	
	<link rel="stylesheet" href="/assets/css/myPage.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
<%@ include file = "/layout/header.jsp" %>

 <c:set var="accountList" value="${sessionScope.accountList}" />
 <c:set var="productList" value="${sessionScope.productList}" />
 <c:set var="wishList" value="${sessionScope.wishList}" />
 <c:set var="userId" value="${sessionScope.userId }"/>

  <div class="myPage-wrap">
    <div class="myPage-left-header">
        <div class="profile-area">
            <div class="profile-inner">
                <a href="#">
                    <div class="profile">
                        <img src="/assets/images/user/withpill-basic-profile.jpg" alt="위드필 기본 프로필 이미지" />
<!--                         <span class="profile-edit">수정하기 -->
<!--                             <svg class="edit" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen-fill" viewBox="0 0 16 16"> -->
<!--                                 <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"/> -->
<!--                               </svg> -->
<!--                         </span> -->
                    </div>                    
                </a>   
                
                <div class="userid"> ${accountList.name }</div>
                <div class="useremail">${accountList.email }</div>
            </div>            
        </div>
        <div class="left">
            <ul class="left-link">
                <li><a href="/join/AccountLogOutOk.wp">로그아웃</a></li>
                <li><a href="/service/service.jsp">고객센터</a></li>
            </ul>
        </div>
    </div>
    <div class="myPage-right-container">
        <div class="subindex-item">
            <div class="subindex-greenbox">
                <!-- 내 프로필 -->
                <div class="myprofile right-cnt">
                    <div class="info-title">
                        <h3 class="title-text">기본정보</h3>
                        <form name="myAccountForm" method="post">
                        	<input type="hidden" name="userId" value="${accountList.userId }"/>
	                        <div class="edit-account">
	                            <button type="button" class="btnEdit" onClick="edit('${accountList.password}');">
	                                <span class="text">회원 정보 수정</span>
	                            </button>
	                            <button type="button" class="btnEditOk" onClick="editOk();">
	                                <span class="text">수정 완료</span>
	                            </button>
	                        </div>               
	                        <ul class="myinfo-area">
	                            <li>
	                                <div class="myprofile-img">
	                                    <img src="/assets/images/user/withpill-basic-profile.jpg" alt="위드필 기본 프로필 이미지" />
	                                </div>
	                            </li>
	                            <li>
	                                <div class="myaccount">
	                                    <div class="myname">
	                                        <p>
	                                        	<label class="account-col">이름 : </label> 
	                                        	<input type="text" value="${accountList.name}" name="name" readonly/>
	                                        </p>
	                                    </div>
	                                    <div class="mypw">
	                                        <p>
	                                        	<label class="account-col">비밀번호 : </label>
	                                       		<input type="password" value="${accountList.password}" name="password" readonly/>
	                                        	<span class="icon"><i class="bi bi-eye-slash"></i></span>
	                                        </p>
	                                    </div>
	                                    <div class="myaddress">
	                                    	<p>
	                                    		<label class="account-col">이메일 : </label>
	                                    		<input type="text" value="${accountList.email}" name="email" readonly/>
	                                    	</p>
	                                    </div>
	                                    <div class="myphone">
	                                        <p>
	                                        	<label class="account-col">전화번호 : </label>
	                                       		<input type="text" value="${accountList.phone}" name="phone" readonly/>
	                                        </p>
	                                    </div>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
	                </div>

                	<!-- 내 찜 목록 -->
	                <div class="myLike right-cnt">
	                    <div class="info-title">
	                        <h3 class="title-text">내 찜목록</h3> 
	                         <ul> 
								<c:choose>
									<c:when test="${productList != null and fn:length(productList) > 0 }">
										<c:forEach var="product" items="${productList}">
											<li class="myLikeList">
												<input type="hidden" name="wishListId" value="${wishList.id}" />
												<input type="hidden" name="productId" value="${product.id}" />
				                                <img src="/assets/images/pill/products/${product.engName}.png" alt="" style="width: 34px; height: 34px">
				                                <p>${product.korName}</p>
				                                <button type="button" class="btn-delete" onclick="wishListDelteOk('${wishList.id}', '${product.id}')">
				                                    <span class="text">
				                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
				                                            <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
				                                          </svg>
				                                    </span>
				                                </button>
				                            </li>
										</c:forEach>	
									</c:when>
									<%-- 찜 목록이 없는 경우 --%>
									<c:otherwise>
										<li class="myLikeList">
			                                찜한 목록이 없습니다.
			                            </li>
									</c:otherwise>
								</c:choose>
	                        </ul> 
	                    </div>
	                </div>
                </form>
                
                <ul class="notice right-cnt">
                    <h3 class="title-text">이메일 수신 설정</h3>
                    <li>
                        모든 정보 수신 동의
                        <a href="#" class="allNoticeAgree">
                            <i class="bi bi-toggle-off"></i>
                        </a>
                    </li>
                    <li>
                        프로모션 정보수신 동의
                        <a href="#" class="onlyPromotionNoticeAgree">
                            <i class="bi bi-toggle-off"></i>
                        </a>
                    </li>
                </ul>

                <ul class="link right-cnt">
                    <li><a href="/join/AccountLogOutOk.wp">로그아웃</a></li>
                    <li><a href="/service/service.jsp">고객센터</a></li>
                </ul>

                <div class="unregister right-cnt">
                    <button type="button" onclick="unregisterOk('${accountList.password}')">
                        <span class="text">회원탈퇴</span>
                    </button>
                    <span class="warning">탈퇴 시 회원 정보와 관련된 자료는 모두 삭제되며 복구되지 않습니다.</span>
                </div>
            </div>
        </div>
    </div>
  </div>


<%@ include file = "/layout/footer.jsp" %>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="/assets/js/isotope.min.js"></script>
  <script src="/assets/js/owl-carousel.js"></script>
  <script src="/assets/js/tabs.js"></script>
  <script src="/assets/js/popup.js"></script>
  <script src="/assets/js/custom.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

  <script src="/assets/js/function.js"></script>

  <script>
  
  	if('${accountList.allNotice}' =='Y'){
  		$('.allNoticeAgree').children("i").addClass("bi-toggle-on");
  	}
  	
  	if('${accountList.promotionNotice}' =='Y'){
  		$('.onlyPromotionNoticeAgree').children("i").addClass("bi-toggle-on");
  	}
	

    $(".mypw span.icon").click(function(){
    	if($(this).children("i").hasClass("bi-eye-slash") === true){
    		$(this).children("i").removeClass("bi-eye-slash");
    		$(this).children("i").addClass("bi-eye");  	
    		$(".mypw input").prop("type", "text");
    	}else if($(this).children("i").hasClass("bi-eye") === true){
    		$(this).children("i").removeClass("bi-eye");
    		$(this).children("i").addClass("bi-eye-slash");	
    		$(".mypw input").prop("type", "password");
    	}
    });
    
    
    $(".allNoticeAgree, .onlyPromotionNoticeAgree").click(function(e){
    	e.preventDefault();
		let targetClass = $(e.target.parentNode).attr('class');
    	if($(this).children("i").hasClass("bi-toggle-off") === true){
    		updateNoticeOk(targetClass);
    		$(this).children("i").removeClass("bi-toggle-off");
    		$(this).children("i").addClass("bi-toggle-on");
    		alert("위드필의 모든 정보 수신에 동의하셨습니다. ");    	
    	}else if($(this).children("i").hasClass("bi-toggle-on") === true){
    		updateNoticeNo(targetClass);
    		$(this).children("i").removeClass("bi-toggle-on");
    		$(this).children("i").addClass("bi-toggle-off");
    		alert("위드필의 모든 정보 수신에 비동의하셨습니다. ");    	
    	}
    });
    
    function updateNoticeOk(targetClass){
	 	$.ajax({
	 		url : "/account/UpdateNoticeOk",
	 		type : "post",
	 		data : {"notice" : targetClass},
	 		success : function(result){
	 			
	 		},
	 		error: function(){
	 			console.log('error')
	 		}
	 	})
    }
    
    function updateNoticeNo(targetClass){
	 	$.ajax({
	 		url : "/account/UpdateNoticeNo",
	 		type : "post",
	 		data : {"notice" : targetClass},
	 		success : function(result){
	 			
	 		},
	 		error: function(){
	 			console.log('error')
	 		}
	 	})
    }
    
    function edit(password){
    	let pw = prompt("회원 수정을 위해 비밀번호를 입력해주세요.");
		if( pw == password ){
			$("input[name='name'], input[name='email'],input[name='password'], input[name='phone']").removeAttr("readonly");
			$(".btnEdit").css("display", "none");
	   		$(".btnEditOk").css("display", "block");
		}else{
			// 회원정보 수정 불가
			alert("비밀번호를 확인해 주세요!");
			$("input[name='name'], input[name='email'],input[name='password'], input[name='phone']").attr("readonly");
			$(".btnEdit").css("display", "block");
	   		$(".btnEditOk").css("display", "none");
		}    	
    }
    
    function editOk(){		
		document.myAccountForm.action = "/join/AccountEditOk.wp";
    	document.myAccountForm.submit(); 	
    }
    
    function unregisterOk(password){
    	alert("회원 탈퇴를 하시겠습니까?");
    	let unregistConfirm = prompt("회원 탈퇴를 위해 비밀번호를 입력해주세요.");
    	
    	if(unregistConfirm = password){
    		alert("회원 탈퇴가 완료되었습니다.");
    		
    		document.myAccountForm.action = "/join/AccountUnregisterOk.wp";
    		document.myAccountForm.submit(); 	
    	}
    }
    
    $(".profile-edit").click(function(){
    	alert("수정!");
    });

    function wishListDelteOk(wishListId, productId){
    	document.myAccountForm.action = "/join/AccountWishListDelteOk.wp?productId="+productId;
    	document.myAccountForm.submit(); 
    }

    
  </script>
</body>
</html>