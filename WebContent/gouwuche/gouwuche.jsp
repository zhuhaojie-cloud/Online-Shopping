<%@page import="swu.xxj.test.Test"%>
<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  int user_id=(Integer)session.getAttribute("user_id");
  session.setAttribute("user_id", user_id);
  List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
  commodity_infor_list=(ArrayList<Commodity_infor>)request.getAttribute("commodity_infor_list");
  List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
  gouwuche_list=(ArrayList<Gouwuche>)request.getAttribute("gouwuche_list"); 
  List<Shoucang_shangpin> shoucang_shangpin_list=new ArrayList<Shoucang_shangpin>();
  shoucang_shangpin_list=(ArrayList<Shoucang_shangpin>)request.getAttribute("shoucang_shangpin_list"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
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
</style>
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
	  else{%><div style="height:80px;width:100%">
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
          <li style="float:right;margin-right:50px;"><a href="../dingdan/dingdan.html" style="text-decoration: none">我的订单</a></li>
          <li style="float:right;margin-right:50px;height:30px" id="gouwuche" onmouseenter="my18mouseenter()" onmouseleave="my18mouseleave()"><a href="${pageContext.request.contextPath}/Gouwuche1">我的购物车</a></li>
          <li style="float:right;margin-right:50px;">
             <div class="heart_icon"></div>                 
             <div style="padding-left:24px;">心愿单</div>
          </li>
          <li style="float:right;margin-right:50px;"><a href="${pageContext.request.contextPath}/Kefu" target="_blank">服务中心</a></li>
       </ul>      
   </div>
   <div style="width:100%;height:150px;background: #ccd">
     <div style="width:30%;margin:0 auto;height:120px">
        <div style="margin-top:20px;float:right;width:50%;height:100%;font-size:45px;font-family: serif;">购物车</div>
        <div style="float:left;width:50%;height:100%">
           <img src="images/logo.png" style="width:80px;height:80px;margin:10px 0 0 50px;">
        </div>
     </div>
     <div style="width:100%;height:30px;background: #cdd">
       <a href="${pageContext.request.contextPath}/Home?pageNum=1" style="text-decoration: none;margin-left:200px">首页</a>
     </div>
  </div>
  <div style="width:1000px;margin:0 auto;">
      <div style="height:44px;width:100%;background: #eee;border: 1px solid #e6e6e6;border-radius:3px;">
         <div style="float:left;width:100px;height:34px;margin-top:10px">
           <input type="checkbox" id="checkAll">
                             全选
         </div>
         <div style="float:left;width:380px;height:34px;margin-top:10px">商品信息</div>
         <div style="float:left;width:130px;height:34px;margin-top:10px">单价</div>
         <div style="float:left;width:120px;height:34px;margin-top:10px">数量</div>
         <div style="float:left;width:130px;height:34px;margin-top:10px">小计</div>
         <div style="float:left;width:50px;height:34px;margin-top:10px">操作</div>
      </div>
       <%if(!gouwuche_list.isEmpty()){
	    	    for(Gouwuche map:gouwuche_list){
	    	    	double zongji=map.getPrice()*map.getNumber();
	    		 %>
      <div style="border: 1px solid #e6e6e6;height:120px">
         <div style="float:left;width:100px;height:70px;margin-top:50px">
            <input id="jiage<%=map.getId() %>" type="checkbox" name="check" value="<%=zongji%>">
         </div>
         <div style="float:left;width:380px;height:120px;">
            <div style="float:right;width:250px;height:110px;margin-top:10px;padding-right:10px">
                                  <%=map.getCommodity_name() %>
            </div>
            <div style="float:left;height:120px;width:120px"><img src="${pageContext.request.contextPath}/<%=map.getCommodity_image() %>" style="width:120px;height:120px"></div>
         </div>
         <div style="float:left;width:130px;height:70px;margin-top:50px">￥<%=map.getPrice() %></div>
         <div style="float:left;width:80px;height:70px;margin-top:50px">
            <div style="position:relative;">
               <a id="jian<%=map.getId() %>" style="border: 1px solid #ccc;
               cursor:pointer;
    text-decoration: none;
    width: 20px;
    text-align: center;
    display: block;
    left: -21px;
    color: #ccc;
    position: absolute;
    top: 0.5px;
    height: 22px;
    font-weight: bold;">-</a>
               <a id="jia<%=map.getId() %>" style="border: 1px solid #ccc;
                cursor:pointer;
    text-decoration: none;
    width: 20px;
    text-align: center;
    display: block;
    left: 60px;
    color: #ccc;
    position: absolute;
    top: 0.5px;
    height: 22px;
    font-weight: bold;">+</a>
               <div>
                <input id="count<%=map.getId() %>" type="text" value="<%=map.getNumber() %>" style="width:70%;height:20px;margin:0;padding: 0;overflow: hidden;text-align: center;">
               </div>
            </div>
         </div>
         <div id="zong<%=map.getId() %>" style="margin-top:50px;float:left;width:170px;height:70px;text-align:center;white-space: nowrap;">
            ￥<%=map.getPrice()*map.getNumber() %>
         </div>
         <div style="float:left;width:80px;height:100px;padding:10px;">
             <a href="${pageContext.request.contextPath}/Delete?action=gouwuche&id=<%=map.getId() %>">删除</a>
             <br>
             <br>
             <a href="${pageContext.request.contextPath}/Shoucang_shangpin1?action=gouwuche&commodity_id=<%=map.getCommodity_id() %>">收藏</a>
         </div>
      </div>
      <%}} %>
      <div style="background: #f3f3f3;width:100%;height:60px">
          <div id="bbb" style="float:left;width:400px;margin-top:15px">已选择0件商品</div>
          <div id="zong1" style="float:left;width:500px;margin-top:15px">总计（不含运费）：￥0.00</div>
          <a style="float:left;background: #e3101e;display: block;height: 60px;line-height: 60px;text-align: center;color: #fff;font-size: 16px;text-decoration: none;width:100px">去结算</a>
      </div>
  </div>
  <div style="width:1000px;height:300px;margin:0 auto;display:block">
     <div id="tuijian" style="cursor:pointer;padding-left:25px;background: #f8f8f8;float:left;width:89px;color:#e3101e;">为你推荐</div>
     <div id="liulan" style="cursor:pointer;padding-left:25px;background: #fff;float:left;width:89px;color:#e3101e;">最近浏览</div>
     <div id="shoucang" style="cursor:pointer;padding-left:25px;background: #fff;float:left;width:89px;color:#e3101e;">我的收藏</div>
     <div id="container2" style="background: #f8f8f8">
       <div id="buttons2" style="display:none">
         <span index2="1" class="on">8:00-12:00</span>
         <span index2="2">12:00-16:00</span>
         <span index2="3">16:00-20:00</span>
         <span index2="4">20:00-24:00</span>
         <span index2="5">24:00-04:00</span>
       </div>
       <div id="list2" style="left:-1000px;">
         <div>
           <ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
             <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==8)
	    	    	  break;
	    	      %>
            <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=map.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=map.getPrice() %></p>
                </div>
     <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
         </div>
         <div>
           <ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
             <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==8)
	    	    	  break;
	    	      %>
              <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=map.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=map.getPrice() %></p>
                </div>
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
         </div>
         <div>
           <ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
             <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==8)
	    	    	  break;
	    	      %>
             <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=map.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=map.getPrice() %></p>
                </div>
      <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
         </div>
        <div>
           <ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
             <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==8)
	    	    	  break;
	    	      %>
             <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=map.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=map.getPrice() %></p>
                </div>
<a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
         </div>
    <div>
           <ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
             <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==8)
	    	    	  break;
	    	      %>
            <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=map.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=map.getPrice() %></p>
                </div>
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
         </div>
        <div>
           <ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
            <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==8)
	    	    	  break;
	    	      %>
             <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=map.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=map.getPrice() %></p>
                </div>
               <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
         </div>
       </div>
       <a href="javascript2:;" class="arrow2" id="prev2">&lt;</a>
       <a href="javascript2:;" class="arrow2" id="next2">&gt;</a>
     </div>
      <div id="liulan_xian" style="width:1000px;height:300px;margin:0 auto;display:none">
      <br>
          <div style="width:1000px;height:300px;background:#f8f8f8">
<ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
             <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==6)
	    	    	  break;
	    	      %>
             <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=map.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=map.getPrice() %></p>
                </div>
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
          </div>
      </div>
      <div id="shoucang_xian" style="width:1000px;height:300px;margin:0 auto;display:none">
         <br>
          <div style="width:1000px;height:300px;background:#f8f8f8">
            <ul style="list-style:none;margin:0 auto;padding:0;width:850px;height:300px;">
             <%if(!shoucang_shangpin_list.isEmpty()){
            	  int i=0;
	    	  for(Shoucang_shangpin map:shoucang_shangpin_list){ 
	    	      i++;
	    	      if(i==6)
	    	    	  break;
	    	      Commodity_infor commodity_infor=Test.findCommodity_inforByCommodity_id(map.getCommodity_id());
	    	      %>
            <li style="width:170px;height:290px;float:left;margin-top:10px;">
                <div style="width:160px;margin:0 auto;height:150px;">
                  <img alt="" src="${pageContext.request.contextPath}/<%=commodity_infor.getImage() %>" style="margin-left:15px;width:150px;height:150px;">
                </div>
                <div style="width:170px;height:80px;text-align: center;">
                  <p style="height:50px"><%=commodity_infor.getCommodity_name() %></p>
                  <p style="color: #e3101e;">￥:<%=commodity_infor.getPrice() %></p>
                </div>
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=commodity_infor.getCommodity_id() %>" style="cursor:pointer;border:1px solid #dcd;width:88px;height:26px;margin-left:50px;">加入购物车</a>
             </li>
             <%}} %>
           </ul>
          </div>
      </div>
  </div>
 
</body>
<script>
var time_xiang=document.getElementById('time_xiang'),
    tuijian=document.getElementById('tuijian'),
    liulan=document.getElementById('liulan'),
    shoucang=document.getElementById('shoucang'),
    container=document.getElementById('container2'),
    tuijian_xian=document.getElementById('tuijian_xian'),
    liulan_xian=document.getElementById('liulan_xian'),
    bbb=document.getElementById('bbb'),
    gouwuche=document.getElementById('gouwuche'),
    gouwuche1=document.getElementById('gouwuche1'),
   zong1=document.getElementById('zong1');
tuijian.onclick=function(){
	 tuijian.style.background="#f8f8f8";
	  liulan.style.background="#fff";
     shoucang.style.background="#fff";
     container.style.display="block";
     liulan_xian.style.display="none";
     shoucang_xian.style.display="none";
}
liulan.onclick=function(){
	 tuijian.style.background="#fff";
	  liulan.style.background="#f8f8f8";
    shoucang.style.background="#fff";
    container.style.display="none";
    liulan_xian.style.display="block";
    shoucang_xian.style.display="none";
}
shoucang.onclick=function(){
	 tuijian.style.background="#fff";
	  liulan.style.background="#fff";
	  shoucang.style.background="#f8f8f8";
	  container.style.display="none";
	    liulan_xian.style.display="none";
	    shoucang_xian.style.display="block";
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
  function xuanze(){
	var checkOnes=document.getElementsByName('check');
	var j=0;
	var zongji=0;
    for(var i=0;i<checkOnes.length;i++){
    	  if( checkOnes[i].checked==true){
    		  j++;
    		  zongji=parseFloat(checkOnes[i].value)+zongji;
    	  }
	   }
    bbb.innerHTML="已选择"+j+"件商品";
    zong1.innerHTML="总计（不含运费）：￥"+zongji+".0"
  }
  setInterval(xuanze,1000);
/*****zong1.innerHTML="总计（不含运费）：￥"+*i+".0";*****/
document.getElementById('checkAll').onclick=function(){
	   var checkAllEle=document.getElementById('checkAll');
	   var checkOnes=document.getElementsByName('check');
	
	   if(checkAllEle.checked==true){
		   for(var i=0;i<checkOnes.length;i++){
			   checkOnes[i].checked=true;
		   }
	   }else{
		   for(var i=0;i<checkOnes.length;i++){
			   checkOnes[i].checked=false;
		   }
	   }
}

/**********/
 <%if(!gouwuche_list.isEmpty()){
	    for(Gouwuche map:gouwuche_list){
  %>
  document.getElementById('jian<%=map.getId() %>').onclick=function(){
	 var i=document.getElementById('count<%=map.getId() %>').value;
	 if(i<=1){
		 document.getElementById('count<%=map.getId() %>').value=i;
	 }else{
	 i--;
	 document.getElementById('jiage<%=map.getId() %>').value=<%=map.getPrice()%>*i;
	 document.getElementById('count<%=map.getId() %>').value=i;
	 document.getElementById('zong<%=map.getId() %>').innerHTML="￥"+<%=map.getPrice()%>*i+".0";
	 /*zong1.innerHTML="总计（不含运费）：￥"+2599*i+".0";*/
	 /*bbb.innerHTML="已选择"+i+"件商品";*/
	 }
}
<%}}%>
<%if(!gouwuche_list.isEmpty()){
    for(Gouwuche map:gouwuche_list){
%>
document.getElementById('jia<%=map.getId() %>').onclick=function(){
	 var i=document.getElementById('count<%=map.getId() %>').value;
	 i++;
	 document.getElementById('jiage<%=map.getId() %>').value=<%=map.getPrice()%>*i;
	 document.getElementById('count<%=map.getId() %>').value=i;
	 document.getElementById('zong<%=map.getId() %>').innerHTML="￥"+<%=map.getPrice()%>*i+".0";
}
<%}}%>
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
</script>
</html>