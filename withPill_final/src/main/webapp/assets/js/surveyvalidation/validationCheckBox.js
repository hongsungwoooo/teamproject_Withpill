let answerArray = Array.from(document.querySelectorAll('input[name=answer]'));
let none = answerArray.pop();

function answerChange(event){
   if(event.target == none && event.target.checked == true){
      answerArray.forEach(answer => answer.checked = false);
   }
   
   if(event.target != none){
      none.checked = false;
   }
}
	
answerArray.forEach(function(answer){
	answer.addEventListener('change', answerChange);
});
	
none.addEventListener('change', answerChange);

