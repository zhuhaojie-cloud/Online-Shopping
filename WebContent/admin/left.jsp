<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
    String path=request.getContextPath();
    int user_id=(Integer)session.getAttribute("user_id");
    System.out.println(user_id+"left");
    session.setAttribute("user_id", user_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
html{
    height:100%;
}
    body{
     margin:10px 0 10px 0;
     background-image:url("${pageContext.request.contextPath}/admin/images/bg.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%; 
  }
  a{
      text-decoration: none;
  }
  p{
     height:25px;
     background-color:#BEBEBE;
     padding:10px;
  }
  p:hover{
      padding-left:15px;
      transition: 0.2s all linear;
      background-color:	#CDBA96;
  }
</style>
<body>
   <p><a href="${pageContext.request.contextPath}/ListHome" target="mainFrame">首页界面管理</a></p>
   <p><a href="${pageContext.request.contextPath}/ListXiaoyuan" target="mainFrame">aa</a></p>
   <p><a href="${pageContext.request.contextPath}/ListJianzhi" target="mainFrame">bb</a></p>
   <p><a href="${pageContext.request.contextPath}/ListStudentUser" target="mainFrame">用户管理</a></p>
   <p><a href="${pageContext.request.contextPath}/ListManagerUser" target="mainFrame">cc</a></p>
   <p><a href="${pageContext.request.contextPath}/ListTeacherUser" target="mainFrame">dd</a></p>
   <p><a href="${pageContext.request.contextPath}/ListYijian" target="mainFrame">意见箱</a></p>
   <p><a href="${pageContext.request.contextPath}/Kefu2" target="mainFrame">客服</a></p>
</body>
</html>