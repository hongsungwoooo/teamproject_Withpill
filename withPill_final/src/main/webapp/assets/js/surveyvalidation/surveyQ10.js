function dis(){
	let answerBad = $('input:checkbox[name=bad]:checked').length;
    let answerNone = $('input[name=none]').prop('checked');
    let answerPath = "surveyQ10";
    let nextAnswerPath = "/survey/surveyQ11.jsp";
    if(answerNone){
    	answerBad = 0;
    }
    if(answerBad==0 && !answerNone){
    	dis1.style.display="";
    	return;
    }else{
    	dis1.style.display="none";
	    document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath + "&answer="+answerBad;
    }
    
    document.surveyQ.submit();
 
 }
$(document).ready(function(){
    let $answerNone = $('input[name="none"]');
    let $answer = $('input[name="bad"]');
    $answerNone.on('click', function(){
        $answer.prop('checked', false);
    });
    $answer.on('click', function(){
        $answerNone.prop('checked', false);
    });
});