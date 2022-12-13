function dis(){
	let answerGood = $('input:checkbox[name=good]:checked').length;
	let answerBad = $('input:checkbox[name=bad]:checked').length;
    let answerNone = $('input[name=answernone]').prop('checked');
    let answerPath = "surveyQ9";
    let nextAnswerPath = "/survey/surveyQ10.jsp";
	let answer = answerBad-answerGood;
    
    
    if(answerNone){
    	answer = 0;
    }
    if(answerGood==0 && answerBad==0 && !answerNone){
    	dis1.style.display="";
    	return;
    }else{
    	dis1.style.display="none";
    	document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath + "&answer="+answer;
    }
    	document.surveyQ.submit();
 
 }
$(document).ready(function(){
    let $answerNone = $('input[name="none"]');
    let $answer = $('input[name="bad"]');
    let $answer1 = $('input[name="good"]');
    $answerNone.on('click', function(){
        $answer.prop('checked', false);
        $answer1.prop('checked', false);
    });
    $answer.on('click', function(){
        $answerNone.prop('checked', false);
    });
    $answer1.on('click', function(){
        $answerNone.prop('checked', false);
    });
});