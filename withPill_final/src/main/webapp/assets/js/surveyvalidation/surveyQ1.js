function dis(){
      let answerPath = "surveyQ1";
      let nextAnswerPath = "/survey/surveyQ2.jsp";
      let dis= document.getElementById("dis");
      let answer = document.getElementById("answer").value;
      if(answer==""){
         dis1.style.display="";
      }else{
//         document.surveyQ.action = "${pageContext.request.contextPath}/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath;
         document.surveyQ.action = "/survey/survey.wp?answerPath=" + answerPath + "&nextAnswerPath=" + nextAnswerPath;
      }
      if(answer==""){
          dis1.style.display="";
          return;
       }else{
          dis1.style.display="none";
       }   
         document.surveyQ.submit();
   }