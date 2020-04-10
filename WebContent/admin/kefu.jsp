<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.test.Test" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%
   int user_id=(Integer)session.getAttribute("user_id");
   String login_time=(String)request.getAttribute("login_time");
   session.setAttribute("user_id", user_id);
   
   List<Kefu_jilu> kefu_jilu_list=new ArrayList<Kefu_jilu>();
   kefu_jilu_list=(ArrayList<Kefu_jilu>)request.getAttribute("kefu_jilu_list"); 
   session.setAttribute("kefu_jilu_list", kefu_jilu_list);
   session.setAttribute("login_time", login_time);
   /*从id大到小，取出首先出现的user_id, */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 
<title>客服</title>
</head>
<script>

</script>
<body style="margin:0;padding:0;">
  <div style="height:5px;width:980px;"></div>
  <div style="width:980px;height:650px;margin:0 auto;border-radius: 4px;box-shadow: 0 0 20px #d2d8e7;">
     <div style="width:980px;height:51px;border-bottom: 1px solid #E5E5E5;padding-top:10px">
       <div style="float:right;margin-right:10px">服务中心</div>
       <div style="float:left;width:150px">
           <div style="float:right">客服小朱</div>
           <div style="float:left;margin-left:20px"><img src="${pageContext.request.contextPath}/images/user-head.jpg" style="width:44px;height:44px"></div>
       </div>
     </div>
     <iframe src="${pageContext.request.contextPath}/admin/kefu_kuang.jsp" style="border: 0px;width:980px;min-height:590px">
       
     </iframe>
      
  </div>
</body>
</html>