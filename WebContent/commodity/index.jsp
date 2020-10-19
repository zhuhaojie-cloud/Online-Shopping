<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  int user_id=(Integer)session.getAttribute("user_id");
  session.setAttribute("user_id", user_id);
  int commodity_id=(Integer)request.getAttribute("commodity_id");
  
  List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
  gouwuche_list=(ArrayList<Gouwuche>)request.getAttribute("gouwuche_list"); 
  
  List<Commodity_image> commodity_image_list=new ArrayList<Commodity_image>();
  commodity_image_list=(ArrayList<Commodity_image>)request.getAttribute("commodity_image_list"); 
  
   Commodity_infor commodity_infor=new Commodity_infor();
   commodity_infor=(Commodity_infor)request.getAttribute("commodity_infor"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=commodity_infor.getCommodity_name() %></title>
</head>
<style>
body{
	margin: 0 auto;
}
a{
	text-decoration: none;
}
h6,h3,p{
 margin:0px;
}
 .search_lei li{
   padding:4px 20px;
   
 }
 .search_lei li:hover{
   background: #BEBEBE;
 }
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
#gouwuche:hover{
   background:#fff;
   box-shadow:0 0 18px rgba(0,0,0,.09);
}
#right1{
  border: 1px solid #e3101e;
}
#right2{
  border: 1px solid #fff;
}
#right3{
  border: 1px solid #fff;
}
#left1_1_b,#left1_6_b,#left1_11_b{
display:block;
}
#left1_2_b,#left1_3_b,#left1_4_b,#left1_5_b,#left1_7_b,#left1_8_b,#left1_9_b,#left1_10_b,#left1_15_b,#left1_12_b,#left1_13_b,#left1_14_b{
display:none;
}
#left1_1,#left1_6,#left1_11{
border:1px solid #e3101e;
}
#left1_2,#left1_3,#left1_4,#left1_5,#left1_7,#left1_8,#left1_9,#left1_10,#left1_12,#left1_13,#left1_14,#left1_15{
border:1px solid #fff;
}
</style>
<body>
<div id="gouwuche1" onmouseenter="my_18mouseenter()" onmouseleave="my_18mouseleave()" style="padding:5px;position:absolute;display:none;right:35px;top:30px;width:300px;height:90px;background:#fff;box-shadow: 0 0 18px rgba(0,0,0,.09);">
       <%if(!gouwuche_list.isEmpty()){
	    	  for(Gouwuche map:gouwuche_list){ %>
	    	  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>">
	    	  <div style="width:100%;margin-bottom:5px;height:75px;cursor:pointer;" class="gouwuchehshangpin">
	    	     <div style="float:right;width:80%;height:75px;">
	    	       <div style="width:100%;height:80%;">
	    	          <p><%=map.getCommodity_name() %></p>
                   </div>
	    	       <div style="width:100%;height:20%;">
	    	         <a href="${pageContext.request.contextPath}/Delete?action=home_gouwuche&id=<%=map.getId() %>" style="float:right;width:60px;">删除</a>
	    	          <p style="float:right;width:90px"><%=map.getNumber() %></p>
	    	          <p style="float:right;width:90px">￥ <%=map.getPrice() %></p>
	    	       </div>
	    	     </div>
	    	     <div style="float:left;width:20%;height:75px;">
	    	       <img src="${pageContext.request.contextPath}/<%=map.getCommodity_image() %>" style="width:100%;height:100%">
	    	     </div>
	    	  </div>
	    	  </a>
	    	  <%
	    	    }
     }
	  else{%> <div style="height:80px;width:100%">
	  	       <p style="margin-top:20px;"><a href="${pageContext.request.contextPath}/Gouwuche1">购物车</a>中还没有商品</p>
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
          <li style="float:right;margin-right:50px;"><a href="../dingdan/dingdan.html">我的订单</a></li>
           <%if(user_id==0) {%>
<li style="float:right;margin-right:50px;height:30px" id="gouwuche" onmouseenter="my18mouseenter()" onmouseleave="my18mouseleave()"><a href="${pageContext.request.contextPath}/login/login.jsp">我的购物车</a></li>
           <%}else{ %>
           <li style="float:right;margin-right:50px;height:30px" id="gouwuche" onmouseenter="my18mouseenter()" onmouseleave="my18mouseleave()"><a href="${pageContext.request.contextPath}/Gouwuche1">我的购物车</a></li>
           <%} %>
          
          
          <li style="float:right;margin-right:50px;">
             <div class="heart_icon"></div>                 
             <div style="padding-left:24px;">心愿单</div>
          </li>
          <%if(user_id==0) {%>
          <li style="float:right;margin-right:50px;"><a href="${pageContext.request.contextPath}/login/login.jsp">服务中心</a></li>
           <%}else{ %>
           <li style="float:right;margin-right:50px;"><a href="${pageContext.request.contextPath}/Kefu" target="_blank">服务中心</a></li>
           <%} %>
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
   <div style="background: #333333;width: 100%;height: 30px">
         <a href="${pageContext.request.contextPath}/Home?pageNum=1" style="margin-left:200px;color:#fff">首页</a>
   </div>
   <div style="width:100%;height:30px;background: #f6f6f6"></div>
   <div style="width:80%;height:630px;margin: 0 auto;">
      <div style="width:65%;height:630px;float:right">
       <%if(user_id==0){ %>
       <form method="post" action="${pageContext.request.contextPath}/login/login.jsp">
          <%}else{ %>
      <form method="post" action="${pageContext.request.contextPath}/Goumai?commodity_id=<%=commodity_infor.getCommodity_id() %>">
                  <%} %>
        
          <div style="width:80%;height:70px;margin: 0 auto">
            <h3><%=commodity_infor.getCommodity_name() %></h3>
            <h6><%=commodity_infor.getDescribe() %></h6>
          </div>
          <div style="width:80%;height:80px;margin: 0 auto;background: #f8f8f8">
             <p>心动价：￥<%=commodity_infor.getPrice() %></p>
             <br>
             <p>领卷：</p>
          </div>
          <div style="width:80%;height:400px;margin: 0 auto">
              <div style="width: 100%;height:50px;background: #f8f8f8">
                 <div style="float:right;width:85%;margin-top:8px">智能</div>
                 <div style="float:left;width:15%"><p style="margin:10px 0px 0 20px;color:#888">特色</p></div>
              </div>
              <div style="width: 100%;height:100px;background:#f8f8f8">
                  <div style="float:right;width:85%;margin-top:8px">重庆市 荣昌区</div>
                 <div style="float:left;width:15%"><p style="margin:10px 0px 0 20px;color:#888">送至</p></div>
              </div>
              <div style="width: 100%;height:50px;background:#f8f8f8">
                  <div style="float:right;width:85%;margin-top:8px"><%=commodity_infor.getFuwu() %></div>
                 <div style="float:left;width:15%"><p style="margin:10px 0px 0 20px;color:#888">服务</p></div>
              </div>
              <div style="width: 100%;height:80px;background:#f8f8f8;padding-top:20px;">
                 <div style="float:right;width:85%">
                     <%if(!commodity_image_list.isEmpty()){
                    	 int i=0,j=0;
	    	  for(Commodity_image map:commodity_image_list){ 
	    		      i++;
	    		      if(i==1||i==6||i==11){
	    		      j++;
	    		  %>
	    		     <input id="yan<%=j %>" name="yanse" type="radio" value="<%=map.getImage() %>" style="display:none;">
	    		     <input id="xuan<%=j %>" name="lei" type="radio" value="<%=map.getLei() %>" style="display:none;">
	    	       <div id="right<%=j %>" style="margin-right:5px;width:98px;height:51px;float:left;background: #fff;">
                      <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:50%;height:100%;float:left">
                      
                      <p style="float:left;margin-top:10px"><%=map.getLei() %></p>
                   </div>
	    	  
	    	  <%  }
	    	 }} %>
                 </div>
                 <div style="float:left;width:15%"><p style="margin:10px 0px 0 20px;color:#888">颜色</p></div>
              </div>
              <div style="width: 100%;height:100px;background: #f8f8f8">
                  <div style="float:right;width:85%;margin-top:8px"></div>
                <div style="float:left;width:15%"><p style="margin:10px 0px 0 20px;color:#888">延保服务</p></div>
              </div>
          </div>
          <div style="padding-top:20px;width:80%;height:60px;background: #f0f0f0;margin:0 auto">
             <div style="position: relative;float: left;width: 46px;height: 38px;border: 1px solid #ccc;margin-left: 20px;">
                <input id="count" name="counts" value="1" type="text" style="width: 32px;border: none;display: block;line-height: 38px;text-align: center;float: left;height: 38px;color: #5e5e5e;">
                <a id="jian" style=" text-decoration: none;cursor: pointer; display: block;float: left;width: 13px;height: 18px;border-left: 1px solid #ccc;line-height: 18px;text-align: center;border-bottom: 1px solid #ccc;color: #5e5e5e;background: #f8f8f8;">-</a>
                <a id="jia" style=" text-decoration: none;cursor: pointer; display: block;float: left;width: 13px;height: 18px;border-left: 1px solid #ccc;line-height: 18px;text-align: center;border-bottom: 1px solid #ccc;color: #5e5e5e;background: #f8f8f8;">+</a>
             </div>
             <input type="submit" value="加入购物车" style="background-color: #d7000f;height:40px;border:0;width:90px;color:#fff;">
          </div>
          </form>
      </div>
      <div style="width:35%;height:630px;float:left;display:block;" id="left1"> 
         <div style="width:100%;height:500px">
         <%if(!commodity_image_list.isEmpty()){
                    	 int i=0,j=0;
	    	  for(Commodity_image map:commodity_image_list){ 
	    	       i++;
	    	       if(i>0&&i<6){
	    	  %>
             <img id="left1_<%=i %>_b" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%;">
             <%}}} %>
         </div>
         <div style="width:100%;height:100px">
              <%if(!commodity_image_list.isEmpty()){
                    	 int i=0,j=0;
	    	  for(Commodity_image map:commodity_image_list){ 
	    	       i++;
	    	       if(i>0&&i<6){
	    	  %>
	    	<div style="float:left;margin:0 auto;width:20%;height:100%;">
               <div id="left1_<%=i %>" style="margin:0 auto;width:60%;margin-top:20px;height:60px;">
                <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%;">
               </div>
             </div>
	    	  <%}}}%>
         </div>
         <div style="width:100%;height:30px;">
            <div style="float:right;width:60%;color: #5e5e5e;font-size: 15px;">
               <div style="float:right;margin-left:15px;"><a href="">分享</a></div>
               <div style="float:right;margin-left:15px;"><a href="">提心愿</a></div>
               <div style="float:right;margin-left:15px;">
                   <%if(user_id==0){ %>
                  <a style="float:right" href="${pageContext.request.contextPath}/login/login.jsp">收藏</a>
                  <%}else{ %>
                 <a style="float:right" href="${pageContext.request.contextPath}/Shoucang_shangpin1?action=shangpin&commodity_id=<%=commodity_id%>">收藏</a>
                  <%} %>
                  <img style="float:left;width:24px;height:24px" src="${pageContext.request.contextPath}/images/shoucang.png">
               </div>            
            </div>
            <div style="float:left;width:40%">
               <p style="color: #5e5e5e;font-size: 12px;">商品编号：<%=commodity_id%></p>
            </div>
         </div>
      </div>
      <div style="width:35%;height:630px;float:left;display:none;" id="left2"> 
         <div style="width:100%;height:500px">
         <%if(!commodity_image_list.isEmpty()){
                    	 int i=0,j=0;
	    	  for(Commodity_image map:commodity_image_list){ 
	    	       i++;
	    	       if(i>5&&i<11){
	    	  %>
             <img id="left1_<%=i %>_b" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%;">
             <%}}} %>
         </div>
         <div style="width:100%;height:100px">
              <%if(!commodity_image_list.isEmpty()){
                    	 int i=0,j=0;
	    	  for(Commodity_image map:commodity_image_list){ 
	    	       i++;
	    	       if(i>5&&i<11){
	    	  %>
	    	<div style="float:left;margin:0 auto;width:20%;height:100%;">
               <div id="left1_<%=i %>" style="margin:0 auto;width:60%;margin-top:20px;height:60px;">
                <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%;">
               </div>
             </div>
	    	  <%}}}%>
         </div>
         <div style="width:100%;height:30px;">
            <div style="float:right;width:60%;color: #5e5e5e;font-size: 15px;">
               <div style="float:right;margin-left:15px;"><a href="">分享</a></div>
               <div style="float:right;margin-left:15px;"><a href="">提心愿</a></div>
               <div style="float:right;margin-left:15px;">
                  <%if(user_id==0){ %>
                  <a style="float:right" href="${pageContext.request.contextPath}/login/login.jsp">收藏</a>
                  <%}else{ %>
                 <a style="float:right" href="${pageContext.request.contextPath}/Shoucang_shangpin1?action=shangpin&commodity_id=<%=commodity_id%>">收藏</a>
                  <%} %>
                   <img style="float:left;width:24px;height:24px" src="${pageContext.request.contextPath}/images/shoucang.png">
               </div>            
            </div>
            <div style="float:left;width:40%">
               <p style="color: #5e5e5e;font-size: 12px;">商品编号：<%=commodity_id%></p>
            </div>
         </div>
      </div>
      <div style="width:35%;height:630px;float:left;display:none;" id="left3"> 
         <div style="width:100%;height:500px">
         <%if(!commodity_image_list.isEmpty()){
                    	 int i=0,j=0;
	    	  for(Commodity_image map:commodity_image_list){ 
	    	       i++;
	    	       if(i>10&&i<16){
	    	  %>
             <img id="left1_<%=i %>_b" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%;">
             <%}}} %>
         </div>
         <div style="width:100%;height:100px">
              <%if(!commodity_image_list.isEmpty()){
                    	 int i=0,j=0;
	    	  for(Commodity_image map:commodity_image_list){ 
	    	       i++;
	    	       if(i>10&&i<16){
	    	  %>
	    	<div style="float:left;margin:0 auto;width:20%;height:100%;">
               <div id="left1_<%=i %>" style="margin:0 auto;width:60%;margin-top:20px;height:60px;">
                <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%;">
               </div>
             </div>
	    	  <%}}}%>
         </div>
         <div style="width:100%;height:30px;">
            <div style="float:right;width:60%;color: #5e5e5e;font-size: 15px;">
               <div style="float:right;margin-left:15px;"><a href="">分享</a></div>
               <div style="float:right;margin-left:15px;"><a href="">提心愿</a></div>
               <div style="float:right;margin-left:15px;">
                     <%if(user_id==0){ %>
                  <a style="float:right" href="${pageContext.request.contextPath}/login/login.jsp">收藏</a>
                  <%}else{ %>
                 <a style="float:right" href="${pageContext.request.contextPath}/Shoucang_shangpin1?action=shangpin&commodity_id=<%=commodity_id%>">收藏</a>
                  <%} %>
                  <img style="float:left;width:24px;height:24px" src="${pageContext.request.contextPath}/images/shoucang.png">
               </div>            
            </div>
            <div style="float:left;width:40%">
               <p style="color: #5e5e5e;font-size: 12px;">商品编号：<%=commodity_id%></p>
            </div>
         </div>
      </div>
   </div>
</body>
<script type="text/javascript">
	var search_lei=document.getElementById('search_lei'),
	shangpin=document.getElementById('shangpin'),
	dianpu=document.getElementById('dianpu'),
	huati=document.getElementById('huati'),
	quanzi=document.getElementById('quanzi'),
       search_lei1=document.getElementById('search_lei1'),
      time_xiang=document.getElementById('time_xiang'),
     gouwuche=document.getElementById('gouwuche'),
     gouwuche1=document.getElementById('gouwuche1'),
      left1=document.getElementById('left1'),
      left2=document.getElementById('left2'),
      left3=document.getElementById('left3'),
      right1=document.getElementById('right1'),
      right2=document.getElementById('right2'),   
      right3=document.getElementById('right3'),
      left1_1=document.getElementById('left1_1'),
      left1_2=document.getElementById('left1_2'),
      left1_3=document.getElementById('left1_3'),
      left1_4=document.getElementById('left1_4'),
      left1_5=document.getElementById('left1_5'),
      left2_1=document.getElementById('left1_6'),
      left2_2=document.getElementById('left1_7'),
      left2_3=document.getElementById('left1_8'),
      left2_4=document.getElementById('left1_9'),
      left2_5=document.getElementById('left1_10'),
      left3_1=document.getElementById('left1_11'),
      left3_2=document.getElementById('left1_12'),
      left3_3=document.getElementById('left1_13'),
      left3_4=document.getElementById('left1_14'),
      left3_5=document.getElementById('left1_15'),
      left1_1_b=document.getElementById('left1_1_b'),
      left1_2_b=document.getElementById('left1_2_b'),
      left1_3_b=document.getElementById('left1_3_b'),
      left1_4_b=document.getElementById('left1_4_b'),
      left1_5_b=document.getElementById('left1_5_b'),
      left1_6_b=document.getElementById('left1_6_b'),
      left1_7_b=document.getElementById('left1_7_b'),
      left1_8_b=document.getElementById('left1_8_b'),
      left1_9_b=document.getElementById('left1_9_b'),
      left1_10_b=document.getElementById('left1_10_b'),
      left1_11_b=document.getElementById('left1_11_b'),
      left1_12_b=document.getElementById('left1_12_b'),
      left1_13_b=document.getElementById('left1_13_b'),
      left1_14_b=document.getElementById('left1_14_b'),
      left1_15_b=document.getElementById('left1_15_b'),
      jian=document.getElementById('jian'),
      jia=document.getElementById('jia'),
      count=document.getElementById('count');
	 document.getElementById('xuan1').checked=true;
	  document.getElementById('yan1').checked=true;
	 left1_1.onclick=function(){
		 left1_1_b.style.display="block";
		 left1_2_b.style.display="none";
		 left1_3_b.style.display="none";
		 left1_4_b.style.display="none";
		 left1_5_b.style.display="none"; 
		 left1_1.style.border="1px solid #e3101e";
		 left1_2.style.border="1px solid #fff";
		 left1_3.style.border="1px solid #fff"
		left1_4.style.border="1px solid #fff";
		 left1_5.style.border="1px solid #fff";		 
	 }
	 left1_2.onclick=function(){
		 left1_1_b.style.display="none";
		 left1_2_b.style.display="block";
		 left1_3_b.style.display="none";
		 left1_4_b.style.display="none";
		 left1_5_b.style.display="none"; 
		 left1_1.style.border="1px solid #fff";
		 left1_2.style.border="1px solid #e3101e";
		 left1_3.style.border="1px solid #fff"
		left1_4.style.border="1px solid #fff";
		 left1_5.style.border="1px solid #fff";		 
	 }
	 left1_3.onclick=function(){
		 left1_1_b.style.display="none";
		 left1_2_b.style.display="none";
		 left1_3_b.style.display="block";
		 left1_4_b.style.display="none";
		 left1_5_b.style.display="none"; 
		 left1_1.style.border="1px solid #fff";
		 left1_2.style.border="1px solid #fff";
		 left1_3.style.border="1px solid #e3101e"
		left1_4.style.border="1px solid #fff";
		 left1_5.style.border="1px solid #fff";		 
	 }
	 left1_4.onclick=function(){
		 left1_1_b.style.display="none";
		 left1_2_b.style.display="none";
		 left1_3_b.style.display="none";
		 left1_4_b.style.display="block";
		 left1_5_b.style.display="none"; 
		 left1_1.style.border="1px solid #fff";
		 left1_2.style.border="1px solid #fff";
		 left1_3.style.border="1px solid #fff"
		left1_4.style.border="1px solid #e3101e";
		 left1_5.style.border="1px solid #fff";		 
	 }
	 left1_5.onclick=function(){
		 left1_1_b.style.display="none";
		 left1_2_b.style.display="none";
		 left1_3_b.style.display="none";
		 left1_4_b.style.display="none";
		 left1_5_b.style.display="block"; 
		 left1_1.style.border="1px solid #fff";
		 left1_2.style.border="1px solid #fff";
		 left1_3.style.border="1px solid #fff"
		left1_4.style.border="1px solid #fff";
		 left1_5.style.border="1px solid #e3101e";		 
	 }
	 left1_6.onclick=function(){
		 left2_1_b.style.display="block";
		 left2_2_b.style.display="none";
		 left2_3_b.style.display="none";
		 left2_4_b.style.display="none";
		 left2_5_b.style.display="none"; 
		 left1_1.style.border="1px solid #fff";
		 left1_2.style.border="1px solid #fff";
		 left1_3.style.border="1px solid #fff"
		left1_4.style.border="1px solid #fff";
		 left1_5.style.border="1px solid #e3101e";	
	 }
	 left1_7.onclick=function(){
		 left1_6_b.style.display="none";
		 left1_7_b.style.display="block";
		 left1_8_b.style.display="none";
		 left1_9_b.style.display="none";
		 left1_10_b.style.display="none"; 
		 left1_6.style.border="1px solid #fff";
		 left1_10.style.border="1px solid #fff";
		 left1_8.style.border="1px solid #fff"
		left1_9.style.border="1px solid #fff";
		 left1_7.style.border="1px solid #e3101e";	
	 }
	 left1_8.onclick=function(){
		 left1_6_b.style.display="none";
		 left1_7_b.style.display="none";
		 left1_8_b.style.display="block";
		 left1_9_b.style.display="none";
		 left1_10_b.style.display="none"; 
		 left1_6.style.border="1px solid #fff";
		 left1_7.style.border="1px solid #fff";
		 left1_9.style.border="1px solid #fff"
		left1_10.style.border="1px solid #fff";
		 left1_8.style.border="1px solid #e3101e";	
	 }
	 left1_9.onclick=function(){
		 left1_6_b.style.display="none";
		 left1_7_b.style.display="none";
		 left1_8_b.style.display="none";
		 left1_9_b.style.display="block";
		 left1_10_b.style.display="none"; 
		 left1_6.style.border="1px solid #fff";
		 left1_7.style.border="1px solid #fff";
		 left1_8.style.border="1px solid #fff"
		left1_10.style.border="1px solid #fff";
		 left1_9.style.border="1px solid #e3101e";	
	 }
	 left1_10.onclick=function(){
		 left1_6_b.style.display="none";
		 left1_7_b.style.display="none";
		 left1_8_b.style.display="none";
		 left1_9_b.style.display="none";
		 left1_10_b.style.display="block"; 
		 left1_6.style.border="1px solid #fff";
		 left1_7.style.border="1px solid #fff";
		 left1_8.style.border="1px solid #fff"
		left1_9.style.border="1px solid #fff";
		 left1_10.style.border="1px solid #e3101e";	
	 }
	 
	 left1_11.onclick=function(){
		 left1_11_b.style.display="block";
		 left1_12_b.style.display="none";
		 left1_13_b.style.display="none";
		 left1_14_b.style.display="none";
		 left1_15_b.style.display="none"; 
		 left1_15.style.border="1px solid #fff";
		 left1_12.style.border="1px solid #fff";
		 left1_13.style.border="1px solid #fff"
		 left1_14.style.border="1px solid #fff";
		 left1_11.style.border="1px solid #e3101e";	
	 }
	 left1_12.onclick=function(){
		 left1_11_b.style.display="none";
		 left1_12_b.style.display="block";
		 left1_13_b.style.display="none";
		 left1_14_b.style.display="none";
		 left1_15_b.style.display="none"; 
		 left1_11.style.border="1px solid #fff";
		 left1_15.style.border="1px solid #fff";
		 left1_13.style.border="1px solid #fff"
		 left1_14.style.border="1px solid #fff";
		 left1_12.style.border="1px solid #e3101e";	
	 }
	 left1_13.onclick=function(){
		 left1_11_b.style.display="none";
		 left1_12_b.style.display="none";
		 left1_13_b.style.display="block";
		 left1_14_b.style.display="none";
		 left1_15_b.style.display="none"; 
		 left1_11.style.border="1px solid #fff";
		 left1_12.style.border="1px solid #fff";
		 left1_15.style.border="1px solid #fff"
		 left1_14.style.border="1px solid #fff";
		 left1_13.style.border="1px solid #e3101e";	
	 }
	 left1_14.onclick=function(){
		 left1_11_b.style.display="none";
		 left1_12_b.style.display="none";
		 left1_13_b.style.display="none";
		 left1_14_b.style.display="block";
		 left1_15_b.style.display="none"; 
		 left1_11.style.border="1px solid #fff";
		 left1_12.style.border="1px solid #fff";
		 left1_13.style.border="1px solid #fff"
		left1_15.style.border="1px solid #fff";
		 left1_14.style.border="1px solid #e3101e";	
	 }
	 left1_15.onclick=function(){
		 left1_11_b.style.display="none";
		 left1_12_b.style.display="none";
		 left1_13_b.style.display="none";
		 left1_14_b.style.display="none";
		 left1_15_b.style.display="block"; 
		 left1_11.style.border="1px solid #fff";
		 left1_12.style.border="1px solid #fff";
		 left1_13.style.border="1px solid #fff"
		left1_14.style.border="1px solid #fff";
		 left1_15.style.border="1px solid #e3101e";	
	 }
	
	 right1.onclick=function(){
		  left1.style.display="block";
		  left2.style.display="none";
		  left3.style.display="none";
		  right1.style.border="1px solid #e3101e"
		  right2.style.border="1px solid #fff"
		  right3.style.border="1px solid #fff"
		 document.getElementById('xuan1').checked=true;
		  document.getElementById('yan1').checked=true;
	  }
	 right2.onclick=function(){
		  left1.style.display="none";
		  left2.style.display="block";
		  left3.style.display="none";
		  right1.style.border="1px solid #fff"
			  right2.style.border="1px solid #e3101e"
			  right3.style.border="1px solid #fff"
				  document.getElementById('xuan2').checked=true;
		  document.getElementById('yan2').checked=true;
	  }
	 right3.onclick=function(){
		  left1.style.display="none";
		  left2.style.display="none";
		  left3.style.display="block";
		  right1.style.border="1px solid #fff"
			  right2.style.border="1px solid #fff"
			  right3.style.border="1px solid #e3101e"
				  document.getElementById('xuan3').checked=true;
		  document.getElementById('yan3').checked=true;
	  }
	/********/
	shangpin.onclick=function(){
		search_choose.innerHTML="商品&#9660;";
	}
	dianpu.onclick=function(){
		search_choose.innerHTML="店铺&#9660;";
	}
	huati.onclick=function(){
		search_choose.innerHTML="话题&#9660;";
	}
	quanzi.onclick=function(){
		search_choose.innerHTML="圈子&#9660;";
	}
	/*****/
      function my0mouseenter(){
	   search_lei.style.display="block";
   }	   function my16mouseenter(){
									  search_lei1.style.display="block";
								   }
							   function my17mouseenter(){
									  time_xiang.style.display="block";
								   }
							   function my18mouseenter(){
								  
								   gouwuche1.style.display="block";
								   }
								   function my_18mouseenter(){
    gouwuche1.style.display="block";
	   gouwuche.style.background="#fff";
	  gouwuche.style.boxShadow="0 0 18px rgba(0,0,0,.09)";
  }
	 /**********/
	 jian.onclick=function(){
		 var i=count.value;
		 if(i<=1){
			 count.value=i
		 }else{
		 i--;
		 count.value=i;}
	 }
	 jia.onclick=function(){
		 var i=count.value;
		 i++;
		 count.value=i;
	 }
   /***************/
   function my0mouseleave(){
	   search_lei.style.display="none";
   }
      function my16mouseleave(){
	   search_lei1.style.display="none";
   }
   function my17mouseleave(){
	   time_xiang.style.display="none";
   }
  function my18mouseleave(){
	   gouwuche1.style.display="none";
   }
      function my_18mouseleave(){
	   gouwuche1.style.display="none";
	   gouwuche.style.background="";
	   gouwuche.style.boxshadow="";
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
  /**********/
</script>

</html>
