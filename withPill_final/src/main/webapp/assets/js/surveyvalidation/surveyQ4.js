function dis(){
	let answerResult = $.map($(':checkbox[name=answer]:checked'), function(n, i){
	      return n.value;
	}).join(',');
	let answerPath = "surveyQ4";
	let nextAnswerPath = "/survey/surveyQ5.jsp";
	let answerCnt = $('input:checkbox[name=answer]:checked').length;
	let answer = document.getElementById("answer").value;
	let check = false;
       
	if(answerResult==0){
		
	   		document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath;
	}else{
	   		document.surveyQ.action = "/survey/surveydetail.wp?answerResult="+answerResult;
	}

	if(answerCnt>3){
		dis2.style.display="";
		return;
	}else{
		dis2.style.display="none";
	}
		
	if(answerCnt==0){
		dis1.style.display="";
		return;
	}else{
		dis1.style.display="none";
	}
	
	   document.surveyQ.submit();
 
 }