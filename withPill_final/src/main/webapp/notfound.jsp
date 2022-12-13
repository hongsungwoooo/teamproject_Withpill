<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" minimum-scale="1" maximum-scale="1" content="user-scalable=no;"/>
  <meta content="yes" name="apple-mobile-web-app-capable" />
  <meta content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" name="viewport" />
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
  <link rel="shortcut icon" href="favicon/favicon.ico">
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
  <link rel="stylesheet" href="/assets/css/notfound.css">
  <link rel="stylesheet" href="/assets/css/index.css">
</head>
<body>
    <%@ include file ="/layout/header.jsp" %>

    <div class="not-found-wrap">
        <img src="assets\images\notfound.png" alt="">
        <div class="not-found-txt">
            <p>
                찾을 수 없는 페이지 입니다. <br>
                요청하신 페이지가 사라졌거나, 잘못된 경로를 이용하셨습니다.
            </p>
        </div>
        <div class="go-home" onclick="location.href='/';">
            <button>홈으로 이동</button>
        </div>
    </div>

    <%@ include file ="/layout/footer.jsp" %>
</body>
</html>