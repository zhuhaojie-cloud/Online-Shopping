<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.util.*" import="java.util.*" import="swu.xxj.entity.*" import="swu.xxj.test.Test"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  int user_id=(Integer)session.getAttribute("user_id");
  session.setAttribute("user_id", user_id);
  int recordCount=(Integer)request.getAttribute("recordCount");
  DividePage pUtil=(DividePage)request.getAttribute("pUtil");
  
  List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
  List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
  
  commodity_infor_list=(ArrayList<Commodity_infor>)request.getAttribute("commodity_infor_list");
  gouwuche_list=(ArrayList<Gouwuche>)request.getAttribute("gouwuche_list"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品筛选</title>
 <link href="css/style.css" rel="stylesheet"/>
    <link href="css/style4.css" rel="stylesheet"/>
    <script src="js/lunbo4.js"> </script>
</head>
<style>
.search_lei li{
cursor:pointer;
   padding:4px 20px;
   
 } .search_lei li:hover{
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
.pinpai{
  position: relative; 
-webkit-transform-style: preserve-3d; 
-moz-transform-style: preserve-3d; 
-ms-transform-style: preserve-3d; 
transform-style: preserve-3d; 
-webkit-transition: 0.5s; 
-moz-transition: 0.5s; 
-o-transition: 0.5s; 
-ms-transition: 0.5s; 
transition: 0.5s; 
}
.pinpai div{
 display: block; 
position: absolute; 
left: 0; 
top: 0; 
  
}
.pinpai_name{
 width:118px;
   height:48px;

z-index: 1;
-webkit-transform: rotateY(180deg); 
-moz-transform: rotateY(180deg); 
transform: rotateY(180deg); 
}
.pinpai_img{
   width:118px;
   height:48px;
   z-index:2;
   width:118px;height:48px;
}
.pinpai:hover{ 
-webkit-transform: rotateY(180deg); 
-moz-transform: rotateY(180deg); 
transform: rotateY(180deg); 
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
function duibi1() {
    var th=document.form2;
    th.action="${pageContext.request.contextPath}/Duizhao1"; 
    th.submit();
}
function first() {
    var th=document.form1;
    th.action="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=1"; 
    th.submit();
}
function forward() {
    var th=document.form1;
    th.action="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=<%=pUtil.getCurrentPage()-1%>"; 
    th.submit();
}
function next() {
    var th=document.form1;
    th.action="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=<%=pUtil.getCurrentPage()+1%>"; 
    th.submit();
}
function end() {
    var th=document.form1;
    th.action="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=<%=pUtil.getPageCount()%>";
    th.submit();
}
function changePage(currentPage) {
	  window.location.href="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum="+currentPage
  /*  var th=document.form1;
    th.action="${pageContext.request.contextPath}/Jianzhi?pageNum="+currentPage; //需要给提交加标志位，区分提交的是什么
    th.submit();*/
}
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
    <div id="duizhaolan" style="display:none;z-index:999;position:fixed;width:100%;height:150px;bottom:0px;">
    <div style="box-shadow: 0 0 20px rgba(0,0,0,.19);border-radius:10px 10px 0px 0px;position: relative;background:#fff;margin:0 auto;width:930px;height:100%;">
      <a href="javascript:cha1();"><img alt="" src="${pageContext.request.contextPath}/images/error.jpg" style="cursor:pointer;border-radius: 50px;width:20px;height:20px;position:absolute;top:0;right:0;"></a>
   
    
      <div style="float:right;width:100px;height:90px;padding-top:60px;">
          <div style="width:66px;margin:0 auto;text-align: center">
            <a href="javascript:duibi1()" style="display:inline-block;margin-bottom:3px;width:66px; height:28px;line-height: 28px; border: 1px solid #e3101e;background: #e3101e;color: #fff; text-decoration: none;">对比</a></div>
          <div style="width:63px;margin:0 auto;font-size:12px">
            <a href="javascript:qinkong();">清空对比栏</a>
          </div>
      </div>
      <div style="float:left;width:830px;height:100%">
       <div style="border-radius:10px 0 0 0;float:left;width: 140px;height: 32px;text-align: center; border-right: 1px solid #e6e6e6;border-bottom: 1px solid #fff;background-color: #fff;color: #c00;font-weight: 700;">
                      对比栏(1)
       </div>
       <div style="width:100%;height:110px;padding-top:40px">
        <form name="form2">
          <input id="duibi1_commodity_id" type="checkbox" name="commodity_id" value="" style="display:none">
          <div style="float:left;width:25%;height:110px;" id="duibi1">
             <div style="float:right;width:65%">
                <div style="width:100%;height:50px;font-size: 12px;" id="duibi1_name">
                   您还可以继续添加
                </div>
                <div style="width:100%;height:30px">
                    <p id="shanchu1" style="float:right;font-size:12px;color:blue;margin-right:25px;cursor: pointer">删除</p>
                   <p id="duibi1_price" style="float:left;text-align:center;color: #e3101e;font-size: 20px;"></p>
                </div>
             </div>
             <div style="float:left;width:35%">
                <img id="duibi1_image" src="${pageContext.request.contextPath}/images/shuzi1.png" style="width:100%;height:100%">
             </div>
         </div>    
          <input id="duibi2_commodity_id" type="checkbox" name="commodity_id" value="" style="display:none">
          <div style="float:left;width:25%;height:110px;" id="duibi2">
             <div style="float:right;width:65%">
                <div style="width:100%;height:50px;font-size: 12px;" id="duibi2_name">        您还可以继续添加</div>
                <div style="width:100%;height:30px">
                   <p id="shanchu2" style="float:right;font-size:12px;color:blue;margin-right:25px;cursor: pointer">删除</p>
                   <p id="duibi2_price" style="float:left;text-align:center;color: #e3101e;font-size: 20px;"></p>
                </div>
             </div>
             <div style="float:left;width:35%">
                <img id="duibi2_image" src="${pageContext.request.contextPath}/images/shuzi2.png" style="width:100%;height:100%">
             </div>
         </div>  
          <input id="duibi3_commodity_id" type="checkbox" name="commodity_id" value="" style="display:none">
          <div style="float:left;width:25%;height:110px;" id="duibi3">
             <div style="float:right;width:65%">
                <div style="width:100%;height:50px;font-size: 12px;" id="duibi3_name">        您还可以继续添加</div>
                <div style="width:100%;height:30px">
                   <p id="shanchu3" style="float:right;font-size:12px;color:blue;margin-right:25px;cursor: pointer">删除</p>
                   <p id="duibi3_price" style="float:left;text-align:center;color: #e3101e;font-size: 20px;"></p>
                </div>
             </div>
             <div style="float:left;width:35%">
             <img id="duibi3_image" src="${pageContext.request.contextPath}/images/shuzi3.png" style="width:100%;height:100%">
             </div>
         </div>    
          <input id="duibi4_commodity_id" type="checkbox" name="commodity_id" value="" style="display:none">
          <div style="float:left;width:25%;height:110px;" id="duibi4">
             <div style="float:right;width:65%">
                <div style="width:100%;height:50px;font-size: 12px;" id="duibi4_name">        您还可以继续添加</div>
                 <div style="width:100%;height:30px">
                    <p id="shanchu4" style="float:right;font-size:12px;color:blue;margin-right:25px;cursor: pointer">删除</p>
                   <p id="duibi4_price" style="float:left;text-align:center;color: #e3101e;font-size: 20px;"></p>
                </div>
             </div>
             <div style="float:left;width:35%">
               <img id="duibi4_image" src="${pageContext.request.contextPath}/images/shuzi4.png" style="width:100%;height:100%">
             </div>
         </div>  
           </form>
        </div>
      </div>
    </div>
    
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
                <div onmouseenter="my0mouseenter()" onmouseleave="my0mouseleave()" style="border-right:1px solid #dd00a7;height:27px;padding:3px 10px 3px 20px;"><p style="float:right">&#9660;</p><p id="search_choose" style="float:left">商品</p></div>
                <ul class="search_lei" onmouseenter="my0mouseenter()" onmouseleave="my0mouseleave()" style="margin:0;padding:0;list-style:none;display:none;border:1px solid #dd00a7;disborder-top:0px;background:#fff;" id="search_lei" >
                  <li id="shangpin">商品</li>
                  <li id="dianpu">店铺</li>
                  <li id="huati">话题</li>
                  <li id="quanzi">圈子</li>
                </ul> 
              </div>
              <div>
              <form style="margin:0;padding:0;" name="form3" action="${pageContext.request.contextPath}/Sousuo">
               <input type="text" style="display:none" name="sousuo_lei" id="suosou_leis" value="商品">
               <input type="text" name="content" style="height:32px;width:70%;padding:-2px 0px 0px 0px;margin:0px 0px 0px 79px;border-width: 0px;">
               <button type="submit" style="height:34px;width:79px;cursor:pointer;margin-left:-4.5px;padding:2px 6px 4px 6px;">搜索</button>
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
     手机 >>>  商品筛选  共 <%=recordCount %>件商品
     </div>
     <div style="width:100%;height:100px;border-bottom: 1px solid #ddd;">
          <div style="float:right;width:85%;height:100px">
            <ul style="list-style:none;margin:0;" >
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">苹果</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/phone.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">小米</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/mi.png" style="width:100%;height:100%"></div>
                 
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">华为</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/huawei.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">荣耀</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/rongyao.png" style="width:100%;height:100%"></div>
               
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">三星</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/sanxing.png" style="width:100%;height:100%"></div>
                
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">魅族</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/meizu.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">vivo</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/vivo.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">美图</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/meitu.png" style="width:100%;height:100%"></div>
                
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
              <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">中兴</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/zhongxin.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">酷派</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/kupai.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">HTC</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/htc.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">摩托罗拉</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/motuo.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                  <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">海信</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/haixin.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">联想</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/lianxiang.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                 <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">飞利浦</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/feili.png" style="width:100%;height:100%"></div>
              </li>
              <li style="float:left;width:118px;height:48px;background: #cff" class="pinpai">
                  <div class="pinpai_name"><p style="margin-top:10px;margin-left:40px;">诺基亚</p></div>
                 <div class="pinpai_img"><img src="${pageContext.request.contextPath}/images/nuojiya.png" style="width:100%;height:100%"></div>
              </li>
            </ul>
          </div>
          <div style="float:left;width:15%;height:70px;margin-top:30px;">品牌：</div>
     </div>   
     <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
             <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">0-499</li>
               <li style="margin-right:20px; color: #069;float:left">500-999</li>
               <li style="margin-right:20px; color: #069;float:left">1000-1699</li>
               <li style="margin-right:20px; color: #069;float:left">1700-2799</li>
               <li style="margin-right:20px; color: #069;float:left">2800-4499</li>
               <li style="margin-right:20px; color: #069;float:left">4500-11999</li>
               <li style="margin-right:20px; color: #069;float:left">12000以上</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">价格：</div>
     </div> 
     <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
             <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">全网通4G</li>
               <li style="margin-right:20px; color: #069;float:left">移动4G</li>
               <li style="margin-right:20px; color: #069;float:left">联通4G</li>
               <li style="margin-right:20px; color: #069;float:left">电信4G</li>
               <li style="margin-right:20px; color: #069;float:left">双卡</li>
               <li style="margin-right:20px; color: #069;float:left">双卡单4G</li>
               <li style="margin-right:20px; color: #069;float:left">双卡双4G</li>
               <li style="margin-right:20px; color: #069;float:left">全网通5G</li>
               <li style="margin-right:20px; color: #069;float:left">其它</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">网制格式：</div>
     </div> 
     <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
           <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">5.6英寸及以上</li>
               <li style="margin-right:20px; color: #069;float:left">5.5-5.1英寸</li>
               <li style="margin-right:20px; color: #069;float:left">5.0-4.6英寸</li>
               <li style="margin-right:20px; color: #069;float:left">4.5-3.1英寸</li>
               <li style="margin-right:20px; color: #069;float:left">3.0英寸及以下</li>
               <li style="margin-right:20px; color: #069;float:left">其它</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">屏幕尺寸：</div>
     </div> 
     <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">游戏手机</li>
               <li style="margin-right:20px; color: #069;float:left">拍照神器</li>
               <li style="margin-right:20px; color: #069;float:left">女性手机</li>
               <li style="margin-right:20px; color: #069;float:left">长续航手机</li>
               <li style="margin-right:20px; color: #069;float:left">指纹识别</li>
               <li style="margin-right:20px; color: #069;float:left">后置摄像头</li>
               <li style="margin-right:20px; color: #069;float:left">老人手机</li>
               <li style="margin-right:20px; color: #069;float:left">晓龙芯片</li>
               <li style="margin-right:20px; color: #069;float:left">快速充电</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">功能特点：</div>
     </div> 
       <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">安卓(Android)</li>
               <li style="margin-right:20px; color: #069;float:left">微软(WindowsPhone)</li>
               <li style="margin-right:20px; color: #069;float:left">苹果(IOS)</li>
               <li style="margin-right:20px; color: #069;float:left">其它</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">操作系统：</div>
     </div> 
       <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">8G</li>
               <li style="margin-right:20px; color: #069;float:left">6G</li>
               <li style="margin-right:20px; color: #069;float:left">4G</li>
               <li style="margin-right:20px; color: #069;float:left">3G</li>
               <li style="margin-right:20px; color: #069;float:left">2G</li>
               <li style="margin-right:20px; color: #069;float:left">10G</li>
               <li style="margin-right:20px; color: #069;float:left">12G</li>
               <li style="margin-right:20px; color: #069;float:left">其它</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">运行内存：</div>
     </div> 
       <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">1T</li>
               <li style="margin-right:20px; color: #069;float:left">512G</li>
               <li style="margin-right:20px; color: #069;float:left">256G</li>
               <li style="margin-right:20px; color: #069;float:left">128G</li>
               <li style="margin-right:20px; color: #069;float:left">64G</li>
               <li style="margin-right:20px; color: #069;float:left">32G</li>
               <li style="margin-right:20px; color: #069;float:left">16G</li>
               <li style="margin-right:20px; color: #069;float:left">8G</li>
               <li style="margin-right:20px; color: #069;float:left">8G以下</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">机身内存：</div>
     </div> 
       <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">十核</li>
               <li style="margin-right:20px; color: #069;float:left">八核</li>
               <li style="margin-right:20px; color: #069;float:left">双四核</li>
               <li style="margin-right:20px; color: #069;float:left">四核</li>
               <li style="margin-right:20px; color: #069;float:left">双核</li>
               <li style="margin-right:20px; color: #069;float:left">单核</li>
               <li style="margin-right:20px; color: #069;float:left">无</li>
               <li style="margin-right:20px; color: #069;float:left">其它</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">CPU核数：</div>
     </div> 
       <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">1200mAh以下</li>
               <li style="margin-right:20px; color: #069;float:left">1200mAh-1999mAh</li>
               <li style="margin-right:20px; color: #069;float:left">2000mAh-2999mAh</li>
               <li style="margin-right:20px; color: #069;float:left">3000mAh-3999mAh</li>
               <li style="margin-right:20px; color: #069;float:left">4000mAh-5999mAh</li>
               <li style="margin-right:20px; color: #069;float:left">6000mAh以上</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">电池容量：</div>
     </div>
       <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">1600万以上</li>
               <li style="margin-right:20px; color: #069;float:left">100-1600万</li>
               <li style="margin-right:20px; color: #069;float:left">500-1000万</li>
               <li style="margin-right:20px; color: #069;float:left">500万以下</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">像素：</div>
     </div>
       <div style="width:100%;height:30px;border-bottom: 1px solid #ddd;margin-top:10px">
          <div style="float:right;width:85%;height:100%">
              <ul style="float:left;list-style:none">
               <li style="margin-right:20px;color: #069;float:left">黑色</li>
               <li style="margin-right:20px; color: #069;float:left">白色</li>
               <li style="margin-right:20px; color: #069;float:left">金色</li>
               <li style="margin-right:20px; color: #069;float:left">粉色</li>
               <li style="margin-right:20px; color: #069;float:left">红色</li>
               <li style="margin-right:20px; color: #069;float:left">黄色</li>
               <li style="margin-right:20px; color: #069;float:left">灰色</li>
               <li style="margin-right:20px; color: #069;float:left">蓝色</li>
               <li style="margin-right:20px; color: #069;float:left">绿色</li>
               <li style="margin-right:20px; color: #069;float:left">紫色</li>
               <li style="margin-right:20px; color: #069;float:left">其它</li>
             </ul>
          </div>
          <div style="float:left;width:15%;height:100%">颜色：</div>
     </div>
     <div style="text-align:center;height: 28px;border: 1px solid #ddd;cursor: pointer;width:80px;margin:0 auto;">
         <a>搜索</a>
     </div>
     <div>
       <div style="float:right;width:85%">
           <ul style=" list-style: none;margin:0;">
            <%if(!commodity_infor_list.isEmpty()){
	    	    for(Commodity_infor map:commodity_infor_list){
	    		 %>
	    		 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>">
              <li class="commodity">
                 <div style="height:280px;width:100%">
                    <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%">
                 </div>
                 <div style="height:120px;width:98%;margin:0 auto;">
                   <p style="text-align:center;color: #e3101e;font-size: 20px;vertical-align: middle;">￥：<%=map.getPrice() %></p>
                   <p style="text-align:center;font-size:16px;"><%=map.getCommodity_name() %></p>
                   <p style="font-size:12px;height:50px;"><%=map.getDescribe() %></p>
                   <p class="commodity_a">
                       <a href="javascript:duizhao<%=map.getCommodity_id()%>();">
                        <span class="commodity_a1">
                          <img style="width:24px;height:24px" src="${pageContext.request.contextPath}/images/duizhao.png">
                        </span>
                      </a>
                       <a href="${pageContext.request.contextPath}/Shoucang_shangpin1?action=home&commodity_id=<%=map.getCommodity_id()%>">
                        <span class="commodity_a2">
                          <img style="width:24px;height:24px" src="${pageContext.request.contextPath}/images/shoucang.png">
                        </span>
                      </a>
                       <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>"> 
                        <span class="commodity_a3">
                          <img style="width:24px;height:24px" src="${pageContext.request.contextPath}/images/gouwuche.png">
                        </span>
                      </a>
                      <a href="">
                        <span class="commodity_a4">
                          <img style="width:24px;height:24px" src="${pageContext.request.contextPath}/images/kefu.png">
                        </span>
                      </a>
                   </p>
                 </div>
              </li>
              </a>
              <%}} %>
              
           </ul>
            <form name="form1" method="post">
            
            </form>
            <table width="100%" border="0" cellpadding="4" cellspacing="0" style="margin:10px 0 10px 0;">
                               <tbody>
                                <tr bgcolor="#ffffff" height="20">
                                    <td height="20" align="center" valign="middle" nowrap>
                                        <span class="style7">共<%=pUtil.getPageCount()%>页</span>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=1" class="dh2">首页</a>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=<%=pUtil.getCurrentPage()-1%>" class="dh2">上一页</a>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=<%=pUtil.getCurrentPage()+1%>" class="dh2">下一页</a>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=<%=pUtil.getPageCount()%>" class="dh2">尾页</a>&nbsp;
                                        <span class="style7">跳转到</span>
                                        <select name="select" id="" class="text2" style="width: 40px" onchange="changePage(this.value)">
                                            <%
                                              int len=pUtil.getPageCount();
                                              for(int i=1;i<=len;i++){
                                            %>
                                            <option value="<%=i %>" <%=(i==pUtil.getCurrentPage()?"selected":"") %>>  <!--selected表示选中-->
                                                <%=i %>
                                            </option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </td>
                                </tr>
                               </tbody>
                           </table>
       </div>
       <div style="float:left;width:15%">
          <div style="border: 1px solid #e6e6e6; border-top: 2px solid #a5a5a5;border-bottom: 0 none;height: 32px;">一周销量排行榜</div>
          <div style="width:90%;margin:0 auto;height:95px">
             <p style="color:#fff;width:20px;height:20px;background:url(${pageContext.request.contextPath}/images/paiming1.png) no-repeat;background-size:100% 100%;"></p>
             <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=3">
               <div style="width:100%;height:75px">
                <div style="float:right;width:60%;height:100%">
                  <p style="font-size:13px;">华为手机Mate30(TAS-AL00)</p>
                  <p style="font-size:13px;color: #e3101e;">￥ 1669</p>
                </div>
                <div style="float:left;width:40%;height:100%"><img style="width:100%;height:100%" src="${pageContext.request.contextPath}/images/huawei_mate30_fei1.png" style=""></div>
               </div>
             </a>
          </div>
          <div style="width:90%;margin:0 auto;height:95px">
             <p style="color:#fff;width:20px;height:20px;background:url(${pageContext.request.contextPath}/images/paiming2.png) no-repeat;background-size:100% 100%;"></p>
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=2">
             <div style="width:100%;height:75px">
                <div style="float:right;width:60%;height:100%">
                  <p style="font-size:13px;">vivo NEX3</p>
                  <p style="font-size:13px;color: #e3101e;">￥ 4399</p>
                </div>
                <div style="float:left;width:40%;height:100%"><img style="width:100%;height:100%" src="${pageContext.request.contextPath}/images/vivo_nex3_liu5.png" style=""></div>
             </div>
             </a>
          </div>
          <div style="width:90%;margin:0 auto;height:95px">
             <p style="color:#fff;width:20px;height:20px;background:url(${pageContext.request.contextPath}/images/paiming3.png) no-repeat;background-size:100% 100%;"></p>
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
             <div style="width:100%;height:75px">
                <div style="float:right;width:60%;height:100%">
                  <p style="font-size:13px;">Apple iPhone 11</p>
                  <p style="font-size:13px;color: #e3101e;">￥ 4599</p>
                </div>
                <div style="float:left;width:40%;height:100%"><img style="width:100%;height:100%" src="${pageContext.request.contextPath}/images/iphone11_hei1.png" style=""></div>
             </div>
             </a>
          </div>
       </div>
     </div>
   </div>
   
</body>
<script>
var time_xiang=document.getElementById('time_xiang'),
suosou_leis=document.getElementById('suosou_leis'),
suosou_leis1=document.getElementById('suosou_leis1'),
    gouwuche=document.getElementById('gouwuche'),
    search_lei=document.getElementById('search_lei'),
    duizhaolan=document.getElementById('duizhaolan'),
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
shangpin.onclick=function(){
	search_choose.innerHTML="商品";
	suosou_leis.value="商品";
}
dianpu.onclick=function(){
	search_choose.innerHTML="店铺";
	suosou_leis.value="店铺";
}
huati.onclick=function(){
	search_choose.innerHTML="话题";
	suosou_leis.value="话题";
}
quanzi.onclick=function(){
	search_choose.innerHTML="圈子";
	suosou_leis.value="圈子";
}
 /*********/
   function cha1(){
	   duizhaolan.style.display="none";
 }
   function qinkong(){
		<%for(int i=1;i<5;i++){%>
		    document.getElementById('duibi<%=i%>_commodity_id').value="";
		    document.getElementById('duibi<%=i%>_commodity_id').checked=false;
			document.getElementById('duibi<%=i%>_name').innerHTML="您还可以继续添加";
			document.getElementById('duibi<%=i%>_price').innerHTML="";
			document.getElementById('duibi<%=i%>_image').src="${pageContext.request.contextPath}/images/shuzi<%=i%>.png";
		<%}%>
		
	} 
   <%for(int i=1;i<5;i++){%>
   document.getElementById('shanchu<%=i%>').onclick=function(){
   	document.getElementById('duibi<%=i%>_commodity_id').value="";
   	document.getElementById('duibi<%=i%>_commodity_id').checked=false;
   	document.getElementById('duibi<%=i%>_name').innerHTML="您还可以继续添加";
   	   document.getElementById('duibi<%=i%>_price').innerHTML="";
   	   document.getElementById('duibi<%=i%>_image').src="${pageContext.request.contextPath}/images/shuzi<%=i%>.png";
   }
   <%}%>
   <%if(!commodity_infor_list.isEmpty()){
	   	for(Commodity_infor map:commodity_infor_list){ 
	   	%>
	   function duizhao<%=map.getCommodity_id()%>(){
		   duizhaolan.style.display="block";
		   
		   if(document.getElementById('duibi1_price').innerHTML==""){
			  
			   document.getElementById('duibi1_commodity_id').checked=true;
			   document.getElementById('duibi1_commodity_id').value="<%=map.getCommodity_id()%>";
			   document.getElementById('duibi1_name').innerHTML="<%=map.getCommodity_name()%>";
			   document.getElementById('duibi1_price').innerHTML="<%=map.getPrice()%>";
			   document.getElementById('duibi1_image').src="${pageContext.request.contextPath}/<%=map.getImage()%>";
		   }else if(document.getElementById('duibi2_price').innerHTML==""){
			   document.getElementById('duibi2_commodity_id').value="<%=map.getCommodity_id()%>";
			   document.getElementById('duibi2_commodity_id').checked=true;
			   document.getElementById('duibi2_name').innerHTML="<%=map.getCommodity_name()%>";
			   document.getElementById('duibi2_price').innerHTML="<%=map.getPrice()%>";
			   document.getElementById('duibi2_image').src="${pageContext.request.contextPath}/<%=map.getImage()%>";
		   }else if(document.getElementById('duibi3_price').innerHTML==""){
			   document.getElementById('duibi3_commodity_id').checked=true;
			   document.getElementById('duibi3_commodity_id').value="<%=map.getCommodity_id()%>";
			   document.getElementById('duibi3_name').innerHTML="<%=map.getCommodity_name()%>";
			   document.getElementById('duibi3_price').innerHTML="<%=map.getPrice()%>";
			   document.getElementById('duibi3_image').src="${pageContext.request.contextPath}/<%=map.getImage()%>";
		   }else if(document.getElementById('duibi4_price').innerHTML==""){
			   document.getElementById('duibi4_commodity_id').checked=true;
			   document.getElementById('duibi4_commodity_id').value="<%=map.getCommodity_id()%>";
			   document.getElementById('duibi4_name').innerHTML="<%=map.getCommodity_name()%>";
			   document.getElementById('duibi4_price').innerHTML="<%=map.getPrice()%>";
			   document.getElementById('duibi4_image').src="${pageContext.request.contextPath}/<%=map.getImage()%>";
		   }else{
			   tishi.style.display="block";
			   tishi_content.innerHTML="对比栏已经添加满，您可以删除一些商品再添加哦~";
		   }
		  
	   }
	   <%}}%>
</script>
</html>