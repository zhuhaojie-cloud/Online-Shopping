<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%
    String path=request.getContextPath();
 int user_id=(Integer)session.getAttribute("user_id");
 session.setAttribute("user_id", user_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>管理员后台管理系统</title>
</head>
<frameset rows="100,*" cols="*" frameborder="yes" border="1" framespacing="1">
    <frame  src="top.jsp"  name="topFrame" scrolling="yes" noresize="noresize"
            id="topFrame" title="topFrame" />
    <frameset cols="160,*" frameborder="No" border="0" framespacing="1">
        <frame src="left.jsp" name="leftFrame" scrolling="yes" noresize="noresize"
               id="leftFrame" title="leftFrame" />
        <frame src="right.jsp"  name="mainFrame" noresize="noresize"
               id="mainFrame" title="mainFrame" />
    </frameset>
</frameset>
</html>