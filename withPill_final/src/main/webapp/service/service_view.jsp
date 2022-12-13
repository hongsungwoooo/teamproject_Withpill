<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
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

<c:set var="bdto" value="${requestScope.bdto }" />
<c:set var="adto" value="${requestScope.adto }" />

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

        <div class="service-contents">
            <!-- 목록 추가 -->
            <div class="notice-list-btn">
                <button onclick="location.href='${pageContext.request.contextPath}/admin/AdminList.wp'">목록</button>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>분류</th>
                        <th>제목</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="service-list">
                        <td class="category">
                        <c:out value="${bdto.category }" />
                        </td>
                        <td class="title">${bdto.title }</td>
                        <td class="date">
                        <c:out value="${fn:substring(bdto.uploadDate, 0, 10)}"/>
                        </td>
                    </tr>
                </tbody>
            </table>   
    
            <div class="terms-service">
                <div class="terms-contents">
                    <div class="terms-wrap">
						<pre style="font-family: 'Noto Sans KR', sans-serif !important;"><c:out value="${bdto.content}" /></pre>
                    </div>
                </div>
            </div>
    </div>
    

     <div class="btn-wrap">
    <!-- 수정,삭제 버튼 추가 -->
    <div class="edit-btn btns">
   		 <c:if test="${not empty adminId }" >
                <button onclick="location.href='${pageContext.request.contextPath}/admin/AdminEdit.wp?id=${bdto.id }&category=${bdto.category }'">수정하기</button>
		  </c:if>  		
				</div>
              <div class="delete-btn btns">
              <c:if test="${not empty adminId }" >
                <button onclick="location.href='${pageContext.request.contextPath}/admin/AdminDeleteOk.wp?id=${bdto.id }'">삭제하기</button>
             </c:if>  
              </div>
            </div>
    <!-- ***** service End ***** -->
    </div>
  </div>

    <%@include file="/layout/footer.jsp" %>

</body>
</html>