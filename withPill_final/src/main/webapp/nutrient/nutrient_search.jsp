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
    <link rel="stylesheet" href="/assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="/assets/css/owl.css">
    <link rel="stylesheet" href="/assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="/assets/css/style.css"/>
    <link rel="stylesheet" href="/assets/css/service.css">
    <link rel="stylesheet" href="/assets/css/index.css">
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
  </head>

<body>

  <%@ include file = "/layout/header.jsp" %>

  <div class="page-heading nutrient_search-wrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h1 style="color:white">위드필!</h1>
          <h2>영양제를 추천해줘!</h2>
        </div>
      </div>
    </div>
  </div>

  <div class="search-form">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <form id="search-form" name="gs" method="POST" role="search" action="#">
            <div class="row">
              <div class="col-lg-2">
                <h4>영양제 상세검색</h4>
              </div>
              <div class="col-lg-5">
                  <fieldset>
                      <select name="Symptom" class="form-select" aria-label="Default select example" id="choosesymptom" onChange="categoryChange(this)">
                          <option value="all" selected>전체보기</option>
                          <option value="eye">눈</option>
                          <option value="immunity">면역</option>
                          <option value="hair">모발</option>
                          <option value="bonejoint">뼈관절</option>
                          <option value="digestion">소화/장</option>
                          <option value="fatigue">피로감</option>
                          <option value="skin">피부</option>
                          <option value="bloodcirculation">혈액순환</option>
                      </select>
                  </fieldset>
              </div>
              <div class="col-lg-5">
                  <fieldset>
                      <select name="Vitamin" class="form-select" aria-label="Default select example" id="choosevitamin" onChange="this.form.click()">
                          <option selected>전체보기</option>
                      </select>
                  </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="amazing-deals">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-lg-3">
          <div class="section-heading text-center">
            <!-- <h1 style="color:aqua">비타민 상세정보 & 제품</h1> -->
            <p></p>
          </div>
        </div>
        <div id="CoQ-10" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/CoQ-10/CoQ-10-3.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*고혈압 개선에 추천!</span>
                  <h4>코엔자임Q10</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">90 ~ 200mg</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>고혈압 개선, 면역력 강화</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=CoQ-10">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="probiotics" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/probiotics/probiotics-3.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*변비인 사람에게 추천!</span>
                  <h4>프로바이오틱스</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">1 ~ 100억 CFU</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>장내 유익균 증식, 원활한 배변활동에 도움</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=probiotics">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="vitaminB"class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/vitamin b/vitamin b-2.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*피로한 사람에게 추천!</span>
                  <h4>비타민B</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">1.5mg</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>피로 회복, 우울증 완화</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=vitamin b">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="vitaminC" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/vitamin c/vitamin c-4.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*면역력이 부족한 사람에게 추천!</span>
                  <h4>비타민C</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">200 ~ 500mg</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>면역력 증가, 만성피로에 도움</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=vitamin c">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="vitaminD" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/vitamin d/vitamin d-3.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*성장기 아이에게 추천!</span>
                  <h4>비타민D</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">800 IU</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>면역력 증가, 뼈 튼튼</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=vitamin d">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="collagen" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/collagen/collagen-3.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*피부 걱정인 사람에게 추천!</span>
                  <h4>콜라겐</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">1000 ~ 2500mg</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>피부 건강 개선, 탈모 방지</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=collagen">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="omega3" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/omega3/omega3-3.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*직장인에게 추천!</span>
                  <h4>오메가3</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">250mg 이상</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>기억력 향상, 골다공증발생 위험 감소에 도움</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=omega3">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="lutain" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/lutein/lutein-1.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*컴퓨터 많이 접하는 사람에게 추천!</span>
                  <h4>루테인</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">20mg 미만</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>안구의 노화를 방지, 황반 건강 증진</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=lutein">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="hyaluronicAcid" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/hyaluronic acid/hyaluronic acid-2.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*관절이 걱정인 사람에게 추천!</span>
                  <h4>히알루론산</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">120 ~ 240mg</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>노화 방지, 관절통 완화에 도움</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=hyaluronic acid">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="spirulina" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/spirulina/spirulina-1.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*변비인 사람에게 추천!</span>
                  <h4>스피루리나</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">3 ~ 5g</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>혈압 감소, 변비 개선</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=spirulina">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="octacosanol" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/octacosanol/octacosanol-3.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*운동인에게 추천!</span>
                  <h4>옥타코사놀</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">17 ~ 40mg</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>에너지 형성, 피로 회복, 심폐기능 강화</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=octacosanol">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="enzyme" class="col-lg-6 col-sm-6 nutrient-items">
          <div class="item">
            <div class="row">
              <div class="col-lg-6 nutrient-bg">
                <div class="image">
                  <img src="/assets/images/pill/enzyme/enzyme-4.png">
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <div class="content">
                  <span class="info">*소화건강이 걱정인 사람에게 추천!</span>
                  <h4>발효효소</h4>
                  <div class="row">
                    <div class="col-6">
                      <i class="fa fa-regular fa-capsules"></i>
                      <span class="list">3 ~ 6g</span>
                    </div>
                    <div class="col-6">
                      <i class="fa fa-clock"></i>
                      <span class="list">1DAYS</span>
                    </div>
                  </div>
                  <p>소화 건강 증진, 원활한 배변활동에 도움</p>
                  <div class="main-button">
                    <a href="/account/ProductView.wp?product=enzyme">더 자세히 보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- <div class="col-lg-12">
          <ul class="page-numbers">
            <li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
            <li><a href="#">1</a></li>
            <li class="active"><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#"><i class="fa fa-arrow-right"></i></a></li>
          </ul>
        </div> -->
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
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="/assets/js/isotope.min.js"></script>
  <script src="/assets/js/owl-carousel.js"></script>
  <script src="/assets/js/tabs.js"></script>
  <script src="/assets/js/popup.js"></script>
  <script src="/assets/js/custom.js"></script>
  <script src="/assets/js/function.js"></script>

    <script>
    $(".option").click(function(){
      $(".option").removeClass("active");
      $(this).addClass("active"); 
    });
	
    function categoryChange(e){
      var choosevitamin_all = ["영양제 전체보기"];
      var choosevitamin_eye = ["영양제 전체보기", "루테인", "오메가3"];
      var choosevitamin_immunity = ["영양제 전체보기", "비타민C", "비타민D", "프로바이오틱스"];
      var choosevitamin_hair = ["영양제 전체보기", "비타민B", "비타민D"];
      var choosevitamin_bonejoint = ["영양제 전체보기", "비타민D", "히알루론산"];
      var choosevitamin_digestion = ["영양제 전체보기", "스피루리나", "프로바이오틱스", "효소"];
      var choosevitamin_fatigue = ["영양제 전체보기", "비타민B", "오메가3", "옥타코사놀", "코엔자임Q10"];
      var choosevitamin_skin = ["영양제 전체보기", "비타민C", "비타민D", "오메가3", "콜라겐", "히알루론산"];
      var choosevitamin_bloodcirculation = ["영양제 전체보기", "비타민B", "오메가3", "스피루리나", "코엔자임Q10"];
      var target = document.getElementById("choosevitamin");
      
      if(e.value == "all") var i = choosevitamin_all;
      else if(e.value == "eye") var i = choosevitamin_eye;
      else if(e.value == "immunity") var i = choosevitamin_immunity;
      else if(e.value == "hair") var i = choosevitamin_hair;
      else if(e.value == "bonejoint") var i = choosevitamin_bonejoint;
      else if(e.value == "digestion") var i = choosevitamin_digestion;
      else if(e.value == "fatigue") var i = choosevitamin_fatigue;
      else if(e.value == "skin") var i = choosevitamin_skin;
      else if(e.value == "bloodcirculation") var i = choosevitamin_bloodcirculation;
      
      target.options.length = 0;

      for(x in i){
        var opt = document.createElement("option");
        opt.value = i[x];
        opt.innerHTML = i[x];
        target.appendChild(opt);
      }
      
      let selectorArray = [
	  		$('#lutain'),
			$('#CoQ-10'),
			$('#probiotics'),
			$('#vitaminB'),
			$('#vitaminC'),
			$('#vitaminD'),
			$('#collagen'),
			$('#omega3'),
			$('#hyaluronicAcid'),
			$('#spirulina'),
			$('#octacosanol'),
			$('#enzyme')
	  	];
	  	
		let selectorOne = {
			all: selectorArray,
			eye: [$('#lutain'), $('#omega3')],
			immunity:[$('#vitaminC'), $('#vitaminD'), $('#probiotics')],
			hair:[$('#vitaminB'), $('#vitaminD')],
			bonejoint:[$('#vitaminD'), $('#hyaluronicAcid')],
			digestion:[$('#spirulina'), $('#probiotics'), $('#enzyme')],
			fatigue:[$('#vitaminB'), $('#omega3'), $('#octacosanol'), $('#CoQ-10')],
			skin:[$('#vitaminC'), $('#vitaminD'), $('#omega3'), $('#collagen'), $('#hyaluronicAcid')],
			bloodcirculation:[$('#vitaminB'), $('#omega3'), $('#spirulina'), $('#CoQ-10')]
		};
	  	
	  	selectorArray.forEach(function(selector){
	  		selector.addClass('d-none');
	  	});
	  	
	  	selectorOne[document.gs.Symptom.value].forEach(function(selector){
	  		selector.removeClass('d-none');
	  	});
    }
    
    function subCategoryChange(){
	    let selectorArray = {
	  		루테인:$('#lutain'),
			코엔자임Q10:$('#CoQ-10'),
			프로바이오틱스:$('#probiotics'),
			비타민B:$('#vitaminB'),
			비타민C:$('#vitaminC'),
			비타민D:$('#vitaminD'),
			콜라겐:$('#collagen'),
			오메가3:$('#omega3'),
			히알루론산:$('#hyaluronicAcid'),
			스피루리나:$('#spirulina'),
			옥타코사놀:$('#octacosanol'),
			효소:$('#enzyme')
	    };
	    
	    Object.values(selectorArray).forEach(function(selector){
	  		selector.addClass('d-none');
	  	});
	    
	    selectorArray[document.gs.Vitamin.value].removeClass('d-none');
    }
    
    document.gs.Vitamin.addEventListener('change', subCategoryChange);
    
  </script>

  </body>

</html>
