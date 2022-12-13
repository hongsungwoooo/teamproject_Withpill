<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  	<meta charset="utf-8">
	<meta name="viewport" minimum-scale="1" maximum-scale="1" content="user-scalable=no;"/>
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" name="viewport" />
    <link rel="stylesheet" href="/assets/css/survey.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="/favicon/favicon.ico">
    <title>건강설문 질문|맞춤영양제 위드필</title>
</head>
<body>
    <div id="survey">
        <h1 class="only-sr">건강설문</h1>
        <div class="survey-wrap">
            <div class="survey-contents">
                <div class="survey-contents-inner">
                    <a href="/" class="close-survey" onclick="closeSurvey(''); return false;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                        <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
                      </svg>
                    </a>
                    <div class="survey-start">
                        <div class="start-header">
                            <span class="logo">
                                <img src="withpill_blue.png" alt="위드필 로고">
                            </span>
                            <h2>
                                <span class="light">위드필!</span><br>
                                내 건강을 알려줘!
                            </h2>
                        </div>
                        <div class="start-intro">
                            <p>
                                몇 가지 질문에 답하고<br>
                                나에게 필요한 영양성분을 알아보세요.<br>
                                <span>약 3분정도 소요됩니다.</span>
                            </p>
                            <div class="btn-wrap">
                                <a href="surveyQ1.jsp" id="btn-start" class="btn btn-radius btn-dark">시작하기</a>
                                <p class="warning">※질병의 진단 및 치료는 전문적인 의료기관을 이용하세요.</p>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>                 
            <footer id="footer" class="mini fafafa absolute-bottom only-pc">
                <p>ⓒ WithPill Inc. All Rights Reserved.</p>
            </footer>     
        </div>
    </div>
</body>
</html>