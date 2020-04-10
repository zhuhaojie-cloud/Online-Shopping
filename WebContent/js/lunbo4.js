window.onload=function(){
	var container2=document.getElementById('container2');
	var list2=document.getElementById('list2');
	var buttons2=document.getElementById('buttons2').getElementsByTagName('span');
	var pre2=document.getElementById('prev2');
	var next2=document.getElementById('next2');
	var index2=1;
	var animated2=false;
	var timer2;
	function showButton2(){
	for(var i=0;i<buttons2.length;i++){
	if(buttons2[i].className=='on'){
	buttons2[i].className='';
	break;
	}
	}
	buttons2[index2-1].className="on";
	}
	function animate2(offset2){
	animated2=true;
	 var newleft2=parseInt(list2.style.left)+offset2;
	 var time2=300;//位移总时间
	 var interval2=4;//位移间隔时间
	 var speed2=offset2/(time2/interval2);//每一次的位移量
	 function go2(){
	 if((speed2<0&&parseInt(list2.style.left)>newleft2)||(speed2>0&&parseInt(list2.style.left)<newleft2)){
	 list2.style.left=parseInt(list2.style.left)+speed2+'px';
	 setTimeout(go2,interval2);
	 }
	 else{
	  animated2=false;
	  list2.style.left=newleft2+'px';
	          if(newleft2>-1000){
	     list2.style.left=-5000+'px'; 
	           }
	         if(newleft2<-5000){
	     list2.style.left=-1000+'px'; 
	          }
	   }
	  }
	 go2();
	}
	/*function play2(){
	timer=setInterval(function(){
	next.onclick();
	},4000);
	}*/
	function stop2(){
	clearInterval(timer2);
	}
	next2.onclick=function(){
	if(index2==5){
	index2=1;
	}
	else{
	index2+=1;
	}
	showButton2();
	if(animated2==false){
	animate2(-1000);
	}
	}
	pre2.onclick=function(){
	if(index2==1){
	index2=5;
	}
	else{
	 index2-=1;
	}
	showButton2();
	if(animated2==false){
	   animate2(1000);
	   }
	}

	for(var i=0;i<buttons2.length;i++){
	buttons2[i].onclick=function(){
	if(this.className=='on'){
	return;
	 }
	var myIndex2=parseInt(this.getAttribute('index2'));
	var offset2=-1000*(myIndex2-index2);
	index2=myIndex2;
	showButton2();
	 if(animated2==false){
	animate2(offset2);
	  }
	  }
	 }
	 container2.onmouseover2=stop2;
	/* container2.onmouseout=play2;*/
	 /*play2();*/
}