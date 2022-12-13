/**
 * 
 */
 
 function paintBmiSpan(bmi){
	let bmi_span = document.getElementsByClassName('bmi-span');

	bmi_span.forEach(span => {
		span.classList.remove('on');
	});
	
	if(bmi <= 18.5){
		bmi_span[0].classList.add('on');	
	} else if(bmi <= 24.9){
		bmi_span[1].classList.add('on');	
	} else if(bmi <= 29.9){
		bmi_span[2].classList.add('on');	
	} else if(bmi <= 34.9){
		bmi_span[3].classList.add('on');	
	} else if(bmi > 35){
		bmi_span[4].classList.add('on');	
	}
}
