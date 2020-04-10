<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>
</head>
<style>
html{
  height:100%;
}
a{
 text-decoration: none;
}
 .aa{
    padding:5px;
 }
</style>
<body style="background:url(${pageContext.request.contextPath}/mylogin/images/login_bg_0.jpg);background-repeat:no-repeat;background-size:100% 100%;">
  <div style="width:477px;
    height:560px;
    background:url(${pageContext.request.contextPath}/mylogin/images/img1.jpg) no-repeat;
    margin:0 auto;
    position:absolute;
    top:40%;
    left:50%;
    margin-top:-239px;
    margin-left:-238px;">
    <form action="${pageContext.request.contextPath}/UserRegister" method="post" class="" style="margin:0 auto;width:300px;padding-top:20px;">
                 <div class="aa">用户名 :<input id="username" name="username" class=""  placeholder="输入姓名" maxlength="20" type="text" required autofocus style="width:190px;padding:10px;"></div> 
                 <div class="aa">密码  :<input id="password" name="password" class="" placeholder="输入密码" maxlength="20" type="password" required style="width:190px;padding:10px;"></div> 
                  <div class="aa">地址:<input id="xuehao" name="xuehao" class="" placeholder="输入地址 " maxlength="20" type="text" required style="width:190px;padding:10px;"></div> 
                 <div class="aa">qq号:<input id="qq" name="qq" class="" placeholder="输入qq号" maxlength="20" type="text" required style="width:190px;padding:10px;"></div> 
                <div class="aa">电话:<input id="phone" name="phone" class="" placeholder="请输入电话号码" maxlength="20" type="text" required style="width:190px;padding:10px;"></div> 
       <div class="aa"> <input class="" id="submit" value="立&nbsp;&nbsp;即&nbsp;&nbsp;注&nbsp;&nbsp;册" type="submit" style="display: block;
    width: 100%;
    padding-right: 0;
    padding-left: 0;    padding: 10px 16px;
    font-size: 18px;
    line-height: 1.33;    color: #fff;
    background-color: #d9534f;
    border-color: #d43f3a;">
        <div class="aa"> <input value="重置" id="reset" class="" type="reset" style="float:right;">
        
        <a href="${pageContext.request.contextPath}/login/login.jsp" style="float:left;">登陆</a>
        </div>
        </form>
  </div>
   
</body>
</html>