<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="UTF-8">
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
   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
   <link rel="stylesheet" href="/assets/css/style.css"/>
<!--    <link rel="stylesheet" href="/path/to/font-awesome/css/font-awesome.min.css"> -->
   <link rel="stylesheet" href="/assets/css/service.css">
   <link rel="stylesheet" href="/assets/css/nutrient.css">
   <!-- <link rel="stylesheet" href="/assets/css/index.css"> -->
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
<style>
	.product-name{
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    max-width: 170px;
    }
</style>

  </head>

<body>
	<script src="/assets/json/product.json" type="text/javascript"></script>
	<script>
		let productUrl = JSON.parse(JSON.stringify(ProductUrl));
	</script>
  <%@ include file = "/layout/header.jsp" %>
  
	<c:set var="productPath" value="${requestScope.productPath }"/>
	<c:set var="productList" value="${requestScope.productList }"/>
	<c:set var="userId" value="${sessionScope.userId }"/>
	<c:set var="rateList" value="${requestScope.rateList }"/>
	
  <!-- ***** Main Banner Area Start ***** -->
  <div class="about-main-content nutreint-items-wrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="content">
            <div class="blur-bg"></div>
            <h4>효과 & 효능</h4>
            <div class="line-dec"></div>
            <h2>${productList[0]['NAME'] }</h2>
            <p>${productList[0]['DETAIL'] }</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  <!-- ***** Main Banner Area End ***** -->

  <!-- ***** 모든 제품 Start ***** -->
  <div class="all-items-wrap">
    <div class="container">
      <h2 style="font-size: 22px;">모든제품</h2>
      <ul>
      	<c:forEach var="product" items="${productList }" varStatus="status">
      		<c:set var="index" value="${status.index }"/>
      		<c:set var="count" value="${status.count }"/>
      		<c:set var="productFullName" value="${product['COMPANY'] += ' ' += product['KORNAME'] }"/>
      		<li>
	            <div class="item-img" style="cursor: pointer;" onclick="window.open(productUrl['${productFullName}']);">
	              <img src="${productPath}-${count }.png" alt="">
	            </div>
	            <div class="item-category" style="display: inline-block; height:50px; width:150px; font-size: 100%; line-height:50px; margin-top: 15px;">
	            	건강기능식품
	            </div>
	            <form style="display: inline-block; float: right; width: 1; white-space: nowrap;" name="mineform" id="mineform" method="post" action="./save">
                     <fieldset>
                        <input type="checkbox" name="rating" value="${product.ID }" id="rate${status.index }"><label for="rate${status.index }">⭐</label>
                     </fieldset>
	            </form>	
	            <p class="item-name">${productFullName }</p>
        	</li>
      	</c:forEach>
      </ul>
    </div>
  </div>
  <!-- ***** 모든 제품 End ***** -->
  
  <!-- ***** 추천제품 Start ***** -->
  <div class="weekly-offers">
    <div class="container">
      <h2 style="font-size: 22px;">추천 제품</h2>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="owl-weekly-offers owl-carousel">
          <!-- 반복문 시작 -->
          	<c:forEach var="product" items="${productList }" varStatus="status">
		        <c:set var="index" value="${status.index }"/>
	          	<c:set var="count" value="${status.count }"/>
	            <div class="item">
	              <div class="thumb">
	                <img src="${productPath}-${count }.png">
	                <div class="text">
	                  <h4 class="product-name">${product['KORNAME'] }</h4>
	                  <div class="line-dec"></div>
	                  <ul>
	                    <li><i class="fa fa-regular fa-file-medical"></i> ${product['COMPANY'] }</li>
	                    <li><i class="fa fa-regular fa-capsules"></i> ${product['CAPACITY'] }</li>
	                    <li><i class="fa fa-clock"></i> ${product['DOSAGE'] }</li>
	                  </ul>
	                  <div class="main-button">
	                    <a href="javascript:;" style="width:100%; cursor:default; text-align:center;">&#8361; <fmt:formatNumber value="${product['PRICE'] }" pattern="#,###"/></a>
	                  </div>
	                </div>
	              </div>
	            </div>
          	</c:forEach>
          	
            <!-- 반복문 끝 -->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** 추천제품 End ***** -->
  

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2022 <a href="#">WithPill</a> Company. All rights reserved. 
          <br>Design: <a href="https://templatemo.com" target="_blank" title="free CSS templates">TemplateMo</a> Distribution: <a href="https://themewagon.com target="_blank" >ThemeWagon</a></p>
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
  <script src="/assets/js/tabs.js"></script>
  <script src="/assets/js/popup.js"></script>
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/function.js"></script>
  
  <script language=JavaScript>
    $(".option").click(function(){
      $(".option").removeClass("active");
      $(this).addClass("active"); 
    });
    
    $(document).ready(function(){
    	<c:forEach var="rate" items="${rateList}">
    		$('#rate' + ${rate}).prop('checked', true);
    	</c:forEach>
    });
    
	function ratingOnChange(e){
		/*
			로그인 된 상태인지 확인하는 로직 넣기
		*/
		if(${empty userId}){
			alert('찜하기는 로그인이 필요합니다');
			e.target.checked = false;
			return;
		}
		
		if(e.target.checked){
			let product = { "productId" : e.target.value };
			productInsert(product);
		}
		
		if(!e.target.checked){
			let product = { "productId" : e.target.value };
			productDelete(product);
		}
	}
	
    let ratings = $('input[name=rating]').toArray();
    
    ratings.forEach (function (selector, index) {
    	$(selector).on('change', ratingOnChange);
    });
    
    function productInsert(product){
    	$.ajax({
    		url: "/Account/InsertWishlistProduct",
    		data: product,
    		type: "POST",
    		success: function(data){
    			console.log('data');
    		}
    	})
    }
    
    function productDelete(product){
    	$.ajax({
    		url: "/Account/DeleteWishlistProduct",
    		data: product,
    		type: "POST",
    		success: function(data){
    			console.log('data');
    		}
    	})
    }
  </script>

  </body>
</html>
