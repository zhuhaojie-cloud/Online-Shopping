window.onload=function(){
	var container1=document.getElementById('container1');
	var list1=document.getElementById('list1');
	var buttons1=document.getElementById('buttons1').getElementsByTagName('span');
	var pre1=document.getElementById('prev1');
	var next1=document.getElementById('next1');
	var index1=1;
	var animated1=false;
	var timer1;
	function showButton1(){
	 for(var i=0;i<buttons1.length;i++){
	  if(buttons1[i].className=='on'){
	     buttons1[i].className='';
	     break;
	    }
	 }
	 buttons1[index1-1].className="on";
	}
	function animate1(offset1){
	 animated1=true;
	 var newleft1=parseInt(list1.style.left)+offset1;
	 var time1=2000;//位移总时间
	 var interval1=10;//位移间隔时间
	 var speed1=offset1/(time1/interval1);//速度
	 function go1(){
	   if((speed1<0&&parseInt(list1.style.left)>newleft1)||(speed1>0&&parseInt(list1.style.left)<newleft1)){
	    list1.style.left=parseInt(list1.style.left)+speed1+'px';
	    setTimeout(go1,interval1);//每过一秒go一次，
	    }
	  else{
	   animated1=false;
	   list1.style.left=newleft1+'px';
	   if(newleft1>-200){
	     list1.style.left=-1200+'px'; 
	   }
	   if(newleft1<-1200){
	     list1.style.left=-200+'px'; 
	    }
	   }
	  }
	 go1();
	}
	function play1(){
	 timer1=setInterval(function(){
	   next1.onclick();
	 },0);
	}
	function stop1(){
	clearInterval(timer1);
	}
	next1.onclick=function(){
	  if(index1==8){
	   index1=1;
	  }
	  else{
	    index1+=1;
	  }
	  showButton1();
	  if(animated1==false){
	   animate1(-200);
	   }
	}
	pre1.onclick=function(){
	  if(index1==1){
	    index1=8;
	  }
	  else{
	    index1-=1;
	  }
	  showButton1();
	  if(animated1==false){
	    animate1(200);
	    }
	}

	for(var i=0;i<buttons1.length;i++){
	 buttons1[i].onclick=function(){
	  if(this.className=='on'){
	   return;
	  }
	 var myIndex1=parseInt(this.getAttribute('index1'));
	 var offset1=-200*(myIndex1-index1);
	 index1=myIndex1;
	 showButton1();
	 if(animated1==false){
	    animate1(offset1);
	 }
    }
  }
	 container1.onmouseover=stop1;
	 container1.onmouseout=play1;
	 play1();
	 /************/
var container=document.getElementById('container');
var list=document.getElementById('list');
var buttons=document.getElementById('buttons').getElementsByTagName('span');
var pre=document.getElementById('prev');
var next=document.getElementById('next');
var index=1;
var animated=false;
var timer;
function showButton(){
for(var i=0;i<buttons.length;i++){
if(buttons[i].className=='on'){
buttons[i].className='';
break;
}
}
buttons[index-1].className="on";
}
function animate(offset){
animated=true;
 var newleft=parseInt(list.style.left)+offset;
 var time=300;//位移总时间
 var interval=4;//位移间隔时间
 var speed=offset/(time/interval);//每一次的位移量
 function go(){
 if((speed<0&&parseInt(list.style.left)>newleft)||(speed>0&&parseInt(list.style.                  left)<newleft)){
 list.style.left=parseInt(list.style.left)+speed+'px';
 setTimeout(go,interval);
 }
 else{
  animated=false;
  list.style.left=newleft+'px';
          if(newleft>-897){
     list.style.left=-4485+'px'; 
           }
         if(newleft<-4485){
     list.style.left=-897+'px'; 
          }
   }
  }
 go();
}
function play(){
timer=setInterval(function(){
next.onclick();
},4000);
}
function stop(){
clearInterval(timer);
}
next.onclick=function(){
if(index==5){
index=1;
}
else{
index+=1;
}
showButton();
if(animated==false){
animate(-897);
}
}
pre.onclick=function(){
if(index==1){
index=5;
}
else{
 index-=1;
}
showButton();
if(animated==false){
   animate(897);
   }
}

for(var i=0;i<buttons.length;i++){
buttons[i].onclick=function(){
if(this.className=='on'){
return;
 }
var myIndex=parseInt(this.getAttribute('index'));
var offset=-897*(myIndex-index);
index=myIndex;
showButton();
 if(animated==false){
animate(offset);
  }
  }
 }
 container.onmouseover=stop;
 container.onmouseout=play;
 play();
 /********/
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
	          if(newleft2>-1255){
	     list2.style.left=-6275+'px'; 
	           }
	         if(newleft2<-6275){
	     list2.style.left=-1255+'px'; 
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
	animate2(-1255);
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
	   animate2(1255);
	   }
	}

	for(var i=0;i<buttons2.length;i++){
	buttons2[i].onclick=function(){
	if(this.className=='on'){
	return;
	 }
	var myIndex2=parseInt(this.getAttribute('index2'));
	var offset2=-1255*(myIndex2-index2);
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
	 /********/
		var container3=document.getElementById('container3');
		var list3=document.getElementById('list3');
		var buttons3=document.getElementById('buttons3').getElementsByTagName('span');
		var pre3=document.getElementById('prev3');
		var next3=document.getElementById('next3');
		var index3=1;
		var animated3=false;
		var timer3;
		function showButton3(){
		for(var i=0;i<buttons3.length;i++){
		if(buttons3[i].className=='on'){
		buttons3[i].className='';
		break;
		}
		}
		buttons3[index3-1].className="on";
		}
		function animate3(offset3){
		animated3=true;
		 var newleft3=parseInt(list3.style.left)+offset3;
		 var time3=300;//位移总时间
		 var interval3=4;//位移间隔时间
		 var speed3=offset3/(time3/interval3);//每一次的位移量
		 function go3(){
		 if((speed3<0&&parseInt(list3.style.left)>newleft3)||(speed3>0&&parseInt(list3.style.left)<newleft3)){
		 list3.style.left=parseInt(list3.style.left)+speed3+'px';
		 setTimeout(go3,interval3);
		 }
		 else{
		  animated3=false;
		  list3.style.left=newleft3+'px';
		          if(newleft3>-320){
		     list3.style.left=-1600+'px'; 
		           }
		         if(newleft3<-1600){
		     list3.style.left=-320+'px'; 
		          }
		   }
		  }
		 go3();
		}
		function play3(){
		timer3=setInterval(function(){
		next3.onclick();
		},4000);
		}
		function stop3(){
		clearInterval(timer3);
		}
		next3.onclick=function(){
		if(index3==5){
		index3=1;
		}
		else{
		index3+=1;
		}
		showButton3();
		if(animated3==false){
		animate3(-320);
		}
		}
		pre3.onclick=function(){
		if(index3==1){
		index3=5;
		}
		else{
		 index3-=1;
		}
		showButton3();
		if(animated3==false){
		   animate3(320);
		   }
		}

		for(var i=0;i<buttons3.length;i++){
		buttons3[i].onclick=function(){
		if(this.className=='on'){
		return;
		 }
		var myIndex3=parseInt(this.getAttribute('index3'));
		var offset3=-320*(myIndex3-index3);
		index3=myIndex3;
		showButton3();
		 if(animated3==false){
		animate3(offset3);
		  }
		  }
		 }
		 container3.onmouseover3=stop3;
		container3.onmouseout3=play3;
		 play3();
}