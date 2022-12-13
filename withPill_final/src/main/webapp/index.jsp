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
  <link rel="shortcut icon" href="favicon/favicon.ico">
  <meta name="theme-color" content="#ffffff">
  <!-- <title>WoOx Travel Bootstrap 5 Theme</title> -->
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

  <link rel="stylesheet" href="/assets/css/index.css">
</head>

<body>
  <%@ include file="/layout/header.jsp" %>

  <!-- ***** Main Banner Area Start ***** -->
	
  <section class="main-wrap">
    <div class="text-wrap">
      <h1>내 몸에 필요한<br>영양성분 궁금하세요?</h1>
      <h2>나만을 위한 맞춤영양제를 찾아보세요!<br>이미 <span id="surveyCnt1"></span>명이 추천받았습니다.</h2>
      <div class="border-button">
        <a href="survey/survey.jsp">지금 시작하기</a>
      </div>
    </div>
  </section>


  <!-- ***** Main Banner Area End ***** -->
  
  <!-- ***** 고민별 start ***** -->
  <section class="concern-wrap">
    <div class="concern">
      <h1>영양소별 상품 보기</h1>
      <div class="swiper-wrap">        
        <!-- Swiper -->
        <div #swiperRef="" class="swiper swiper-concern">            
            <div class="swiper-wrapper">                
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=vitamin b">
                    <div class="icon"><p>비타민</p></div>   
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=octacosanol">
                    <div class="icon"><p>옥타코사놀</p></div>
                    
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=omega3">
                    <div class="icon"><p>오메가3</p></div>
                    
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=CoQ-10">
                    <div class="icon"><p>코엔자임Q10</p></div>
                    
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=lutein">
                    <div class="icon"><p>루테인</p></div>
                    
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=hyaluronic acid">
                    <div class="icon"><p>히알루온산</p></div>
                    
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=spirulina">
                    <div class="icon"><p>스피루리나</p></div>
                    
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=collagen">
                    <div class="icon"><p>콜라겐</p></div>
                    
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=probiotics">
                    <div class="icon"><p>프로바이오틱스</p></div>
                    
                  </a>                  
                </div>
                <div class="swiper-slide">
                  <a href="/account/ProductView.wp?product=enzyme">
                    <div class="icon"><p>발효 효소</p></div>
                    
                  </a>
                </div>
            </div>
            <!-- <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div> -->
        </div>
      </div>
    </div>
  </section>
  <!-- ***** 고민별 end ***** -->

  <!-- ***** 그 동안 고민 많았죠? Start ***** -->
  <section class="section-worry">
    <div class="section-worry-box1">
      <div class="container">
        <h2>그동안 고민 많았죠?</h2>
        <div class="swiper WorrySwiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="thum">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-heart" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5ZM1 14V4h14v10a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1Zm7-6.507c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132Z"/>
                </svg>
              </div>
              <div class="txt">매달 고통스러운 생리통엔<br>어떤 영양제가 좋은지 모르겠어요.</div>
              <div class="email">h****g@naver.com</div>
            </div>
            <div class="swiper-slide">
              <div class="thum">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wind" viewBox="0 0 16 16">
                  <path d="M12.5 2A2.5 2.5 0 0 0 10 4.5a.5.5 0 0 1-1 0A3.5 3.5 0 1 1 12.5 8H.5a.5.5 0 0 1 0-1h12a2.5 2.5 0 0 0 0-5zm-7 1a1 1 0 0 0-1 1 .5.5 0 0 1-1 0 2 2 0 1 1 2 2h-5a.5.5 0 0 1 0-1h5a1 1 0 0 0 0-2zM0 9.5A.5.5 0 0 1 .5 9h10.042a3 3 0 1 1-3 3 .5.5 0 0 1 1 0 2 2 0 1 0 2-2H.5a.5.5 0 0 1-.5-.5z"/>
                </svg>
              </div>
              <div class="txt">가을 바람에 흘러가버린 머리카락..<br>꽉 잡을 순 없을까요?</div>
              <div class="email">j****2@naver.com</div>
            </div>
            <div class="swiper-slide">
              <div class="thum">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-down" viewBox="0 0 16 16">
                  <path d="M8.864 15.674c-.956.24-1.843-.484-1.908-1.42-.072-1.05-.23-2.015-.428-2.59-.125-.36-.479-1.012-1.04-1.638-.557-.624-1.282-1.179-2.131-1.41C2.685 8.432 2 7.85 2 7V3c0-.845.682-1.464 1.448-1.546 1.07-.113 1.564-.415 2.068-.723l.048-.029c.272-.166.578-.349.97-.484C6.931.08 7.395 0 8 0h3.5c.937 0 1.599.478 1.934 1.064.164.287.254.607.254.913 0 .152-.023.312-.077.464.201.262.38.577.488.9.11.33.172.762.004 1.15.069.13.12.268.159.403.077.27.113.567.113.856 0 .289-.036.586-.113.856-.035.12-.08.244-.138.363.394.571.418 1.2.234 1.733-.206.592-.682 1.1-1.2 1.272-.847.283-1.803.276-2.516.211a9.877 9.877 0 0 1-.443-.05 9.364 9.364 0 0 1-.062 4.51c-.138.508-.55.848-1.012.964l-.261.065zM11.5 1H8c-.51 0-.863.068-1.14.163-.281.097-.506.229-.776.393l-.04.025c-.555.338-1.198.73-2.49.868-.333.035-.554.29-.554.55V7c0 .255.226.543.62.65 1.095.3 1.977.997 2.614 1.709.635.71 1.064 1.475 1.238 1.977.243.7.407 1.768.482 2.85.025.362.36.595.667.518l.262-.065c.16-.04.258-.144.288-.255a8.34 8.34 0 0 0-.145-4.726.5.5 0 0 1 .595-.643h.003l.014.004.058.013a8.912 8.912 0 0 0 1.036.157c.663.06 1.457.054 2.11-.163.175-.059.45-.301.57-.651.107-.308.087-.67-.266-1.021L12.793 7l.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315l-.353-.354.353-.354c.047-.047.109-.176.005-.488a2.224 2.224 0 0 0-.505-.804l-.353-.354.353-.354c.006-.005.041-.05.041-.17a.866.866 0 0 0-.121-.415C12.4 1.272 12.063 1 11.5 1z"/>
                </svg>
              </div>
              <div class="txt">잠을 자도자도 피곤해요.</div>
              <div class="email">f******9@daum.net</div>
            </div>
            <div class="swiper-slide">
              <div class="thum">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-capsule" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M1.828 8.9 8.9 1.827a4 4 0 1 1 5.657 5.657l-7.07 7.071A4 4 0 1 1 1.827 8.9Zm9.128.771 2.893-2.893a3 3 0 1 0-4.243-4.242L6.713 5.429l4.243 4.242Z"/>
                </svg>
              </div>
              <div class="txt">요즘 모든 관절이 아프시다는<br>부모님께 좋은 선물 없을까요?</div>
              <div class="email">d***8@nate.com</div>
            </div>
            <div class="swiper-slide">
              <div class="thum">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-frown" viewBox="0 0 16 16">
                  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                  <path d="M4.285 12.433a.5.5 0 0 0 .683-.183A3.498 3.498 0 0 1 8 10.5c1.295 0 2.426.703 3.032 1.75a.5.5 0 0 0 .866-.5A4.498 4.498 0 0 0 8 9.5a4.5 4.5 0 0 0-3.898 2.25.5.5 0 0 0 .183.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
                </svg>
              </div>
              <div class="txt">생기없는 피부는<br>피부과가 답인가요?</div>
              <div class="email">w*****_@google.com</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ***** 그 동안 고민 많았죠? End ***** -->

  <!-- ***** 위드필 이용고객 현황 start ***** -->
  <div class="more-about">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
          <div class="left-image">
            <div class="img-wrap">
              <img src="/assets/images/user.jpg" alt="">
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="section-heading">
            <h2 class="main-txt">오늘도 많은 고객님들이<br>위드필로 고민 해결하고 계세요.</h2>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="info-item">
                <h4>
                  <script language="JavaScript">
                    expireDate = new Date // 현제 날짜 객체
                    expireDate.setMonth(expireDate.getMonth()+6)
                    hitCt = eval(cookieVal("pageHit")) // 방문 카운트 변수
                    hitCt++ // 방문카운트 +1
                    document.cookie = "pageHit="+hitCt+";expires=" + expireDate.toGMTString()
                    function cookieVal(cookieName) {
                      thisCookie = document.cookie.split(";")
                      for(i=0; i<thisCookie.length; i++) {
                        if (cookieName == thisCookie[i].split("=")[0]){
                          return thisCookie[i].split("=")[1]
                        }
                      }
                      return 0
                    }
                  </script>
                  
                    <script language="javascript" type="text/javascript">
                      document.write((hitCt+5000)  +  " + ")
                    </script>
                </h4>
                <span>총 방문자</span>
              </h3>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="info-item">
                <h4>
                  <script language="JavaScript">
//                     let expireDay = new Day // 현제 날짜 객체
//                     expireDay.setDay(expireDay.getDay()+1)
//                     hitCt = eval(cookieVal("pageHit")) // 방문 카운트 변수
//                     hitCt++ // 방문카운트 +1
//                     document.cookie = "pageHit="+hitCt+";expires=" + expireDay.toGMTString()
//                     function cookieVal(cookieName) {
//                       thisCookie = document.cookie.split(";")
//                       for(i=0; i<thisCookie.length; i++) {
//                         if (cookieName == thisCookie[i].split("=")[0]){
//                           return thisCookie[i].split("=")[1]
//                         }
//                       }
//                       return 0
//                     }
                  </script>
                  
                    <script language="javascript" type="text/javascript">
                      document.write(hitCt  +  " + ")
                    </script>
                  
                </h4>
                <span>오늘 방문자</span>
              </div>
            </div>
            <div class="col-lg-12" >
              <div class="info-item">
                <div class="row">
                  <div class="col-lg-6">
                    <h4 id="accountCnt"></h4>
                    <span>위드필 회원수</span>
                  </div>
                  <div class="col-lg-6">
                    <h4 id="surveyCnt2"></h4>
                    <span>위드필 설문지 이용자 수</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <p>자세한 문의는 고객센터를 이용해주세요.</p>
          <div class="main-button">
            <a href="/admin/AdminList.wp">상담하기</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** 위드필 이용고객 현황 end ***** -->

  <!-- ***** 건강선물으로 영양성분을 찾으세요. Start ***** -->
  <section class="section-search">
  <div class="section-search-box1">
    <div class="container">
      <h2>건강설문으로<br>나에게 맞는 영양성분을 찾으세요.</h2>
      <div class="go-wrap">
        <a href="/survey/survey.jsp">
          <p class="go">지금 시작하기</p>
        </a>
      </div>
    </div>
  </div>
  </section>
  <!-- ***** 건강선물으로 영양성분을 찾으세요. End ***** -->

  <!-- ***** 추천제품 start ***** -->
  <div class="weekly-offers review">
    <h2>위드필 오늘의 영양제</h2>
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="owl-weekly-offers owl-carousel">
            <div class="item">
              <div class="thumb">
                  <div class="thumb-img">
                    <img src="/assets/images/pill/CoQ-10/CoQ-10-1.png" alt="코엔자임q10">
                  </div>
                <div class="text">
                  <h4 class="nut-name">코엔자임Q10<br></h4><br>
                  <span><i class="fa fa-users"></i> 234명이 추천해요!</span><br>
                  <!-- <h6>⭐️⭐️⭐️⭐️</h6> -->
                  <div class="line-dec"></div>
                  <ul>
                    <li>혈당 조절 개선</li>
                    <li>고혈압 개선</li>
                    <li>운동 수행 능력 개선</li>
                  </ul>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=CoQ-10">제품 더보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                  <div class="thumb-img">
                    <img src="/assets/images/pill/probiotics/probiotics-4.png" alt="프로바이오틱스">
                  </div>
                <div class="text">
                  <h4 class="nut-name">프로바이오틱스<br></h4><br>
                  <span><i class="fa fa-users"></i> 547명이 추천해요!</span><br>
                  <!-- <h6>⭐️⭐️⭐️⭐️</h6> -->
                  <div class="line-dec"></div>
                  <ul>
                    <li>장내 유익균 증식</li>
                    <li>면역력 증진에 도움</li>
                    <li>원활한 배변활동에 도움</li>
                  </ul>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=probiotics">제품 더보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                  <div class="thumb-img">
                    <img src="/assets/images/pill/vitamin b/vitamin b-3.png" alt="비타민B">
                  </div>
                <div class="text">
                  <h4 class="nut-name">비타민B<br></h4><br>
                  <span><i class="fa fa-users"></i> 123명이 추천해요!</span><br>
                  <!-- <h6>⭐️⭐️⭐️⭐️</h6> -->
                  <div class="line-dec"></div>
                  <ul>
                    <li>피로 회복</li>
                    <li>피부 건강에 도움</li>
                    <li>우울증에 도움</li>
                  </ul>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=vitamin B">제품 더보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                  <div class="thumb-img">
                    <img src="/assets/images/pill/octacosanol/octacosanol-3.png" alt="옥타코사놀">
                  </div>
                <div class="text">
                  <h4 class="nut-name">옥타코사놀<br></h4><br>
                  <span><i class="fa fa-users"></i> 675명이 추천해요!</span><br>
                  <!-- <h6>⭐️⭐️⭐️⭐️</h6> -->
                  <div class="line-dec"></div>
                  <ul>
                    <li>에너지 형성</li>
                    <li>심폐기능 강화</li>
                    <li>스트레스 감소</li>
                  </ul>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=octacosanol">제품 더보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                  <div class="thumb-img">
                    <img src="/assets/images/pill/enzyme/enzyme-3.png" alt="발효 효소">
                  </div>
                <div class="text">
                  <h4 class="nut-name">발효 효소<br></h4><br>
                  <span><i class="fa fa-users"></i> 234명이 추천해요!</span><br>
                  <!-- <h6>⭐️⭐️⭐️⭐️</h6> -->
                  <div class="line-dec"></div>
                  <ul>
                    <li>소화 건강 증진</li>
                    <li>지방, 단백질 등의 분해 촉진</li>
                    <li>원할한 배변활동에 도움</li>
                  </ul>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=enzyme">제품 더보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** 추천제품 end ***** -->

  <%@ include file="/layout/footer.jsp" %>

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

  <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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

    // 고민별 상품보기
    $(window).resize(function(){
      if(window.innerWidth < 767){
        var swiperConcern = new Swiper(".swiper-concern", {
          slidesPerView: 2.7,
          spaceBetween: 10,
          freeMode: true,
          pagination: {
            el: ".swiper-pagination",
            type: "fraction",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      }else if(window.innerWidth < 1200){
        swiperConcern = new Swiper(".swiper-concern", {
          slidesPerView: 6.5,
          spaceBetween: 10,
          freeMode: true,
          pagination: {
            el: ".swiper-pagination",
            type: "fraction",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      }else{
        swiperConcern = new Swiper(".swiper-concern", {
          slidesPerView: 8.5,
          spaceBetween: 10,
          freeMode: true,
          pagination: {
            el: ".swiper-pagination",
            type: "fraction",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      }
    }).resize();

    // 그동안 걱정많았죠
    $(window).resize(function(){
      if(window.innerWidth < 767){
        var swiperWorry = new Swiper(".WorrySwiper", {    
          slidesPerView: 1,
          spaceBetween: 30,
          loop: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      }else if(window.innerWidth < 1200){
        swiperWorry = new Swiper(".WorrySwiper", {
          slidesPerView: 2,
          spaceBetween: 30,
          loop: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      }else{
        swiperWorry = new Swiper(".WorrySwiper", {
          slidesPerView: 3,
          spaceBetween: 30,
          loop: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      }
    }).resize();
  </script>
<script>

// 	setInterval(() => {
// 		console.log('test');
// 		location.href = "/user/UserCount.wp";
// 		location.href = "/survey/surveyCount.wp";
// 	}, 5000);
// -----------------------------------------------------------
// 	function surveyCnt1(){
// 		$('#surveyCnt1').load(window.location.href + " #surveyCnt1")
// 	}
 	$.ajax({
 		url : "/survey/SurveyCount",
 		type : "post",
 		success : function(result){
 			$("#surveyCnt1").text(result);
 			$("#surveyCnt2").text(result);
 		},
 		error: function(){
 			console.log('error')
 		}
 	})
 	
 	$.ajax({
 		url : "/account/AccountCount",
 		type : "post",
 		success : function(result){
 			$("#accountCnt").text(result);
 		},
 		error: function(){
 			console.log('error')
 		}
 	})

</script>
</body>
</html>