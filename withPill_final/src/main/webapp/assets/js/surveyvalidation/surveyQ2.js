function dis(){
		let answerPath = "surveyQ2";
	    let nextAnswerPath = "/survey/surveyQ3.jsp";
	    let answerCnt = $('input:radio[name=answer]:checked').length;
	   
	    if(answerCnt==0){
	    	dis1.style.display="";
	    	return; 
	    }else{
	         document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath;
	    }     
	         document.surveyQ.submit();
	         
	}