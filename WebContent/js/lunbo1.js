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
 var speed1=offset1/(time1/interval1);//每一次的位移量
 function go1(){
 if((speed1<0&&parseInt(list1.style.left)>newleft1)||(speed1>0&&parseInt(list1.style.left)<newleft1)){
 list1.style.left=parseInt(list1.style.left)+speed1+'px';
 setTimeout(go1,interval1);
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
timer=setInterval(function(){
next1.onclick();
},0);
}
function stop1(){
clearInterval(timer);
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
}