<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <link rel="stylesheet" href="/assets/css/survey.css">

    <style>
      html{
	      scroll-behavior: smooth;
      }
      
      .logo{
      	margin-top: 0 !important;
      }

      .progress{
        height: auto;
        /* min-height: 60px; */
      }

      .progress span{
        color: #282828 !important;
        opacity: 1;
        
      }

      .line{
        border-bottom: 1px solid #282828;
        height: 1px;
      }

      .bmi-span{
        /* color: black; */
        padding: 10px 0;
        font-size:16px;
        color: #282828 !important;
        font-weight: 500;
      }

      .bmi-span.on{
        background: linear-gradient(to top, #83adc5 50%, transparent 50%);
      }

      .progress-bar{
        background-color: #fff !important;
        width: 25%;
      }

      .my-info{
        color: #22B3C1;
        font-size: 20px;
      }
      
      .header-wrap .logo img{
      	padding-top: 0;
      }
      
      .banner-under{
		    background: linear-gradient(to bottom right, #b4d9c2, #b4d6d9);
		}
		
		.banner-normal{
		    background: linear-gradient(to bottom right, #b4d6d9, #abb5d7);
		}
		
		.banner-over{
		    background: linear-gradient(to bottom right, #abb5d7, #c8abd7);
		}
		
		.banner-obesity{
		   
		    background: linear-gradient(to bottom right, #c8abd7, #d7abd0);
		}
		
		.banner-severeobesity{
		    background: linear-gradient(to bottom right, #d7abd0, #d096a0);
		}
    </style>
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
  </head>

<body>
	
	<%@ include file = "/layout/header.jsp" %>
	
<c:set var="improveHealth" value="${improveHealth }"/>
<c:set var="resultList" value="${resultList }"/>
<c:set var="surveyDto" value="${surveyDto}"/>
<c:set var="bmi" value="${surveyDto.weight / ((surveyDto.height/100) * (surveyDto.height/100)) }"/>

  <!-- ***** Main Banner Area Start ***** -->
  <section id="section-1" class="survey-result-wrap">
    <div class="content-slider">
      <input type="radio" id="banner1" class="sec-1-input" name="banner" checked>

      <div class="slider">
        <div id="top-banner-1" class="banner">
          <div class="banner-inner-wrapper header-text">
            <div class="main-caption">
              <h2>설문조사가 끝났어요</h2>
              <h1><span name="user-name">${surveyDto.name }</span>님의 결과가 나왔습니다</h1>
              <h2>${improveHealth }</h2>
              <!-- 22B3C1 -->
              <div class="result-button">
                <a href="#movement">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
                </svg>
              </a>
              </div>
            </div>
            
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="more-info">
                    <div class="cnt-wrap">
                      <div class="cnt-1 cnt">
                        <h4><span>신장:</span><br><span id="my-height">${surveyDto.height } cm</span></h4>
                      </div>
                      <div class="cnt-2 cnt">
                        <h4><span>몸무게:</span><br><span id="my-weight">${surveyDto.weight }kg</span></h4>
                      </div>
                      <div class="cnt-3 cnt">
                        <h4><span>체질량지수(BMI):</span><br><span id="my-bmi"><fmt:formatNumber value="${bmi }" type="number" pattern=".00"/></span></h4>
                      </div>
                      <div class="cnt-4 cnt">
                        <div class="w-100">
                          <div class="progress">
                            <div class="progress-bar" role="progressbar">
                              <span class="bmi-span under">저체중</span>
                              <span class="line"></span>
                              <span>~18.5</span>
                            </div>
                            <div class="progress-bar" role="progressbar">
                              <span class="bmi-span normal">정상</span>
                              <span class="line"></span>
                              <span>~24.9</span>
                            </div>
                            <div class="progress-bar" role="progressbar">
                              <span class="bmi-span over">과체중</span>
                              <span class="line"></span>
                              <span>~29.9</span>
                            </div>
                            <div class="progress-bar" role="progressbar">
                              <span class="bmi-span obesity">비만</span>
                              <span class="line"></span>
                              <span>~34.9</span>
                            </div>
                            <div class="progress-bar" role="progressbar">
                              <span class="bmi-span severeobesity on">고도비만</span>
                              <span class="line"></span>
                              <span>35~</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="warning">
              <span>* 본 결과는 의사의 처방을 대신하지 않습니다.</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="movement"></div>
</section>
  <!-- ***** Main Banner Area End ***** -->
  
  <div class="visit-country necessary-wrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading text-center">
            <h1>
              <span name="user-name" class="pe-none">${surveyDto.name }</span>
              <span class="pe-none"> 님이 필요한 영양소는?</span>
            </h1>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="items">
            <div class="row">
            <c:set var="resultList" value="${resultList }"/>
            	<!-- 1영양제 시작 -->
            	<c:forEach var="result" items="${resultList }">
              		<div class="col-lg-12">
		                <div class="item">
		                  <div class="row row-shadow">
		                    <div class="col-lg-3 align-self-center" onclick="location.href='/account/ProductView.wp?product=${result.PRODUCT}'">
		                      <img src="${result.PRODUCTPATH }-1.png" alt="">
		                    </div>
		                    <div class="col-lg-9" style="height:380px;">
		                      <div class="h-100 p-3 mb-5">
		                        <div class="right-content p-5 h-100">
		                          <div class="d-flex justify-content-between mb-3">
		                            <h2>${result.NUTRIENT }</h2>
		                            <button type="button" class="btn opacity-75" onclick="location.href='/account/ProductView.wp?product=${result.PRODUCT}'">상세보기</button>              
		                          </div>
		                          <c:forTokens var="efficacy" items="${result.EFFICACY }" delims=",">
		                          	<h3 class="mb-2"><span class="dot">·</span> ${efficacy }</h3>
		                          </c:forTokens>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
	                	</div>
  					</div>
       			</c:forEach>
              <!-- 1 영양제 끝  -->         
            </div>
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
 <script>
	  function paintBmiSpan(bmi){
			let bmi_span = document.getElementsByClassName('bmi-span');
		
			for(let i = 0; i < bmi_span.length; i++){
				bmi_span[i].classList.remove('on');
			}
			
			if(bmi <= 18.5){
				bmi_span[0].classList.add('on');	
			} else if(bmi <= 24.9){
				bmi_span[1].classList.add('on');	
			} else if(bmi <= 29.9){
				bmi_span[2].classList.add('on');	
			} else if(bmi <= 34.9){
				bmi_span[3].classList.add('on');	
			} else if(bmi > 35){
				bmi_span[4].classList.add('on');	
			}
		}

		window.onload = paintBmiSpan(${bmi});
  </script>
  
  <script>
  	if($('.under').hasClass('on')){
  		$('.under.on').css("background", "linear-gradient(to top, #b4d9c2 50%, transparent 50%)");
		$('#top-banner-1').addClass('banner-under');				
	} else if($('.normal').hasClass('on')){
		$('.over.on').css("background", "linear-gradient(to top, #b4d6d9 50%, transparent 50%)");
		$('#top-banner-1').addClass('banner-normal');				
	} else if($('.over').hasClass('on')){
		$('.over.on').css("background", "linear-gradient(to top, #abb5d7 50%, transparent 50%)");
		$('#top-banner-1').addClass('banner-over');				
	} else if($('.obesity').hasClass('on')){
		$('.obesity.on').css("background", "linear-gradient(to top, #c8abd7 50%, transparent 50%)");
		$('#top-banner-1').addClass('banner-obesity');				
	} else if($('.severeobesity').hasClass('on')){
		$('.severeobesity.on').css("background", "linear-gradient(to top, #d7abd0 50%, transparent 50%)");
		$('#top-banner-1').addClass('banner-severeobesity');
	}
  </script>
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
