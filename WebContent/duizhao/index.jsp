<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.util.*" import="java.util.*" import="swu.xxj.entity.*" import="swu.xxj.test.Test" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  int user_id=(Integer)session.getAttribute("user_id");
  session.setAttribute("user_id", user_id);
  
  List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
  List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
  
  commodity_infor_list=(ArrayList<Commodity_infor>)request.getAttribute("commodity_infor_list");
  gouwuche_list=(ArrayList<Gouwuche>)request.getAttribute("gouwuche_list"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>对比栏</title>
 <link href="css/style.css" rel="stylesheet"/>
    <link href="css/style4.css" rel="stylesheet"/>
    <script src="js/lunbo4.js"> </script>
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
.profile_icon {
  color: #000;
  position: absolute;
  margin-left: 3px;
  margin-top: 11px;
  width: 14px;
  height: 6px;
  border-left: solid 1px currentColor;
  border-right: solid 1px currentColor;
  border-top: solid 1px currentColor;
  border-bottom: solid 1px transparent;
  background-color: currentColor;
  border-radius: 6px 6px 0 0;
}

.profile_icon:before {
  content: '';
  position: absolute;
  left: 2px;
  top: -10px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  border: solid 1px currentColor;
  background-color: currentColor;
}
.celan_xuanzhong{
   background:#ccc;
}
#gouwuche:hover{
   background:#fff;
   box-shadow:0 0 18px rgba(0,0,0,.09);
}
.pinpai_name{
   z-index:3;
   width:78px;
   height:38px;
   padding-top:10px;
   padding-left:40px;
}
.pinpai_img{
   z-index:1;
   width:118px;height:48px;
}
.commodity{
float:left;
height:400px;
width:220px;
padding: 10px;
border: 1px solid #fff;
transition: border .1s ease 0s;"
}
.commodity:hover{
    border: 1px solid #e3101e;
}
.commodity_a span{
     float: left;
    width: 51px;
    height: 24px;
    border: 1px solid #ddd;
    cursor: pointer;
}
.commodity_a span img{
  margin-left:15px;
}
</style>
<script type="text/javascript">

</script>
<body style="margin:0;padding:0;">
  <div id="gouwuche1" onmouseenter="my_18mouseenter()" onmouseleave="my_18mouseleave()" style="z-index:5;padding:5px;position:absolute;display:none;right:35px;top:30px;width:300px;background:#fff;box-shadow: 0 0 18px rgba(0,0,0,.09);">
     <%if(!gouwuche_list.isEmpty()){
	    	  for(Gouwuche map:gouwuche_list){ %>
	    	  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>">
	    	  <div style="width:100%;margin-bottom:5px;height:75px;cursor:pointer;" class="gouwuchehshangpin">
	    	     <div style="float:right;width:80%;height:75px;">
	    	       <div style="width:100%;height:80%;">
	    	          <p><%=map.getCommodity_name() %></p>
                   </div>
	    	       <div style="width:100%;height:20%;">
	    	          <a href="${pageContext.request.contextPath}/Delete?action=gouwuche&id=<%=map.getId() %>" style="float:right;width:60px;">删除</a>
	    	          <p style="float:right;width:90px"><%=map.getNumber() %></p>
	    	          <p style="float:right;width:90px">￥ <%=map.getPrice() %></p>
	    	       </div>
	    	     </div>
	    	     <div style="float:left;width:20%;height:75px;">
	    	       <img src="<%=map.getCommodity_image() %>" style="width:100%;height:100%">
	    	     </div>
	    	  </div>
	    	  </a>
	    	  <%
	    	    }
     }
	  else{%> <div style="height:90px;width:100%">
	  	       <p>购物车中还没有商品</p>
	  	    </div>	    
	     <%} %>
   
     
  </div>
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
          <li style="float:right;margin-right:50px;"><a href="../dingdan/dingdan.html" style="text-decoration: none">我的订单</a></li>
          <li style="float:right;margin-right:50px;height:30px" id="gouwuche" onmouseenter="my18mouseenter()" onmouseleave="my18mouseleave()"><a href="${pageContext.request.contextPath}/Gouwuche1">我的购物车</a></li>
          <li style="float:right;margin-right:50px;">
             <div class="heart_icon"></div>                 
             <div style="padding-left:24px;">心愿单</div>
          </li>
          <li style="float:right;margin-right:50px;">服务中心</li>
       </ul>      
   </div>
    <div class="search" style="width:100%;height:100px;margin:0 auto;">
       <ul style="list-style: none;">
          <li style="float:left;width:25%;height:100px;">
             <img src="images/logo.png" style="width:80px;height:80px;margin:10px 0px 0 200px">
          </li>
          <li style="float:left;width:40%;height:40px;background:;padding:30px;">
            <div style="border:1px solid #dd00a7;width:529px;margin:0 auto;">
              <div style="float:left;z-index: 9;position: absolute;">
                <div id="search_choose" onmouseenter="my0mouseenter()" onmouseleave="my0mouseleave()" style="border-right:1px solid #dd00a7;height:27px;padding:3px 10px 3px 20px;">商品&#9660;</div>
                <ul class="search_lei" onmouseenter="my0mouseenter()" onmouseleave="my0mouseleave()" style="margin:0;padding:0;list-style:none;display:none;border:1px solid #dd00a7;disborder-top:0px;background:#fff;" id="search_lei" >
                  <li id="shangpin">商品</li>
                  <li id="dianpu">店铺</li>
                  <li id="huati">话题</li>
                  <li id="quanzi">圈子</li>
                </ul> 
              </div>
              <div>
              <form style="margin:0;padding:0;">
               <input type="text" style="height:32px;width:70%;padding:-2px 0px 0px 0px;margin:0px 0px 0px 79px;border-width: 0px;">
               <button style="height:34px;width:79px;cursor:pointer;margin-left:-4.5px;padding:2px 6px 4px 6px;">搜索</button>
              <!-- js函数，设置 默认搜索词，每三秒换一个-->
              </form>
             </div>
           </div>
          </li>
          <li style="float:left;width:25%;height:100px;background:;">
             
          </li>
       </ul>
   </div>
   <div style="width:100%;height:30px;background: #cdd">
       <a href="${pageContext.request.contextPath}/Home" style="text-decoration: none;margin-left:200px">首页</a>
   </div>
   
<div style="width:80%;margin:0 auto;">
     <div style="width:100%;height:30px;background: #cdd;">
        基本信息对比
     </div>
     <table style="margin-top:-1px;border-collapse:collapse;border:1px solid #ddd;border-top:none;table-layout:fixed;width: 100%;">
       <tbody>
         <tr style="border: 1px solid #ddd;">
           <td style="width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;"><span style="color: #686868;font-size: 15px;">商品图片</span></td>
             <%int i=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i++;%>
           <td style="text-align: center;padding: 9px 12px;color: #686868;font-weight: 400; border: 1px solid #ddd;">
             <p style="padding: 5px 0;">
               <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>">
                <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:50%;height: 100px;border: none;vertical-align: middle;">
               </a>
             </p>
             <p>
               <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>"><%=map.getCommodity_name() %></a>
             </p>
           </td>
           <%}} %>
           <%for(int j=1;j<=4-i;j++){ %>
           <td style="text-align: center;padding: 9px 12px;color: #686868;font-weight: 400; border: 1px solid #ddd;">
             <div style="width:100%;height:100%;color:#cbcbcb;font-size: 19.5pt;font-weight: 400;padding: 8px 0;">暂无对比项</div>
           </td>
           <%} %>
         </tr>
         <tr style="height:36px; border: 1px solid #ddd;width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;">
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;"><span>商品价格</span></td>
             <%int i1=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i1++;
	    		%>
           <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;">￥<%=map.getPrice() %></td>
           <%}} %>
        <%for(int j=1;j<=4-i1;j++){ %>
        <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;"></td>
         <%} %>
         </tr>
         <tr style="height:36px; border: 1px solid #ddd;width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;">
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;"><span>商品品牌</span></td>
            <%int i2=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i2++;
	    		 %>
           <td style=" text-align: center;border: 1px solid #ddd;font-weight: 700;color: #686868;font-size: 15px;"><%=map.getCommodity_name() %></td>
           <%}} %>
            <%for(int j=1;j<=4-i2;j++){ %>
        <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;"></td>
         <%} %>
         </tr>
         <tr style="height:36px;border: 1px solid #ddd;width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;">
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;"><span>商品产地</span></td>
           <%int i3=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i3++;
	    		 %>
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;font-weight: 700;">￥<%=map.getPrice() %></td>
           <%}} %>
            <%for(int j=1;j<=4-i3;j++){ %>
        <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;"></td>
         <%} %>
         </tr>
         <tr>
         <tr style="height:36px;border: 1px solid #ddd;width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;">
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;"><span>上市时间</span></td>
         <%int i4=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i4++;
	    		%>
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;font-weight: 700;">￥<%=map.getPrice() %></td>
           <%}} %>
            <%for(int j=1;j<=4-i4;j++){ %>
        <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;"></td>
         <%} %>
         </tr>
         <tr style="height:36px;border: 1px solid #ddd;width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;">
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;"><span>入网许可证</span></td>
           <%int i5=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i5++;
	    		 %>
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;font-weight: 700;">￥<%=map.getPrice() %></td>
           <%}} %>
            <%for(int j=1;j<=4-i5;j++){ %>
        <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;"></td>
         <%} %>
         </tr>
        <tr style="height:36px;border: 1px solid #ddd;width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;">
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;"><span>已售出</span></td>
          <%int i6=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i6++;
	    		 %>
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;font-weight: 700;">￥<%=map.getPrice() %></td>
           <%}} %>
            <%for(int j=1;j<=4-i6;j++){ %>
        <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;"></td>
         <%} %>
         </tr>
         <tr style="height:36px;border: 1px solid #ddd;width: 9.8%;padding: 9px 20px 9px 30px;text-align: left;">
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;"><span>运行内存</span></td>
           <%int i7=0;
             if(!commodity_infor_list.isEmpty()){
	    	  for(Commodity_infor map:commodity_infor_list){
	    		  i7++;
	    		 %>
           <td style=" text-align: center;border: 1px solid #ddd;color: #686868;font-size: 15px;font-weight: 700;">￥<%=map.getPrice() %></td>
           <%}} %>
            <%for(int j=1;j<=4-i7;j++){ %>
        <td style=" text-align: center;border: 1px solid #ddd;color:rgb(227, 16, 30);font-weight: 700;"></td>
         <%} %>
         </tr>
       </tbody>
     </table>
</div> 
</body>
<script>
var time_xiang=document.getElementById('time_xiang'),
    gouwuche=document.getElementById('gouwuche'),
    search_lei=document.getElementById('search_lei'),
    gouwuche1=document.getElementById('gouwuche1');
function my0mouseenter(){
	   search_lei.style.display="block";
}
function my0mouseleave(){
	   search_lei.style.display="none";
}
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
/********/
function my_18mouseleave(){
	   gouwuche1.style.display="none";
	   gouwuche.style.background="#f8f8f8";
	   gouwuche.style.boxshadow="";
}
function my18mouseleave(){
	   gouwuche1.style.display="none";
}
function my_18mouseenter(){
    gouwuche1.style.display="block";
	   gouwuche.style.background="#fff";
	  gouwuche.style.boxShadow="0 0 18px rgba(0,0,0,.09)";
  }
function my18mouseenter(){
	  
	   gouwuche1.style.display="block";
	   }
 /*   var f = function(v){  
	            return function(){  
	                if(v == 5){
	                    
	gouwuche1.style.display="block";
	                }else{  
	           
	                }  
	            };  
	       };  
	       for(var i = 1; i < 6; i++){  
	           setTimeout(f(i), i*1000);  
	       }*/
</script>
</html>