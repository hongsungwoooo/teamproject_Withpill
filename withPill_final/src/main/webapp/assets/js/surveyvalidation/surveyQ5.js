function dis(){
    let answerPath = "surveyQ5";
    let nextAnswerPath = "/survey/surveyQ6.jsp";
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
	    
	 if(answer === 0 && answer<=100 || answer>=250){
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