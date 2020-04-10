<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.test.Test" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%
   int user_id=(Integer)session.getAttribute("user_id");
   session.setAttribute("user_id", user_id);
   List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
   gouwuche_list=(ArrayList<Gouwuche>)request.getAttribute("gouwuche_list"); 
   
   List<Kefu_jilu> kefu_jilu_list=new ArrayList<Kefu_jilu>();
   kefu_jilu_list=(ArrayList<Kefu_jilu>)request.getAttribute("kefu_jilu_list"); 
   session.setAttribute("kefu_jilu_list", kefu_jilu_list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>客服</title>
</head>
<style>
  a{
	  text-decoration: none; 
  }
</style>
<body style="margin:0;padding:0;">
  <div style="height:40px;width:980px;"></div>
  <div style="width:980px;height:700px;margin:0 auto;border-radius: 4px;box-shadow: 0 0 20px #d2d8e7;">
     <div style="width:980px;height:51px;border-bottom: 1px solid #E5E5E5;padding-top:10px">
       <div style="float:right;margin-right:10px">服务中心</div>
       <div style="float:left;width:150px">
           <div style="float:right">客服小朱</div>
           <div style="float:left;margin-left:20px"><img src="${pageContext.request.contextPath}/images/user-head.jpg" style="width:44px;height:44px"></div>
       </div>
     </div>
     <div style="width:980px;height:640px">
       <div style="float:right;width:299px;height:640px;border-left: 1px solid #E5E5E5;">
           <div style="width: 100%;height: 44px;border-bottom: 1px solid #E5E5E5;cursor: pointer;">
              <div style="float:right;width: 50%;height: 42px;text-align: center;line-height: 42px;font-size: 14px; color: #1B202B;">我的订单</div>
              <div style="float:left; color: #F20C59;border-bottom: 2px solid #F20C59;width: 50%;height: 42px;text-align: center;line-height: 42px; font-size: 14px;">我的购物车</div>
           </div>
           <div style="width:100%;">
               <div style="width:80%;margin:0 auto;">
                  <%if(!gouwuche_list.isEmpty()){
	    	  for(Gouwuche map:gouwuche_list){
	    		 
	    		  %>
                  <div style="height: 78px;border-bottom: 1px solid #EBECED;padding-top: 20px;">
                     <div style="float:right;width: 178px;">
                          <div style="font-size: 12px;width:178px;height:36px">
                            <a href="${pageContext.request.contextPath}/Shangpin?commodity_id=<%=map.getCommodity_id()%>"><%=map.getCommodity_name() %></a>
                            
                          </div>
                          <div>
                             <a href="${pageContext.request.contextPath}/Kefu_chat2?commodity_id=<%=map.getCommodity_id()%>">
                                <div style="float:right;width: 46px;height: 22px;border: 1px solid #CACCCF;border-radius: 4px;display: inline-block;text-align: right;text-align: center;line-height: 22px;color: #00050A;cursor: pointer;">发送</div>
                             </a>
                             <div style="float:left;color: #F20C59;font-size: 14px;line-height: 22px;">￥<%=map.getPrice() %></div>
                          </div>
                     </div>
                     <div style="width:50px;height: 58px;float: left;margin-right: 10px;"><img alt="" src="${pageContext.request.contextPath}/<%=map.getCommodity_image() %>" style="width:60px;height:58px"></div>
                  </div>
                  <%}} %>
               </div>
           </div>
       </div>
       <div style="float:left;width:680px;height:640px;border-bottom: 1px solid #E5E5E5;">
           <div style="width:100%;height: 499px;border-bottom: 1px solid #E5E5E5;background: #f8f8f8;">
             <iframe src="${pageContext.request.contextPath}/kefu/kefu_kuang.jsp" style="border: 0px;width:680px;min-height:500px">
               
             </iframe>
           </div>
           <div style="width:100%;height: 150px;">
              <form action="${pageContext.request.contextPath}/Kefu_chat" method="post" enctype="multipart/form-data">
                
                <textarea name="content" placeholder="请输入你要咨询的问题" type="text" style="float:left;outline-style: none ; width: 535px;height: 90px;margin-left: 20px;color: #1B202B;border: none;font-size: 14px;"></textarea>
                <div style="height:80px;float:left;width:80px"><img src="" alt="" id="selectImg" style="width:80px;height:80px;margin-top:10px;"></div>
                <input type="file" id="uploadImg" onchange="xmTanUploadImg(this)" name="uploadImg" style="margin-top:10px;">
                <input type="submit" value="发送" style="border:0;cursor:pointer;width: 68px; height: 32px;float: right;background: #FA1E8C;margin-right: 32px;border-radius: 4px;">
              </form>
           </div>
       </div>
     </div>
  </div>
</body>
<script>
function xmTanUploadImg(obj) {
    var file = obj.files[0];
    var reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = function (e) {  
        var img = document.getElementById("selectImg");
       /* var tou = document.getElementById("tou");
        var tou1 = document.getElementById("tou1");*/
        img.src = e.target.result;  
        /*tou.src=e.target.result;
        tou1.src=e.target.result;*/
       
    };
}
</script>
</html>