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
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="https://kit.fontawesome.com/738318faf3.js" crossorigin="anonymous"></script>
    <!--

    TemplateMo 580 Woox Travel

    https://templatemo.com/tm-580-woox-travel

    -->

  </head>

<body>
<c:set var="bdto" value="${requestScope.bdto }" />
<c:set var="adto" value="${requestScope.adto }" />

  <%@ include file = "/layout/header.jsp" %>


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
				   <tr>
				      <td style="height:82px; line-height: 82px; text-align: center; vertical-align: middle; padding: 0;">등록된 게시물이 없습니다.</td>
				   </tr>
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
              <c:if test="${not empty sessionScope.adminId}" >
                <button onclick="location.href='${pageContext.request.contextPath}/admin/AdminWrite.wp'">글쓰기</button>	
              </c:if>
              </div>
            </div>
            
        </div>  
    </div>
    <!-- ***** service End ***** -->
  </div>
  

  <%@ include file = "/layout/footer.jsp" %>


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
    