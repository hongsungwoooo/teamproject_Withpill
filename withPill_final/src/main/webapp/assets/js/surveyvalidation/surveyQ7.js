function dis(){
	let answerCount = $('input:checkbox[name=answer]:checked').length;
    let answerPath = "surveyQ7";
    let nextAnswerPath = "/survey/surveyQ8.jsp";
    let answernone = $('input[name=answernone]').prop('checked');
    let answerNoneCk = $('input[name=answernone]').checked
    if(answernone){
    	answerCount=0;
    }
    if(answerCount==0 && !answernone){
    	dis1.style.display="";
    	return;
    }else{
    	dis1.style.display="none";
    document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath + "&answer="+answerCount;
    }
    document.surveyQ.submit();
    
    /* alert(document.surveyQ.action); */
 }
$(document).ready(function(){
    var $answerNone = $('input[name="answernone"]');
    var $answer = $('input[name="answer"]');
    $answerNone.on('click', function(){
        $answer.prop('checked', false);
    });
    $answer.on('click', function(){
        $answerNone.prop('checked', false);
    });
});