function dis(){
		let answerCnt = $('input:checkbox[name=answer]:checked').length;
		if(answerCnt==0){
			dis1.style.display="";
			return;
		}else{
			location.href="/survey/surveyQ13.jsp";
		}
	}