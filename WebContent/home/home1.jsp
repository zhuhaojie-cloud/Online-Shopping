<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.util.*" import="swu.xxj.test.Test" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  DividePage pUtil=(DividePage)request.getAttribute("pUtil");
  
  List<Lunbo> lunbo_list=new ArrayList<Lunbo>();
  lunbo_list=(ArrayList<Lunbo>)request.getAttribute("lunbo_list"); 
  
  List<Coupon> coupon_list=new ArrayList<Coupon>();
  coupon_list=(ArrayList<Coupon>)request.getAttribute("coupon_list"); 
  
  List<Shoufa> shoufa_list=new ArrayList<Shoufa>();
  shoufa_list=(ArrayList<Shoufa>)request.getAttribute("shoufa_list"); 
  
  List<Notice_infor> notice_infor_list=new ArrayList<Notice_infor>();
  notice_infor_list=(ArrayList<Notice_infor>)request.getAttribute("notice_infor_list"); 

  List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
  commodity_infor_list=(ArrayList<Commodity_infor>)request.getAttribute("commodity_infor_list");
  
  List<Commodity_infor> commodity_infor_list1=new ArrayList<Commodity_infor>();
  commodity_infor_list1=(ArrayList<Commodity_infor>)request.getAttribute("commodity_infor_list1");
%>
<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/style1.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/style3.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/js/lunbo.js"> </script>
    <script src="${pageContext.request.contextPath}/js/jquery.js"> </script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
</head>
<style>
body{
   margin:0;
}
 .lunbo ul li ul li:hover{
    background: #fff;
    color:#000;
 }
 
 .cainixihuan{
    float:left;
    width:221px;height:300px;background: #eee;margin:10px;border:1px solid #ddd;
 }
 .cainixihuan:hover{
    border:1px solid #000;
 
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
.out_box{ 
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
.out_box div{ 
display: block; 
 
position: absolute; 
left: 0; 
top: 0; 
background: #060; 
} 
.out_box .front_box{ 
z-index: 2; 
} 
.out_box .back_box{ 
z-index: 1; 
-webkit-transform: rotateY(180deg); 
-moz-transform: rotateY(180deg); 
transform: rotateY(180deg); 
} 
.out_box:hover{ 
-webkit-transform: rotateY(180deg); 
-moz-transform: rotateY(180deg); 
transform: rotateY(180deg); 
}
.gouwucheshangpin:hover{
   background:#f8f8f8;
 
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
.bt_box{
	width: 100%;
	text-align: center;
	font-size: 14px;
}
.bt_box .gb{
	display:inline-block;
	width:120px;
	height:35px;
	border-radius: 8px;
	background:#f3f3f3;
	color:#444;
	line-height: 35px;
}
.bt_box .queren{
	display: inline-block;
	width:120px;
	height:35px;
	border-radius: 8px;
	background:#4B8BF5;
	color:#fff;
	line-height: 35px;
	    border-width: 0px;
}
.preview{
      width: 150px;
    }
  .preview img{
      margin: 5px 0;
      width: 100%;
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
    th.action="${pageContext.request.contextPath}/Home?pageNum=1"; 
    th.submit();
}
function forward() {
    var th=document.form1;
    th.action="${pageContext.request.contextPath}/Home?pageNum=<%=pUtil.getCurrentPage()-1%>"; 
    th.submit();
}
function next() {
    var th=document.form1;
    th.action="${pageContext.request.contextPath}/Home?pageNum=<%=pUtil.getCurrentPage()+1%>"; 
    th.submit();
}
function end() {
    var th=document.form1;
    th.action="${pageContext.request.contextPath}/Home?pageNum=<%=pUtil.getPageCount()%>";
    th.submit();
}
function changePage(currentPage) {
	  window.location.href="${pageContext.request.contextPath}/Home?pageNum="+currentPage
}
</script>
<body>
  <div id="gouwuche1" onmouseenter="my_18mouseenter()" onmouseleave="my_18mouseleave()" style="z-index:5;padding:5px;position:absolute;height:80px;display:none;right:35px;top:30px;width:300px;background:#fff;box-shadow: 0 0 18px rgba(0,0,0,.09);">
     <div style="margin-top:20px;">你还未<a href="${pageContext.request.contextPath}/mvc/tiao">登录</a>，赶紧登录选购吧！</div>
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
  <div id="tishi" style="display:none;z-index:999;position:fixed;width:100%;height:150px;top:80px;">
    <div style="opacity:0.9;border-radius:10px;position: relative;;margin:0 auto;width:230px;height:100%;background: #cfc">
      <a href="javascript:cha()"><img alt="" src="${pageContext.request.contextPath}/images/error.jpg" style="cursor:pointer;border-radius: 50px;width:20px;height:20px;position:absolute;top:0;right:0;"></a>
      <p id="tishi_content" style="margin:0 auto;width:200px;height:150px;padding-top:10px;"><p>
    </div>
  </div>
  <div style="width:100%;height:36px;position:fixed;display:none;z-index:999;background:#fcaadd;" id="search_gu">
     <div style="float:left;margin-left:30%;" id="">
       <img>
     </div>
    <div style="border:1px solid #dd00a7;width:529px;margin:0 auto;">
              <div style="float:left;position: absolute;margin:0 auto">
                <div id="search_choose1" onmouseenter="my16mouseenter()" onmouseleave="my16mouseleave()" style="border-right:1px solid #dd00a7;height:27px;padding:3px 10px 3px 20px;">商品&#9660;</div>
                <ul class="search_lei" onmouseenter="my16mouseenter()" onmouseleave="my16mouseleave()" style="margin:0;padding:0;list-style:none;display:none;border:1px solid #dd00a7;disborder-top:0px;background:#fff;" id="search_lei1" >
                 <li id="shangpin1">商品</li>
                  <li id="dianpu1">店铺</li>
                  <li id="huati1">话题</li>
                  <li id="quanzi1">圈子</li>
                </ul> 
              </div>
              <div>
              <form style="margin:0;padding:0;">
               <input type="text" style="height:32px;width:70%;padding:-2px 0px 0px 0px;margin:0px 0px 0px 79px;border-width: 0px;">
               <button style="height:34px;width:79px;cursor:pointer;margin-left:-4.5px;padding:2px 6px 4px 6px;">搜索</button>
              </form>
             </div>
           </div>
    </div>
    <div style="position:fixed;width:80px;height:200px;display:none;top:40%;left:-1px;" id="celan">
       <ul style="list-style:none;width:100%;height:100%;margin:0;padding:0;">
        <li style="border:1px solid #cff;width:80%;height:24px;padding:5px 8px;" id="ce1"><a href="#lan1">新品首发</a></li>
          <li style="border:1px solid #cff;width:80%;height:24px;padding:5px 8px;" id="ce2"><a href="#lan2">限时抢购</a></li>
          <li style="border:1px solid #cff;width:80%;height:24px;padding:5px 8px;" id="ce3"><a href="#lan3">顶顶顶顶</a></li>
          <li style="border:1px solid #cff;width:80%;height:24px;padding:5px 8px;" id="ce4"><a href="#lan4">为你推荐</a></li>
       </ul>    
    </div>
    <div style="position:fixed;width: 35px;height: 100%;top: 0;right: 0;background: #5c5c5c;z-index: 998;">
      
      <a href="${pageContext.request.contextPath}/mvc/tiao"><div class="ce_deng" style="cursor:pointer;width:100%;height:35px;background: #cdd;border-bottom: 1px solid #fff;margin-top:200px;"><img alt="登陆" src="images/login_user.png" style="width:35px;height:35px;"></div></a>
     
      <div class="ce_guwuche" style="cursor:pointer;width:80%;height:100px;background:#fff;border-bottom: 1px solid #cdd;text-align: center;padding:5px">
          <a href="${pageContext.request.contextPath}/login/login.jsp">购物车</a>
          <img src="images/gouwuche.png" style="width:28px;height:28px">
      </div>
      
      <a href="${pageContext.request.contextPath}/login/login.jsp"><div style="cursor:pointer;width:100%;height:35px;background: #fff;border-bottom: 1px solid #f8f8f8;"><img alt="" src="images/shoucang.png" style="padding:5px;width:28px;height:28px;"></div></a>
      
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
          <li style="float:right;margin-right:50px;height:30px" id="gouwuche" onmouseenter="my18mouseenter()" onmouseleave="my18mouseleave()"><a href="${pageContext.request.contextPath}/login/login.jsp">我的购物车</a></li>
          <li style="float:right;margin-right:50px;">
             <div class="heart_icon"></div>                 
             <div style="padding-left:24px;">心愿单</div>
          </li>
          <li style="float:right;margin-right:50px;"><a href="${pageContext.request.contextPath}/login/login.jsp">服务中心</a></li>
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
   <div class="lunbo" style="height:450px;">
       <ul style="list-style: none;margin:0;padding:0;width:100%;height:450px;background: #f8f8f8">
          <li style="float:left;width:21%;height:450px;">
             <ul style="list-style:none;color:#fff;background:#000;opacity:0.7;margin:0;padding:0;width:74%;margin-left:82px">
               <li id="a1" onmouseenter="my1mouseenter()" onmouseleave="my1mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;"><a>手机</a>&nbsp;&nbsp;&nbsp;<a>充值</a></li>
               <li id="a2" onmouseenter="my2mouseenter()" onmouseleave="my2mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>相机</a>&nbsp;&nbsp;&nbsp;<a>数码</a></li>
               <li id="a3" onmouseenter="my3mouseenter()" onmouseleave="my3mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>电脑</a>&nbsp;&nbsp;&nbsp;<a>办公</a></li>
               <li id="a4" onmouseenter="my4mouseenter()" onmouseleave="my4mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>电视</a>&nbsp;&nbsp;&nbsp;<a>影音</a></li>
                <li id="a5" onmouseenter="my5mouseenter()" onmouseleave="my5mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>空调</a>&nbsp;&nbsp;&nbsp;<a>洗衣机</a></li>
               <li id="a6" onmouseenter="my6mouseenter()" onmouseleave="my6mouseleave()" style="padding-left:60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>厨房</a>&nbsp;&nbsp;&nbsp;<a>电器</a></li>
                <li id="a7" onmouseenter="my7mouseenter()" onmouseleave="my7mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>家具</a>&nbsp;&nbsp;&nbsp;<a>建材</a></li>
               <li id="a8" onmouseenter="my8mouseenter()" onmouseleave="my8mouseleave()" style="padding-left:60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>酒水</a>&nbsp;&nbsp;&nbsp;<a>食品</a></li>
                <li id="a9" onmouseenter="my9mouseenter()" onmouseleave="my9mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>美食</a>&nbsp;&nbsp;&nbsp;<a>食品</a></li>
               <li id="a10" onmouseenter="my10mouseenter()" onmouseleave="my10mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>玩具</a>&nbsp;&nbsp;&nbsp;<a>母婴</a></li>
                <li id="a11" onmouseenter="my11mouseenter()" onmouseleave="my11mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>美妆</a>&nbsp;&nbsp;&nbsp;<a>智能</a></li>
               <li id="a12" onmouseenter="my12mouseenter()" onmouseleave="my12mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>服饰</a>&nbsp;&nbsp;&nbsp;<a>电器</a></li>
                <li id="a13" onmouseenter="my13mouseenter()" onmouseleave="my13mouseleave()" style="padding-left:60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>运动</a>&nbsp;&nbsp;&nbsp;<a>建材</a></li>
               <li id="a14" onmouseenter="my14mouseenter()" onmouseleave="my14mouseleave()" style="padding-left: 60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>汽车</a>&nbsp;&nbsp;&nbsp;<a>家纺</a></li>
                <li id="a15" onmouseenter="my15mouseenter()" onmouseleave="my15mouseleave()" style="padding-left:60px;height: 30px;line-height: 30px;white-space:nowrap;margin-left: 1px;"><a>首饰</a>&nbsp;&nbsp;&nbsp;<a>箱包</a></li>
              </ul>
          </li>
          <li style="float:left;width:59%;height:450px;">
             <div style="position:absolute;width:897px;z-index:1;">
              <div id="container">
                 <div id="list" style="left:-897px;">
                 <%if(!lunbo_list.isEmpty()){
	    	    for(Lunbo map:lunbo_list){
	    		 %>
     <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" alt="4.pg" style="width:897px;height:450px;"/>
     <%
}}%>
   </div>
   <div id="buttons">
     <span index="1" class="on"> </span>
     <span index="2"></span>
     <span index="3"></span>
     <span index="4"></span>
     <span index="5"></span>
   </div>

   <a href="javascript:;" class="arrow" id="prev">&lt;</a>

   <a href="javascript:;" class="arrow" id="next">&gt;</a>
              </div>
              </div>
              <div onmouseenter="my_1mouseenter()" onmouseleave="my_1mouseleave()" id="lie1" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:2;position:absolute;">
                 <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;"><a href="${pageContext.request.contextPath}/Fenlei?action=shouji&pageNum=1">手机</a></li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">iphone</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">华为</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">小米</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">荣耀</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">三星</li>
                         <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">vivo</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">中国移动</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">中国联通</li>
                        
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                         运营商
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机壳</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">贴膜</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机存储卡</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数据线</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">充电器</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机耳机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">移动电源</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机电池</li>
    
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机配件
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">移动</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">联通</li>
                       <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">电信</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">极信</li>

                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           冲话费
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
<li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">移动</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">联通</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">电信</li>
    
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                      冲流量
                    </div>
                </div>
         
              <div onmouseenter="my_2mouseenter()" onmouseleave="my_2mouseleave()" id="lie2" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:2;position:absolute;">
                    <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li><li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                      <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_3mouseenter()" onmouseleave="my_3mouseleave()" id="lie3" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:2;position:absolute;">
                    <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_4mouseenter()" onmouseleave="my_4mouseleave()" id="lie4" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:2;position:absolute;">
                   <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_5mouseenter()" onmouseleave="my_5mouseleave()" id="lie5" style="background:#f8f8f8;width:897px;height:450px;display:none;z-index:2;position:absolute;">
                   <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                                            <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_6mouseenter()" onmouseleave="my_6mouseleave()" id="lie6" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                    <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_7mouseenter()" onmouseleave="my_7mouseleave()" id="lie7" style="background:#f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                    <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                                            <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
              
               <div onmouseenter="my_8mouseenter()" onmouseleave="my_8mouseleave()" id="lie8" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                    <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                                            <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div> 
              <div onmouseenter="my_9mouseenter()" onmouseleave="my_9mouseleave()" id="lie9" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                    <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_10mouseenter()" onmouseleave="my_10mouseleave()" id="lie10" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                   <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                                              <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_11mouseenter()" onmouseleave="my_11mouseleave()" id="lie11" style="background:#f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                   <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_12mouseenter()" onmouseleave="my_12mouseleave()" id="lie12" style="background:#f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                    <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_13mouseenter()" onmouseleave="my_13mouseleave()" id="lie13" style="background:#f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                   <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_14mouseenter()" onmouseleave="my_14mouseleave()" id="lie14" style="background: #f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                   <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
               <div onmouseenter="my_15mouseenter()" onmouseleave="my_15mouseleave()" id="lie15" style="background:#f8f8f8;width:897px;height:450px;display:none;z-index:5;position:absolute;">
                   <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
                <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
               <div style="width:877px;height:20px;padding:10px;border-bottom:1px solid #fff;">
                    <div style="float:right;width:800px;">
                      <ul style="list-style:none;margin:0;padding:0;">
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">手机</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">数码</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">以旧换新</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">保延服务</li>
                        <li style="float:left;padding:0 20px 0 20px;border-left:1px solid #fff;">智能生活</li>
                      </ul>
                    </div>
                    <div style="float:left;width:70px;">
                                                           手机通讯
                    </div>
                </div>
              </div>
              
          </li>
          <li style="float:left;width:20%;height:450px;background:#ccc;width:270px;">
          <div style="width:270px;height:100%;">
                <div style="width:80%;height:30%;margin:0 auto;">
                   <div style="width:100%;height:30px;">
                      <a href="" style="float:right;color: #5e5e5e;">更多</a>
                      <h3 style="float:left">快讯</h3>
                   </div>
                   <div>
                     <%if(!notice_infor_list.isEmpty()){
	    	  for(Notice_infor map:notice_infor_list){ %>
                     <a href="${pageContext.request.contextPath}/Kuaixun" style="width:270px;color: #5e5e5e;font-size:12px;line-height:26px;text-decoration: none"><%=map.getTitle() %></a><br>
                   <%}} %>
                   </div>
                </div>
                <div style="width:100%;height:35%">
                   <ul style="list-style:none;margin:0;padding:0;height:100%">
                     <li style="width:50%;height:50%;float:left;"><img src="${pageContext.request.contextPath}/images/home_bangzhu.png" style="width:100%;height:100%;"><li>
                     <li style="width:50%;height:50%;float:left;"><img src="${pageContext.request.contextPath}/images/home_huiyuan.png" style="width:100%;height:100%;"><li>
                     <li style="width:50%;height:50%;float:left;"><img src="${pageContext.request.contextPath}/images/home_huiyuan.png" style="width:100%;height:100%;"><li>
                     <li style="width:50%;height:50%;float:left;"><img src="${pageContext.request.contextPath}/images/home_lingjuan.png" style="width:100%;height:100%;"><li>
                   </ul>
                </div>
                <div style="width:100%;height:35%">
                   <img alt="" src="${pageContext.request.contextPath}/images/lunbo1.jpg" style="width:100%;height:100%;">
                </div>
             </div>
          </li>
       </ul>
   </div>
   <div style="width:100%;height:250px;">
      <div style="width:10%;height:50px;margin:0 auto;padding-top:20px;font-size:30px;" id="lan1">新品首发</div>
     <div style="float:right;width:1200px;height:200px;background: #bbb;margin-right:50px;">
              <div id="container1">
           <div id="list1" style="left:-200px;">
              <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==14)
	    	    	  break;
	    	  %>
	    	  
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>">
                 <img src="${pageContext.request.contextPath}/<%=map.getImage() %>" alt="5.pg" style="width:200px;height:200px;"/>
              </a>
         
              <%}} %>
           </div>
   
          <div id="buttons1" style="display: none;">
             <span index1="1" class="on"> </span>
             <span index1="2"></span>
             <span index1="3"></span>
             <span index1="4"></span>
             <span index1="5"></span>
             <span index1="6"></span>
   </div>
   <a href="javascript1:;" class="arrow" id="prev1">&lt;</a>
   <a href="javascript1:;" class="arrow" id="next1">&gt;</a>
 </div>
     </div>
     <div style="float:left;width:180px;height:200px;;background: #ddd;margin-left:82px;">
        <img src="images/xinpin.jpg" style="width:100%;height:100%">
     </div>
   </div>
<div style="height:550px;width:100%;">
   <!-- 根据时间显示对应时间的页面 -->
   <div style="width:10%;height:50px;margin:0 auto;padding-top:20px;font-size:30px;" id="lan2">限时抢购</div>
   <div id="container2" style="background: #f8f8f8">
    <div id="buttons2">
     <span index2="1" class="on">8:00-12:00</span>
     <span index2="2">12:00-16:00</span>
     <span index2="3" >16:00-20:00</span>
     <span index2="4">20:00-24:00</span>
     <span index2="5">24:00-04:00</span>
   </div>
   <div id="list2" style="left:-1255px;">
     <div>
        <div style="float:right;width:70%;height:100%;background: #ccc"></div>
        <div style="float:left;width:30%；height:100%;background: #fcd"></div>
     </div>
     <div>
        <div style="float:right;width:70%;height:450px;background: #ccc">
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                   <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_lv3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_hei4.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_lan3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
              </ul>
           </div>
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_zi2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                
                </li>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hei2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hong2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
              </ul>
           </div>
        </div>
        <div style="float:left;width:30%;height:450px;background: #fcd">
           <div style="width:188.25px;height:450px;" class="out_box">
             <div class="front_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
              <img src="images/mi_redmi7_hong4.png" style="width:188.25px;height:450px">
               </a>
             </div> 
             <div class="back_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                <img src="images/mi_redmi7_hong5.png" style="width:188.25px;height:450px">
                </a>
             </div> 
            
           </div>
           <div style="width:50%;height:100%;">
             <div style="width:188.25px;height:225px;" class="out_box">
                 
                <div class="front_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei2.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei3.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                 
             </div>
             <div style="width:100%;height:110px;" class="out_box">
                 <div class="front_box" style="height:110px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:110px">
                </div> 
                <div class="back_box" style="height:110px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:110px">
                </div> 
             </div>
             <div style="width:100%;height:115px;" class="out_box">
                 <div class="front_box" style="height:115px; width:188.25px;">
                  <img src="images/iphone11_lv2.png" style="width:188.25px;height:115px">
                </div> 
                <div class="back_box" style="height:115px; width:188.25px;">
                  <img src="images/iphone11_zi2.png" style="width:188.25px;height:115px">
                </div> 
             </div>
           </div>
        </div>
     </div>
  <div>
        <div style="float:right;width:70%;height:450px;background: #ccc">
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                   <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_lv3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_hei4.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_lan3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
              </ul>
           </div>
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_zi2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                
                </li>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hei2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hong2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
              </ul>
           </div>
        </div>
        <div style="float:left;width:30%;height:450px;background: #fcd">
           <div style="width:188.25px;height:450px;" class="out_box">
             <div class="front_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
              <img src="images/mi_redmi7_hong4.png" style="width:188.25px;height:450px">
               </a>
             </div> 
             <div class="back_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                <img src="images/mi_redmi7_hong5.png" style="width:188.25px;height:450px">
                </a>
             </div> 
            
           </div>
           <div style="width:50%;height:100%;">
             <div style="width:188.25px;height:225px;" class="out_box">
                 
                <div class="front_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei2.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei3.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:125.5px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:225px; width:188.25px;">
                  <img src="images/iphone11_lv2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:125.5px; width:188.25px;">
                  <img src="images/iphone11_zi2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
           </div>
        </div>
     </div>
     <div>
        <div style="float:right;width:70%;height:450px;background: #ccc">
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                   <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_lv3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_hei4.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_lan3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
              </ul>
           </div>
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_zi2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                
                </li>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hei2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hong2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
              </ul>
           </div>
        </div>
        <div style="float:left;width:30%;height:450px;background: #fcd">
           <div style="width:188.25px;height:450px;" class="out_box">
             <div class="front_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
              <img src="images/mi_redmi7_hong4.png" style="width:188.25px;height:450px">
               </a>
             </div> 
             <div class="back_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                <img src="images/mi_redmi7_hong5.png" style="width:188.25px;height:450px">
                </a>
             </div> 
            
           </div>
           <div style="width:50%;height:100%;">
             <div style="width:188.25px;height:225px;" class="out_box">
                 
                <div class="front_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei2.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei3.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:125.5px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:225px; width:188.25px;">
                  <img src="images/iphone11_lv2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:125.5px; width:188.25px;">
                  <img src="images/iphone11_zi2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
           </div>
        </div>
     </div>
  <div>
        <div style="float:right;width:70%;height:450px;background: #ccc">
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                   <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_lv3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_hei4.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_lan3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
              </ul>
           </div>
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_zi2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                
                </li>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hei2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hong2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
              </ul>
           </div>
        </div>
        <div style="float:left;width:30%;height:450px;background: #fcd">
           <div style="width:188.25px;height:450px;" class="out_box">
             <div class="front_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
              <img src="images/mi_redmi7_hong4.png" style="width:188.25px;height:450px">
               </a>
             </div> 
             <div class="back_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                <img src="images/mi_redmi7_hong5.png" style="width:188.25px;height:450px">
                </a>
             </div> 
            
           </div>
           <div style="width:50%;height:100%;">
             <div style="width:188.25px;height:225px;" class="out_box">
                 
                <div class="front_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei2.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei3.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:125.5px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:225px; width:188.25px;">
                  <img src="images/iphone11_lv2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:125.5px; width:188.25px;">
                  <img src="images/iphone11_zi2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
           </div>
        </div>
     </div>
     <div>
        <div style="float:right;width:70%;height:450px;background: #ccc">
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                   <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_lv3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_hei4.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_lan3.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
              </ul>
           </div>
           <div style="width:100%;height:50%;">
              <ul style="list-style: none;width:100%;height:100%;margin:0;padding:0;">
                <li style="float:left;width:25%;height:100%">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/iphone11_zi2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/huawei_mate30_fei1.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                
                </li>
                <li style="float:left;width:25%;height:100%">
                <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hei2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                </li>
                <li style="float:left;width:25%;height:100%">
                  <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                   <img src="images/mi_redmi7_hong2.png" style="width:100%;height:100%;border:1px solid #fff;">
                   </a>
                 </li>
              </ul>
           </div>
        </div>
        <div style="float:left;width:30%;height:450px;background: #fcd">
           <div style="width:188.25px;height:450px;" class="out_box">
             <div class="front_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
              <img src="images/mi_redmi7_hong4.png" style="width:188.25px;height:450px">
               </a>
             </div> 
             <div class="back_box" style="height:450px; width:188.25px;">
              <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                <img src="images/mi_redmi7_hong5.png" style="width:188.25px;height:450px">
                </a>
             </div> 
            
           </div>
           <div style="width:50%;height:100%;">
             <div style="width:188.25px;height:225px;" class="out_box">
                 
                <div class="front_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei2.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                 <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=1">
                  <img src="images/mi_redmi7_hei3.png" style="width:188.25px;height:225px">
                  </a>
                </div> 
                 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:125.5px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:225px; width:188.25px;">
                  <img src="images/mi_redmi7_hong2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
             <div style="width:100%;height:125.5px;" class="out_box">
                 <div class="front_box" style="height:225px; width:188.25px;">
                  <img src="images/iphone11_lv2.png" style="width:188.25px;height:125.5px">
                </div> 
                <div class="back_box" style="height:125.5px; width:188.25px;">
                  <img src="images/iphone11_zi2.png" style="width:188.25px;height:125.5px">
                </div> 
             </div>
           </div>
        </div>
     </div>
   <a href="javascript2:;" class="arrow" id="prev2">&lt;</a>
   <a href="javascript2:;" class="arrow" id="next2">&gt;</a>
 </div>
</div>   
<div style="width:80%;height:450px;margin:0 auto;">
   <div style="width:10%;height:50px;margin:0 auto;padding-top:20px;font-size:30px;" id="lan3">顶顶顶顶</div>
   <ul style="list-style:none;width:100%;height:400px">
     <li style="float:left;height:400px;width:33%;border-radius:4px;background:#ddd;margin-left:-39px;margin-right:10px;background:url(images/hongbao.png) no-repeat;background-size:100% 100%;
	-webkit-background-size:100% 100%;
	-moz-background-size:100% 100%;
	-o-background-size:100% 100%;
	-ms-background-size:100% 100%;">
        <div style="width:80%;margin:0 auto;height:90%;">
           <div style="width:50%;height:60px;padding-top:10px;margin:0 auto;font-weight: 700;font-size: 24px;color: #333;line-height: 32px;">领卷中心</div>
<%if(!coupon_list.isEmpty()){   
      int i=1;
	  for(Coupon map:coupon_list){
		 i++;
		 if(i==5) break;
%>
           <div style="width:320px;height:100px;">
              <div style="height:100px;width:220px;float:right;">
                <div style="float:right;width:20%;height:100%;padding-top:10px;">
                   <a href="${pageContext.request.contextPath}/login/login,jsp" style="display:inline-block;vertical-align: middle;line-height: 19px;width: 14px;font-size: 14px;">点击领取</a>
                </div>
                <div style="float:left;width:80%;height:100%;padding-top:10px;"> 
                  <h3><%=map.getAmount() %>￥</h3>
                  <p><%=map.getName() %></p>
                  <h6><%=map.getNote()%></h6>
                </div>
              </div>
              <div style="width:100px;height:100px;float:left;">
                 <img style="width:90%;height:90%;border-radius:50%;" src="${pageContext.request.contextPath}/images/home_lingjuan.png">
              </div>
           </div>
	   <%
	  }
}%>
        </div>
     </li>
     <li style="float:left;height:400px;width:33%;border-radius:4px;background:#ddd;margin-right:10px;">
        <div style="width:80%;margin:0 auto;height:90%;">
           <div style="width:30%;height:60px;padding-top:10px;margin:0 auto;font-weight: 700;font-size: 24px;color: #333;line-height: 32px;">逛好店</div>
           <div style="width:320px;height:150px;"> <img alt="" src="${pageContext.request.contextPath}/images/dian3.png" style="width:100%;height:100%"></div>
           <div style="width:320px;height:150px;">
              <div style="width:50%;height:150px;float:right"> <img alt="" src="${pageContext.request.contextPath}/images/dian1.png" style="width:100%;height:100%"></div>
              <div style="width:50%;height:150px;float:left"> <img alt="" src="${pageContext.request.contextPath}/images/dian2.png" style="width:100%;height:100%"></div>
           </div>
        </div>
     </li>
     <li style="float:left;height:400px;width:33%;border-radius:4px;background:#ddd;">
         <div style="width:80%;margin:0 auto;height:90%;">
           <div style="width:30%;height:60px;padding-top:10px;margin:0 auto;font-weight: 700;font-size: 24px;color: #333;line-height: 32px;">最新最热</div>
           <div style="width:320px;height:310px;">
             <div id="container3">
    <div id="buttons3">
     <span index3="1" class="on"></span>
     <span index3="2"></span>
     <span index3="3"></span>
     <span index3="4"></span>
     <span index3="5"></span>
   </div>
   <div id="list3" style="left:-320px;">
       <%if(!commodity_infor_list.isEmpty()){
            	  int i=0;
	    	  for(Commodity_infor map:commodity_infor_list){ 
	    	      i++;
	    	      if(i==8) break;
	    	  %>
     <div>
        <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>"><img alt="" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:280px"></a>
        <p style="text-align:center"><%=map.getCommodity_name() %></p>
     </div>
     <%}} %>
   </div>
     <a href="javascript3:;" class="arrow" id="prev3">&lt;</a>
     <a href="javascript3:;" class="arrow" id="next3">&gt;</a>
   </div>
           </div>
        </div>
     </li>
   </ul>
</div>
<div style="width:80%;height:950px;margin:0 auto;">
   <div style="width:10%;height:50px;margin:0 auto;padding-top:20px;font-size:30px;" id="lan4">为你推荐</div>
   <div style="width:100%;height:650px;">
     <ul style="list-style:none;width:100%;height:100%;padding:0;">
      <%if(!commodity_infor_list1.isEmpty()){
	    	for(Commodity_infor map:commodity_infor_list1){ %>
        <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>">
              <li class="commodity">
                 <div style="height:280px;width:100%">
                    <img id="image<%=map.getCommodity_id()%>" src="${pageContext.request.contextPath}/<%=map.getImage() %>" style="width:100%;height:100%">
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
                      <a href="${pageContext.request.contextPath}/login/login.jsp">
                        <span class="commodity_a2">
                          <img style="width:24px;height:24px" src="${pageContext.request.contextPath}/images/shoucang.png">
                        </span>
                      </a>
                      <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>"> 
                        <span class="commodity_a3">
                          <img style="width:24px;height:24px" src="${pageContext.request.contextPath}/images/gouwuche.png">
                        </span>
                      </a>
                      <a href="${pageContext.request.contextPath}/login/login.jsp">
                        <span class="commodity_a4">
                          <img style="width:24px;height:24px" src="${pageContext.request.contextPath}/images/kefu.png">
                        </span>
                      </a>
                   </p>
                 </div>
              </li>
              </a>
        <%}}%>
     </ul>
   </div>
  <form name="form1" method="post">
            
            </form>
            <table width="100%" border="0" cellpadding="4" cellspacing="0" style="margin:10px 0 10px 0;">
                               <tbody>
                                <tr bgcolor="#ffffff" height="20">
                                    <td height="20" align="center" valign="middle" nowrap>
                                        <span class="style7">共<%=pUtil.getPageCount()%>页</span>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Home?pageNum=1" class="dh2">首页</a>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Home?pageNum=<%=pUtil.getCurrentPage()-1%>" class="dh2">上一页</a>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Home?pageNum=<%=pUtil.getCurrentPage()+1%>" class="dh2">下一页</a>&nbsp;
                                        <a href="${pageContext.request.contextPath}/Home?pageNum=<%=pUtil.getPageCount()%>" class="dh2">尾页</a>&nbsp;
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
<div style="width:100%;height:100px; background: #f7f7f7;margin-top:20px;">
    <div style="padding-top:75px">
		<p>Copyright &copy; 2017.Company name All rights reserved.</p>
	</div>
</div>
</body>
<script>
   var search_lei=document.getElementById('search_lei'),
	shangpin=document.getElementById('shangpin'),
	dianpu=document.getElementById('dianpu'),
	huati=document.getElementById('huati'),
	quanzi=document.getElementById('quanzi'),
	shangpin1=document.getElementById('shangpin1'),
	dianpu1=document.getElementById('dianpu1'),
	huati1=document.getElementById('huati1'),
	quanzi1=document.getElementById('quanzi1'),
       search_lei1=document.getElementById('search_lei1'),
      time_xiang=document.getElementById('time_xiang'),
     gouwuche=document.getElementById('gouwuche'),
     gouwuche1=document.getElementById('gouwuche1'),
       lie1=document.getElementById('lie1'),
       lie2=document.getElementById('lie2'),
       lie3=document.getElementById('lie3'),
       lie4=document.getElementById('lie4'),
       lie5=document.getElementById('lie5'),
       lie6=document.getElementById('lie6'),
       lie7=document.getElementById('lie7'),
       lie8=document.getElementById('lie8'),
       lie9=document.getElementById('lie9'),
       lie10=document.getElementById('lie10'),
       lie11=document.getElementById('lie11'),
       lie12=document.getElementById('lie12'),
       lie13=document.getElementById('lie13'),
       lie14=document.getElementById('lie14'),
       lie15=document.getElementById('lie15'),
       a1=document.getElementById('a1'),
       a2=document.getElementById('a2'),
       a3=document.getElementById('a3'),
       a4=document.getElementById('a4'),
       a5=document.getElementById('a5'),
       a6=document.getElementById('a6'),
       a7=document.getElementById('a7'),
       a8=document.getElementById('a8');
   a9=document.getElementById('a9'),
   a10=document.getElementById('a10'),
   a11=document.getElementById('a11'),
   a12=document.getElementById('a12'),
   a13=document.getElementById('a13'),
   a14=document.getElementById('a14'),
   tishi_content=document.getElementById('tishi_content'),
   tishi=document.getElementById('tishi'),
   a15=document.getElementById('a15'),
   close=document.getElementById('close'),
   duizhaolan=document.getElementById('duizhaolan');

   <%for(int i=1;i<5;i++){%>
document.getElementById('shanchu<%=i%>').onclick=function(){
	document.getElementById('duibi<%=i%>_commodity_id').value="";
	document.getElementById('duibi<%=i%>_commodity_id').checked=false;
	document.getElementById('duibi<%=i%>_name').innerHTML="您还可以继续添加";
	   document.getElementById('duibi<%=i%>_price').innerHTML="";
	   document.getElementById('duibi<%=i%>_image').src="${pageContext.request.contextPath}/images/shuzi<%=i%>.png";
}
<%}%>
function qinkong(){
	<%for(int i=1;i<5;i++){%>
	    document.getElementById('duibi<%=i%>_commodity_id').value="";
	    document.getElementById('duibi<%=i%>_commodity_id').checked=false;
		document.getElementById('duibi<%=i%>_name').innerHTML="您还可以继续添加";
		document.getElementById('duibi<%=i%>_price').innerHTML="";
		document.getElementById('duibi<%=i%>_image').src="${pageContext.request.contextPath}/images/shuzi<%=i%>.png";
	<%}%>
	
} 
   function error(){
	   tishi.style.display="block";
	   tishi_content.innerHTML="该优惠卷你已经领取过了~亲";
   }   
   function cha(){
	   tishi.style.display="none";
   }
   function cha1(){
	   duizhaolan.style.display="none";
   }
   <%if(!commodity_infor_list1.isEmpty()){
   	for(Commodity_infor map:commodity_infor_list1){ 
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
   function my0mouseenter(){
	   search_lei.style.display="block";
   }
   function my1mouseenter(){
	  lie1.style.display="block";
   }
   function my2mouseenter(){
	  lie2.style.display="block";
   }
   function my1mouseenter(){
		  lie1.style.display="block";
	   }
	   function my2mouseenter(){
		  lie2.style.display="block";
	   }
	   function my3mouseenter(){
		  lie3.style.display="block";
	   }
		   function my4mouseenter(){
			  lie4.style.display="block";
		   }
		   function my5mouseenter(){
				  lie5.style.display="block";
			   }
			   function my6mouseenter(){
				  lie6.style.display="block";
			   }
			   function my7mouseenter(){
					  lie7.style.display="block";
				   }
				   function my8mouseenter(){
					  lie8.style.display="block";
				   }
				   function my9mouseenter(){
						  lie9.style.display="block";
					   }
					   function my10mouseenter(){
						  lie10.style.display="block";
					   }
					   function my11mouseenter(){
							  lie11.style.display="block";
						   }
						   function my12mouseenter(){
							  lie12.style.display="block";
						   }
						   function my13mouseenter(){
								  lie13.style.display="block";
							   }
							   function my14mouseenter(){
								  lie14.style.display="block";
							   }
							   function my15mouseenter(){
									  lie15.style.display="block";
								   }
							   function my16mouseenter(){
									  search_lei1.style.display="block";
								   }
							   function my17mouseenter(){
									  time_xiang.style.display="block";
								   }
							   function my18mouseenter(){
								  
								   gouwuche1.style.display="block";
								   }
   function my_1mouseenter(){
	     lie1.style.display="block";
		 a1.style.background="#abcaaa";
	   }
   function my_2mouseenter(){
	    lie2.style.display="block";
	    a2.style.background="#abcaaa";
	   }
   function my_3mouseenter(){
	     lie3.style.display="block";
		 a3.style.background="#abcaaa";
	   }
 function my_4mouseenter(){
	    lie4.style.display="block";
	    a4.style.background="#abcaaa";
	   }
 function my_5mouseenter(){
     lie5.style.display="block";
	 a5.style.background="#abcaaa";
   }
function my_6mouseenter(){
    lie6.style.display="block";
    a6.style.background="#abcaaa";
   }
function my_7mouseenter(){
    lie7.style.display="block";
	 a7.style.background="#abcaaa";
  }
function my_8mouseenter(){
   lie8.style.display="block";
   a8.style.background="#abcaaa";
  }
function my_9mouseenter(){
    lie9.style.display="block";
	 a9.style.background="#abcaaa";
  }
function my_10mouseenter(){
   lie10.style.display="block";
   a10.style.background="#abcaaa";
  }
function my_11mouseenter(){
    lie11.style.display="block";
	 a11.style.background="#abcaaa";
  }
function my_12mouseenter(){
   lie12.style.display="block";
   a12.style.background="#abcaaa";
  }
function my_13mouseenter(){
    lie13.style.display="block";
	 a13.style.background="#abcaaa";
  }
function my_14mouseenter(){
   lie14.style.display="block";
   a14.style.background="#abcaaa";
  }
function my_15mouseenter(){
    lie15.style.display="block";
	 a15.style.background="#abcaaa";
  }
function my_18mouseenter(){
    gouwuche1.style.display="block";
	   gouwuche.style.background="#fff";
	  gouwuche.style.boxShadow="0 0 18px rgba(0,0,0,.09)";
  }
   /***************/
   function my0mouseleave(){
	   search_lei.style.display="none";
   }
   
   function my1mouseleave(){
	   lie1.style.display="none";
   }
   function my2mouseleave(){
	   lie2.style.display="none";
   }
   function my3mouseleave(){
	   lie3.style.display="none";
   }
   function my4mouseleave(){
	   lie4.style.display="none";
   }
   function my5mouseleave(){
	   lie5.style.display="none";
   }
   function my6mouseleave(){
	   lie6.style.display="none";
   }
   function my7mouseleave(){
	   lie7.style.display="none";
   }
   function my8mouseleave(){
	   lie8.style.display="none";
   }
   function my9mouseleave(){
	   lie9.style.display="none";
   }
   function my10mouseleave(){
	   lie10.style.display="none";
   }
   
   function my11mouseleave(){
	   lie11.style.display="none";
   }
   function my12mouseleave(){
	   lie12.style.display="none";
   }
   function my13mouseleave(){
	   lie13.style.display="none";
   }
   function my14mouseleave(){
	   lie14.style.display="none";
   }
   function my15mouseleave(){
	   lie15.style.display="none";
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
   function my_1mouseleave(){
	   lie1.style.display="none";
	   a1.style.background="";
   }
   function my_2mouseleave(){
	   lie2.style.display="none";
	   a2.style.background="";
   }
   function my_3mouseleave(){
	   lie3.style.display="none";
	   a3.style.background="";
   }
   function my_4mouseleave(){
	   lie4.style.display="none";
	   a4.style.background="";
   }
   function my_5mouseleave(){
	   lie5.style.display="none";
	   a5.style.background="";
   }
   function my_6mouseleave(){
	   lie6.style.display="none";
	   a6.style.background="";
   }
   function my_7mouseleave(){
	   lie7.style.display="none";
	   a7.style.background="";
   }
   function my_8mouseleave(){
	   lie8.style.display="none";
	   a8.style.background="";
   }
   function my_9mouseleave(){
	   lie9.style.display="none";
	   a9.style.background="";
   }
   function my_10mouseleave(){
	   lie10.style.display="none";
	   a10.style.background="";
   }
   function my_11mouseleave(){
	   lie11.style.display="none";
	   a11.style.background="";
   }
   function my_12mouseleave(){
	   lie12.style.display="none";
	   a12.style.background="";
   }
   function my_13mouseleave(){
	   lie13.style.display="none";
	   a13.style.background="";
   }
   function my_14mouseleave(){
	   lie14.style.display="none";
	   a14.style.background="";
   }
   function my_15mouseleave(){
	   lie15.style.display="none";
	   a15.style.background="";
   }
   function my_18mouseleave(){
	   gouwuche1.style.display="none";
	   gouwuche.style.background="#f8f8f8";
	   gouwuche.style.boxshadow="";
   }
  /*var search_choose=document.getElementById('serach_choose'),
      search_lei=document.getElementById('search_lei');
  search_choose.onmouseleave=function(){
	  search_lei.style.display="block";
  }*/

  window.onscroll = function () {
	  if(document.documentElement.scrollTop>300){
		  document.getElementById('search_gu').style.display="block";
		  document.getElementById('celan').style.display="block";
	  }else{
		  document.getElementById('search_gu').style.display="none";
		  document.getElementById('celan').style.display="none";
	  }
	  if(document.documentElement.scrollTop>300&&document.documentElement.scrollTop<500){
		  document.getElementById('ce1').style.background="#ccc";
		  document.getElementById('ce2').style.background="";
		  document.getElementById('ce3').style.background="";
		  document.getElementById('ce4').style.background="";
		  document.getElementById('ce5').style.background="";
		  
	  }
	  else if(document.documentElement.scrollTop>500&&document.documentElement.scrollTop<1000){
		  document.getElementById('ce1').style.background="";
		  document.getElementById('ce2').style.background="#ccc";
		  document.getElementById('ce3').style.background="";
		  document.getElementById('ce4').style.background="";
		  document.getElementById('ce5').style.background="";
		  
	  }else if(document.documentElement.scrollTop>1000&&document.documentElement.scrollTop<1450){
		  document.getElementById('ce1').style.background="";
		  document.getElementById('ce2').style.background="";
		  document.getElementById('ce3').style.background="#ccc";
		  document.getElementById('ce4').style.background="";
		  document.getElementById('ce5').style.background="";
	  }else if(document.documentElement.scrollTop>1450){
		  document.getElementById('ce1').style.background="";
		  document.getElementById('ce2').style.background="";
		  document.getElementById('ce3').style.background="";
		  document.getElementById('ce4').style.background="#ccc";
		  document.getElementById('ce5').style.background="";
	  }
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
	shangpin1.onclick=function(){
		search_choose1.innerHTML="商品&#9660;";
	}
	dianpu1.onclick=function(){
		search_choose1.innerHTML="店铺&#9660;";
	}
	huati1.onclick=function(){
		search_choose1.innerHTML="话题&#9660;";
	}
	quanzi1.onclick=function(){
		search_choose1.innerHTML="圈子&#9660;";
	}
	/*****/
</script>
</html>