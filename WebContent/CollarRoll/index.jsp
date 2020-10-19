<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  int user_id=(Integer)session.getAttribute("user_id");
  session.setAttribute("user_id", user_id);
  int juan_count=(Integer)request.getAttribute("juan_count");
  
  List<Coupon> coupon_list=new ArrayList<Coupon>();
  coupon_list=(ArrayList<Coupon>)request.getAttribute("coupon_list"); 
  List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
  gouwuche_list=(ArrayList<Gouwuche>)request.getAttribute("gouwuche_list"); 
  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>领卷中心</title>
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
          <li style="float:right;margin-right:50px;height:30px" id="gouwuche" onmouseenter="my18mouseenter()" onmouseleave="my18mouseleave()"><a href="${pageContext.request.contextPath}/Gouwuche1" target="_blank">我的购物车</a></li>
          <li style="float:right;margin-right:50px;">
             <div class="heart_icon"></div>                 
             <div style="padding-left:24px;">心愿单</div>
          </li>
         <li style="float:right;margin-right:50px;"><a href="${pageContext.request.contextPath}/Kefu" target="_blank">服务中心</a></li>
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
          <li style="float:left;width:25%;height:100px;padding-top:23px;">
             <div style="padding-top:10px;text-align:center;height: 32px;border: 1px solid #ccc;width: 148px;border-radius: 3px;cursor: pointer;">我的优惠卷<%=juan_count %></div>
          </li>
       </ul>
   </div>
   <div style="background: #333333;width: 100%;height: 30px">
         <a href="${pageContext.request.contextPath}/Home?pageNum=1" style="color:#fff;">首页</a>
   </div>
   <div style="width:100%;height:30px;background: #f6f6f6"></div>
   <div style="width:80%;height:630px;margin: 0 auto;">
      <ul style="list-style: none;">
      <%if(!coupon_list.isEmpty()){
	  for(Coupon map:coupon_list){%>
        <li style="float:left;width:25%;height:200px;">
          <div style="width:95%;margin:0 auto;height:200px;background:url(${pageContext.request.contextPath}/images/juan_bg.png) no-repeat;background-size:100% 100%;
	-webkit-background-size:100% 100%;
	-moz-background-size:100% 100%;
	-o-background-size:100% 100%;
	-ms-background-size:100% 100%;">
             <div style="width:100%;height:50px;margin:0 auto;">
               <div style="overflow:hidden;margin-top:15px;width:63px;height:50px;float:left;color: #fff;font-size: 22px;font-weight: 700;">￥<%=map.getAmount() %></div>
               <div style="margin-top: 12px; padding-left: 2px;float:left;width:130px;height:50px;color: #fff;font-size: 12px">
                    <div><%=map.getName() %></div>
                    <div><%=map.getNote() %></div>
               </div>
               <div style="float:left;width:76px;margin-top:15px">
                  <a href="${pageContext.request.contextPath}/Lingjuan1?action=lingjuanzhongxin&id=<%=map.getId() %>" style="font-size:14px;padding:0 8px;height: 26px;line-height: 26px; background: #fff;color: #f5004b;border-radius: 20px;">立即领取</a>
               </div>
             </div>
             <div style="width:95%;height:145px;padding-top:5px;margin:0 auto;">
               <img src="${pageContext.request.contextPath}/images/dianpu1.png" style="width:100%;height:100%">
             </div>
          </div>
        <li>
        <%} }%>
      </ul>
   </div>
</body>
<script type="text/javascript">
	var search_lei=document.getElementById('search_lei'),
	shangpin=document.getElementById('shangpin'),
	dianpu=document.getElementById('dianpu'),
	huati=document.getElementById('huati'),
	quanzi=document.getElementById('quanzi'),
	suosou_leis=document.getElementById('suosou_leis'),
       search_lei1=document.getElementById('search_lei1'),
      time_xiang=document.getElementById('time_xiang'),
     gouwuche=document.getElementById('gouwuche'),
     gouwuche1=document.getElementById('gouwuche1');
	/********/
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
