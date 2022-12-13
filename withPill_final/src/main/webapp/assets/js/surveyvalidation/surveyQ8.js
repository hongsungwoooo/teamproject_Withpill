function dis(){
    let answerPath = "surveyQ8";
    let nextAnswerPath = "/survey/surveyQ9.jsp";
    let answerCnt = $('input:radio[name=answer]:checked').length;

    if(answerCnt==0){
    	dis1.style.display="";
    	return;
    }else{
         document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath;
    }     
         document.surveyQ.submit();
 
 }