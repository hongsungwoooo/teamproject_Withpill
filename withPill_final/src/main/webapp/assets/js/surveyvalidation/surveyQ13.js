function dis(){
	let answerPath = "surveyQ13";
    let nextAnswerPath = "/survey/insertSurvey.wp";
    let dis= document.getElementById("dis");
    let answer = document.getElementById("answer").value;
	let emailck = new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
	let check = false;
	if(answer==""){
       dis1.style.display="";
    }else{
       document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath;
    }
	 if(answer==""){
	       	dis1.style.display="";
	       	check = true;
	    }else{
	    	dis1.style.display="none";
	    }
	 if(!emailck.test(answer)){
	    	dis2.style.display="";
	    	check = true;
	  	}else{
	  		dis2.style.display="none";
	  	}
	 if(check){
		 return;
	 }
       document.surveyQ.submit();
 }