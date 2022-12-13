function dis(){
    let answerPath = "surveyQ3";
    let nextAnswerPath = "/survey/surveyQ4.jsp";
    let dis= document.getElementById("dis");
    let answer = document.getElementById("answer").value;
	let numck = /^[0-9]*$/;
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
	 if(!numck.test(answer)){
	    	dis2.style.display="";
	    	check = true;
	  	}else{
	  		dis2.style.display="none";
	  	}
	    
	 if(answer === 0 && answer<=10 || answer>=110){
	    	dis3.style.display="";
	    	check = true;
	    }else{
	    	dis3.style.display="none";
	    }
	 if(check){
		 return;
	 }
       document.surveyQ.submit();
 }