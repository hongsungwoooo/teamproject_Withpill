<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="userId" value="${sessionScope.userId }"/>
<c:set var="adminId" value="${sessionScope.adminId }"/>
  <!-- ***** Header Area Start ***** -->
  <div class="header-wrap">
    <div class="header-cnt">
      <nav>
        <div class="logo">
          <a href="/"><img src="/assets/images/withpill_blue.png" alt="위드필로고"></a>
        </div>
        <div class="m-menu-list">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
          </svg>
        </div>
        <div class="pc-menu">
        
          <ul>
          <c:choose>
          	<c:when test="${not empty userId }">
<%--           		<li class="${ empty userId ? 'able' : 'unable'}"><a href="/join/login.jsp">로그인</a></li> --%>
	            <li class="${ not empty userId ? 'able' : 'unable'}"><a href="/join/AccountLogOutOk.wp">로그아웃</a></li>
	            <li class="${ not empty userId ? 'able' : 'unable' }"><a href="/join/AccountMyPageView.wp">마이페이지</a></li>
          	</c:when>
          	<c:otherwise>
          		<li class="${ empty adminId ? 'able' : 'unable'}"><a href="/join/login.jsp">로그인</a></li>
	            <li class="${ not empty adminId ? 'able' : 'unable'}"><a href="/join/AccountLogOutOk.wp">로그아웃</a></li>
          	</c:otherwise>
          </c:choose>
            <li><a href="/survey/survey.jsp">설문조사</a></li>
            <li><a href="/admin/AdminList.wp">고객센터</a></li>
            <li><a href="/nutrient/nutrient_search.jsp">스토어</a></li>
          </ul>
        </div>

      </nav>
    </div>
  </div>
  <div class="m-menu"> 
    <div class="m-menu-bg"></div>
    <ul>
      <li class="${ empty userId ? 'able' : 'unable' }"><a href="/join/login.jsp">로그인</a></li>
      <li class="${ not empty userId ? 'able' : 'unable' }"><a href="/join/AccountLogOutOk.wp">로그아웃</a></li>
      <li class="${ not empty userId ? 'able' : 'unable' }"><a href="/join/AccountMyPageView.wp">마이페이지</a></li>
      <li><a href="/survey/survey.jsp">설문조사</a></li>
      <li><a href="/admin/AdminList.wp">고객센터</a></li>
      <li><a href="/nutrient/nutrient_search.jsp">스토어</a></li>
    </ul>          
  </div>
  <!-- ***** Header Area End ***** -->
