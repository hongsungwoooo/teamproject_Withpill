<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
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
<c:set var="bdto" value="${requestScope.bdto }" />
<c:set var="adto" value="${requestScope.adto }" />

  <!-- ***** Header Area Start ***** -->
  <div class="header-wrap">
    <div class="header-cnt">
      <nav>
        <div class="logo">
          <a href="/index.html"><img src="/assets/images/withpill_blue.png" alt="위드필로고"></a>
        </div>
        <div class="m-menu-list">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
          </svg>
        </div>
        <div class="pc-menu">
          <ul>
            <li><a href="/join/join.html">로그인</a></li>
            <li><a href="/survey/survey.html">설문조사</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/AdminList.wp">고객센터</a></li>
            <li><a href="/nutrient/nutrient_search.html">스토어</a></li>
          </ul>
        </div>

      </nav>
    </div>
  </div>

  <div class="m-menu"> 
    <div class="m-menu-bg"></div>
    <ul>
      <li><a href="/join/join.html">로그인</a></li>
      <li><a href="/survey/survey.html">설문조사</a></li>
      <li><a href="${pageContext.request.contextPath}/admin/AdminList.wp">고객센터</a></li>
      <li><a href="/nutrient/nutrient_search.html">스토어</a></li>
    </ul>          
  </div>
  <!-- ***** Header Area End ***** -->


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
                    <th class="head-category">분류</th>
                    <th class="head-title">제목</th>
                    <th class="head-date">작성일</th>
                </tr>
                </thead>
                <tbody>
                <tr class="service-list" onclick="location.href='/service/notice.jsp'">
                	<td class="category">소식</td>
                	<td class="title">위드필 개인정보처리방침 변경 안내</td>
                	<td class="date">2022-10-25</td>
                </tr>

                <tr class="service-list" onclick="location.href='/service/notice2.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 택배사 변경 안내</td>
                    <td class="date">2022-10-21</td>
                </tr>

                <tr class="service-list" onclick="location.href='/service/notice3.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 중요 공지</td>
                    <td class="date">2020-05-29</td>
                </tr>
                <tr class="service-list" onclick="location.href='/service/notice4.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 교환 및 환불 규정 안내</td>
                    <td class="date">2018-07-24</td>
                </tr>

                <tr class="service-list" onclick="location.href='/service/notice5.jsp'">
                    <td class="category">소식</td>
                    <td class="title">위드필 포인트제도 소개</td>
                    <td class="date">2019-09-23</td>
                </tr>
                
                	<%-- 게시글 작성 --%>
				<c:choose>
					<%-- 게시글이 있는경우 --%>
					<c:when test="${boardList != null and fn:length(boardList) > 0 }">
					<c:forEach var="bdto" items="${boardList }">
						<tr class="service-list">	
							<td class="category">${bdto.category }</td>
							<td class="title">
								<a href="${pageContext.request.contextPath }/admin/AdminView.wp?id=${bdto.id }">
								 ${bdto.title }
								</a>
							</td>
							<td class="date"><c:out value="${fn:substring(bdto.uploadDate, 0, 10)}"/></td>
						</tr>
				</c:forEach>
				</c:when>
				<%-- 게시글이 없는경우 --%>
				<c:otherwise>
				<!-- 	<tr style="height: 50px;">
						<td colspan="5" style="text-align: center;">등록된 게시물이 없습니다.</td>
					</tr> -->
				</c:otherwise>
			</c:choose>
			</tbody>
		</table>
		
				<%-- 페이징 처리 --%>
				<table style="border: 0px">
				<tr align="center" valign="middle" class="paging">
					<td>
						<c:if test="${nowPage > 1 }">
							<a href="${pageContext.request.contextPath }/admin/AdminList.wp?page=${nowPage - 1}">[&lt;]</a>					
						</c:if>
					
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<c:choose>
								<%--현재 보고있는 페이지는 a tag 제거 --%>
								<c:when test="${i == nowPage }"> [${i }] </c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath }/admin/AdminList.wp?page=${i}">[${i }]</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:if test="${nowPage < totalPage }">
						<a href="${pageContext.request.contextPath }/admin/AdminList.wp?page=${nowPage + 1}">[&gt;]</a>					
					</c:if>
					</td>
				</tr>
				</table>
			
            <div class="btn-wrap">
              <!-- 관리자 글쓰기 추가 -->
              <div class="write-btn btns">
              <c:if test="${session.getAttribute('adminId') != null }" >
                <button onclick="location.href='${pageContext.request.contextPath}/admin/AdminWrite.wp'">글쓰기</button>	
              </c:if>
              </div>
            </div>
            
        </div>  
    </div>
    <!-- ***** service End ***** -->
  </div>
  

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright © 2036 <a href="#">WoOx Travel</a> Company. All rights reserved. 
            <br>Design: <a href="https://templatemo.com" target="_blank" title="free CSS templates">TemplateMo</a> Distribution: <a href="https://themewagon.com" target="_blank" >ThemeWagon</a></p>
          </div>
        </div>
      </div>
    </footer>


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
    