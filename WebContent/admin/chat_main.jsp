<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.test.Test" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%
   int user_id=(Integer)session.getAttribute("user_id");
   session.setAttribute("user_id", user_id);
   int id=(Integer)session.getAttribute("id");
   
   List<Kefu_jilu> kefu_jilu_list=new ArrayList<Kefu_jilu>();
   kefu_jilu_list=(ArrayList<Kefu_jilu>)request.getAttribute("kefu_jilu_list"); 
   session.setAttribute("kefu_jilu_list", kefu_jilu_list);
   session.setAttribute("id", id);
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
<body style="margin:0;padding:0;overflow-x:hidden;overflow-y:hidden;">
      <iframe name="xiaoxi" src="${pageContext.request.contextPath}/admin/kefu1.jsp" style="border: 0px;width:980px;min-height:450px">
       
     </iframe>
     <iframe src="${pageContext.request.contextPath}/admin/kefu_huifu_kuang.jsp" style="border: 0px;width:966px;min-height:135px">
       
     </iframe>
      
</body>
</html>