<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <link rel="stylesheet" href="../assets/css/style.css"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/service.css">
    <link rel="stylesheet" href="../assets/css/index.css">

    <script src="https://kit.fontawesome.com/738318faf3.js" crossorigin="anonymous"></script>
    <script src="../assets/js/function.js"></script>

</head>
<body>

<%@ include file = "/layout/header.jsp" %>

    <div class="service-container clearfix">
      <!-- ***** 좌측 메뉴 Start ***** -->
      <div class="left-menu">
        <ul>
          <li>
            고객센터
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/admin/AdminList.wp">
              위드필 소식
              <p class="icon"><i class="fa-solid fa-chevron-right"></i></p>
            </a>
          </li>
          <li class="on">
            <a href="/service/serviceS1.jsp">
              약관 및 방침
              <p class="icon"><i class="fa-solid fa-chevron-right"></i></p>
            </a>
          </li>
        </ul>
      </div>
      <!-- ***** 좌측 메뉴 End ***** -->

      <div class="service-wrap">
      
        <div class="terms-service">
                <!-- 상단바 추가 -->
                <nav class="terms-navigator">
                    <div calss="select-link-menu-wrap">
                        <div class="select-link-menu">
                            <div class="terms-wrapper">
                                <div class="link-wrap only-pc">
                                    <a href="/service/serviceS1.jsp">이용약관</a> 
                                    <a href="/service/serviceP.jsp">개인정보처리방침</a>
                                    <a class="on" href="/service/serviceM.jsp">마케팅수신동의</a>
                                </div>
                            </div> 
                        </div>
                    </div>
                </nav>
                
                <div class="terms-contents">
                    <!-- 목록 추가 -->
                    <!-- <div class="list-btn">
                        <button>목록</button>
                    </div> -->

                    <div class="terms-wrap">
                        <div class="detail">
                            <p>
                                ■ "위드필"은 회원가입 시 수집된 개인정보를 이용하여 탈퇴 시까지 각종 서비스, 제품 및 유용한 컨텐츠에 대해서 홍보,구매권유, 프로모션, 이벤트 안내 등의 목적으로 본인에게 정보, 광고를 전화, 문자메시지, 카카오톡, 페이스북 메시지,이메일, 우편 및 앱 푸시 등의 방법으로 전달합니다.
                                </p>
                        
                                <p>
                                ■ "위드필"은 구매, 배송, 복용관리 등 의무적으로 안내되어야 하는 정보성 내용은 수신동의 여부와 무관하게 제공됩니다.
                                </p>
                        
                                <p>
                                ■ 개인정보보호법 제22조 제4항에 의해 동의하지 않을 권리가 있으며, 동의하지 않는 경우에도 회원 가입 및 상품 구매는 가능합니다.
                                </p>
                        </div>
                    </div>
                </div>   
        </div>

      </div>
    </div>
    
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright © 2022 <a href="index.html">WithPill</a> Company. All rights reserved. 
          </div>
        </div>
      </div>
    </footer>


    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="../assets/js/isotope.min.js"></script>
    <script src="../assets/js/owl-carousel.js"></script>
    <script src="../assets/js/tabs.js"></script>
    <script src="../assets/js/custom.js"></script>
    <script src="../assets/js/function.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

    <script>
      function bannerSwitcher() {
        next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
        if (next.length) next.prop('checked', true);
        else $('.sec-1-input').first().prop('checked', true);
      }

      var bannerTimer = setInterval(bannerSwitcher, 5000);

      $('nav .controls label').click(function() {
        clearInterval(bannerTimer);
        bannerTimer = setInterval(bannerSwitcher, 5000)
      });

    </script>

  </body>
</html>