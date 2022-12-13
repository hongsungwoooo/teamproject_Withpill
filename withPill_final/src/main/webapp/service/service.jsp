<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <link rel="stylesheet" href="/assets/css/service.css">
    <link rel="stylesheet" href="/assets/css/index.css">

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="https://kit.fontawesome.com/738318faf3.js" crossorigin="anonymous"></script>
    <script src="/assets/js/function.js"></script>
    <!--

    TemplateMo 580 Woox Travel

    https://templatemo.com/tm-580-woox-travel

    -->

  </head>

<body>

  <%@include file="/layout/header.jsp" %>


  <div class="service-container clearfix">
    <!-- ***** 좌측 메뉴 Start ***** -->
    <div class="left-menu">
      <ul>
        <li>
          고객센터
        </li>
        <li class="on">
          <a href="${pageContext.request.contextPath}/admin/AdminList.wp">
            위드필 소식
            <p class="icon"><i class="fa-solid fa-chevron-right"></i></p>
          </a>
        </li>
        <li>
          <a href="/service/serviceS1.jsp">
            약관 및 방침
            <p class="icon"><i class="fa-solid fa-chevron-right"></i></p>
          </a>
        </li>
      </ul>
    </div>
    <!-- ***** 좌측 메뉴 End ***** -->

    <!-- ***** service Start ***** -->
    <div class="service-wrap">
      
        <h2 style="font-size: 30px;">위드필 소식</h2>
        <h4>위드필이 드리는 소식을 전합니다.</h4>

        <div class="table">
            

            <table>
                <thead>
                <tr>
                    <th>분류</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
                </thead>
                <tbody>
                <tr class="service-list" onclick="location.href='notice1.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 이용약관 및 개인정보처리방침 변경 안내</td>
                    <td class="date">2022-10-25</td>
                </tr>

                <tr class="service-list" onclick="location.href='notice2.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 택배사 변경 안내</td>
                    <td class="date">2022-10-21</td>
                </tr>

                <tr class="service-list" onclick="location.href='notice3.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 중요 공지</td>
                    <td class="date">2020-05-29</td>
                </tr>
                <tr class="service-list" onclick="location.href='notice4.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 교환 및 환불 규정 안내</td>
                    <td class="date">2018-07-24</td>
                </tr>

                <tr class="service-list" onclick="location.href='notice5.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 포인트제도 소개</td>
                    <td class="date">2019-09-23</td>
                </tr>

                </tbody>
            </table>  

            <div class="btn-wrap">
              <!-- 관리자 글쓰기 추가 -->
              <div class="write-btn btns" name="writebtn">
                <button onclick="location.href='${pageContext.request.contextPath}/admin/AdminWrite.wp'">글쓰기</button>
              </div>

             
            </div>
            
        </div>  
    </div>
    <!-- ***** service End ***** -->
  </div>
  

<%@include file="/layout/footer.jsp" %>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="/assets/js/isotope.min.js"></script>
  <script src="/assets/js/owl-carousel.js"></script>
  <script src="/assets/js/wow.js"></script>
  <script src="/assets/js/tabs.js"></script>
  <script src="/vassets/js/popup.js"></script>
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/function.js"></script>

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
