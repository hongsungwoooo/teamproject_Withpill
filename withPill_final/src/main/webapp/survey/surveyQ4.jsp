<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int surveyNum = (int)(session.getAttribute("surveyNum"));
	session.setAttribute("surveyNum", surveyNum+1);

%>      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                    <div class="survey-test">
                        <nav class="survey-test-header">
                            <h2 class="only-sr">건강설문 단계</h2>
                            <ul class="step-list-wrap">
                                <li data="기본정보"><span>기본정보</span></li>
                                <li data="증상/불편"  class="on"><span>증상/불편</span></li>
                                <li data="생활습관"><span>생활습관</span></li>
                                <li data="기타"><span>기타</span></li>
                            </ul>
                        </nav>
                        <form name="surveyQ" action="/survey/surveydetail.wp" method="POST">
                        <div class="survey-progress">
                            <div id="survey-progress-rate"></div>
                        </div>
                        <div class="survey-question-contents">
                            <h2 class="only-sr">건강설문 질문</h2>
                            <section class="question-section">
                                <em id="qNum">질문 <%=surveyNum %></em>
                                <h2 class="qTitle" maxallowed="1">
                                    <p>${answerMap['surveyQ1'] }님이 불편하시거나 걱정되는 3가지를 선택하세요.</p>
                                    <span class=""></span>
                                </h2>
                                <p id="qContent"></p>
                                <ul class="question-answer-wrap" >
                                    <li>
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="1" data-only="null">		
                                            <span></span>혈관/혈액순환</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="2" data-only="null">	
                                    	    <span></span>소화/장</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="3" data-only="null">	
                                    	    <span></span>눈</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="4" data-only="null">	
                                    	    <span></span>피로감</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="5" data-only="null">	
                                    	    <span></span>뼈와 관절</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="6" data-only="null">	
                                    	    <span></span>면역</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="7" data-only="null">	
                                    	    <span></span>모발</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="8" data-only="null">	
                                    	    <span></span>피부</label>
                                    </li>
                                    <li>	
                                        <label class="label-radio label-question">		
                                            <input type="checkbox" class="input-radio input-answer" name="answer" id="answer" value="0" data-only="null">	
                                    	    <span></span>선택할 것이 없어요.</label>
                                    </li>
                                </ul>
                                <div id="dis1" style="display:none;" class="question-input-val">
                                              <span>※답변을 선택해주세요.</span>
                                </div>
                                <div id="dis2" style="display:none;" class="question-input-val">
                                              <span>※3가지만 선택해주세요.</span>
                                </div>
                            </section>
                        </div>
                        </form>
                        <div class="survey-errormsg"></div>
                        <div class="survey-errormsg"></div>
                        <div class="survey-question-footer">
                            <a href="javascript:history.go(-1)"><button id="btn-prev" class="btn btn-radius">이전</button></a>
                            <a href="javascript:dis()"><button id="btn-next" class="btn btn-radius btn-dark">다음</button></a>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="/assets/js/surveyvalidation/validationCheckBox.js"></script>
<script src="/assets/js/surveyvalidation/surveyQ4.js"></script>
</html>