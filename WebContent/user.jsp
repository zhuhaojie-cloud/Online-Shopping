<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<a href="mvc/user/123">get请求</a>
<form action="mvc/user/123" method="post">
 <input type="hidden" name="_method" value="post">
 <input value="post请求" type="submit">
</form>
<form action="mvc/user/123" method="post">
 <input type="hidden" name="_method" value="put">
 <input value="put请求" type="submit">
</form>
</body>
</html>