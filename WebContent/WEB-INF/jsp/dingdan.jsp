<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style>
   .pos_icon {
  color: #000;
  position: absolute;
  margin-left: 4px;
  margin-top: 2px;
  width: 12px;
  height: 12px;
  border: solid 1px currentColor;
  border-radius: 7px 7px 7px 0;
  background-color: currentColor;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}

.pos_icon:before {
  content: '';
  position: absolute;
  left: 3px;
  top: 3px;
  width: 4px;
  height: 4px;
  color: white;
  border: solid 1px currentColor;
  border-radius: 3px;
  background-color: currentColor;
}
.time_icon {
  color: #000;
  position: absolute;
  margin-left: 2px;
  margin-top: 2px;
  width: 15px;
  height: 15px;
  background-color: currentColor;
  border: solid 1px currentColor;
  border-radius: 8px;
}

.time_icon:before {
  content: '';
  position: absolute;
  top: 7px;
  left: 7px;
  width: 5px;
  height: 1px;
  color: white;
  background-color: currentColor;
  -webkit-transform-origin: 0% 0%;
          transform-origin: 0% 0%;
}

.time_icon:after {
  content: '';
  position: absolute;
  top: 2px;
  left: 7px;
  width: 1px;
  height: 6px;
  color: white;
  background-color: currentColor;
  -webkit-transform-origin: 0% 0%;
          transform-origin: 0% 0%;
}
.heart_icon {
  color: #000;
  position: absolute;
  margin-top: 6px;
  margin-left: 5px;
  width: 9px;
  height: 9px;
  border-left: solid 1px currentColor;
  border-bottom: solid 1px currentColor;
  background-color: currentColor;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}

.heart_icon:before {
  content: '';
  position: absolute;
  top: -5px;
  left: -1px;
  width: 8px;
  height: 5px;
  border-radius: 5px 5px 0 0;
  border-top: solid 1px currentColor;
  border-left: solid 1px currentColor;
  border-right: solid 1px currentColor;
  background-color: currentColor;
}

.heart_icon:after {
  content: '';
  position: absolute;
  top: 0px;
  left: 8px;
  width: 5px;
  height: 8px;
  border-radius: 0 5px 5px 0;
  border-top: solid 1px currentColor;
  border-right: solid 1px currentColor;
  border-bottom: solid 1px currentColor;
  background-color: currentColor;
}
</style>
<body style="margin:0;padding:0;">
   <div id="time_xiang" style="text-align:center;position:absolute;width:92px;height:100px;background: #cff;display:none;top:30px;left:35px;"></div>
    <div class="top" style="width:100%;height:30px;background:#f8f8f8;color:#5e5e5e;">
       <ul class="left" style="list-style: none;margin:0;padding:0;">
          <li style="float:left;margin-right:50px;width:300px">
             <div id="pos" class="pos" style="width:100px;height:30px;float:right;">
                <div class="pos_icon"></div>
                <div></div>
             </div>
             <div id="time" onmouseenter="my17mouseenter()" onmouseleave="my17mouseleave()" style="width:110px;height:30px;float:left;margin-left:10px">
                <div class="time_icon"></div>
                <div id="time1" style="width:90px;margin-left:30px;"></div>
             </div>
          </li>
          <li style="float:right;margin-right:50px;">

          </li>
          <li style="float:right;margin-right:50px;">我的订单</li>
          <li style="float:right;margin-right:50px;height:30px" id="gouwuche" onmouseenter="my18mouseenter()" onmouseleave="my18mouseleave()">我的购物车</li>
          <li style="float:right;margin-right:50px;">
             <div class="heart_icon"></div>                 
             <div style="padding-left:24px;">心愿单</div>
          </li>
          <li style="float:right;margin-right:50px;">服务中心</li>
       </ul>      
   </div>
   <div style="width:100%;height:100px;background: #ff5757;">
      <div style="width:30%;height:100%;background: #dcc;float:left;"></div>
      <div style="width:40%;height:100%;background: #dca;float:left;">
        <div style="width:20%;height:100%;float:left;color:#fff;padding-top:30px"><center>按带</center></div>
        <div style="width:20%;height:100%;float:left;color:#fff;padding-top:30px"><center>按带</center></div>
        <div style="width:20%;height:100%;float:left;color:#fff;padding-top:30px"><center>按带</center></div>
        <div style="width:20%;height:100%;float:left;color:#fff;padding-top:30px"><center>按带</center></div>
        <div style="width:20%;height:100%;float:left;color:#fff;padding-top:30px"><center>按带</center></div>
      </div>
      <div style="width:30%;height:100%;background: #dac;float:left;">
        <form style="font-weight:400;margin-top:30px;padding:0;position:relative;">
           <input type="text" style="width:200px;height:28px;padding: 5px 0px 5px 10px;float: left;border: none;color: #5e5e5e;background: #ffffff;border-radius:5px 0px 0px 5px;">
           <buttom style="left:210px;width:38.5px;height:38.5px;border:none;cursor:pointer;border-radius:0px 5px 5px 0px;position: absolute;background: url(images/sou.gif) no-repeat;background-size:38.5px 38.5px;"></buttom>
        </form>
      </div>
   </div>
   
</body>
<script>
var time_xiang=document.getElementById('time_xiang');
function my17mouseenter(){
	  time_xiang.style.display="block";
 }
function my17mouseleave(){
	   time_xiang.style.display="none";
}
function getRTime(){
    var NowTime = new Date();
    var d=NowTime.toLocaleDateString();
    var x=NowTime.getDay();
    var t =NowTime.toLocaleTimeString();
    var weekday=["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
    document.getElementById("time1").innerHTML =d;
    document.getElementById("time_xiang").innerHTML =weekday[x]+d+t;
   
}
setInterval(getRTime,1000);
</script>
</html>