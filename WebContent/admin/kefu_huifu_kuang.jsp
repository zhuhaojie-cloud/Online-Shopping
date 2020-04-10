<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.test.Test" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%
   int user_id=(Integer)session.getAttribute("user_id");
   int id=(Integer)session.getAttribute("id");
   session.setAttribute("user_id", user_id);
   
   List<Kefu_jilu> kefu_jilu_list=new ArrayList<Kefu_jilu>();
   kefu_jilu_list=(ArrayList<Kefu_jilu>)session.getAttribute("kefu_jilu_list"); 
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
<body style="margin:0;padding:0;overflow: hidden">
         <div style="width:966px;height: 135px;">
              <form name="form1" action="${pageContext.request.contextPath}/Kefu_huifu_chat?id=<%=id %>" method="post"  enctype="multipart/form-data" target="xiaoxi">
                <textarea id="con" name="content" placeholder="请输入你的回答" type="text" style="float:left;outline-style: none ; width: 806px;height: 90px;margin-left: 20px;color: #1B202B;border: none;font-size: 14px;"></textarea>
                <div style="height:80px;float:left;width:80px">
                   <img src="" alt="" id="selectImg" style="width:80px;height:80px;margin-top:10px;">
                </div>
                <input type="file" id="uploadImg" onchange="xmTanUploadImg(this)" name="uploadImg" style="margin-top:10px;">
             <!--  <input type="submit" value="发送" style="border:0;cursor:pointer;width: 68px; height: 32px;float: right;background: #FA1E8C;margin-right: 32px;border-radius: 4px;">-->
                <a href="javascript:submit1()"  style="text-decoration:none;text-align:center;border:0;cursor:pointer;width: 68px; height: 32px;float: right;background: #FA1E8C;margin-right: 28px;border-radius: 4px;padding-top:5px">发送</a>
              </form>
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
function submit1(){
	   var th=document.form1;
	   th.submit();
	   document.getElementById("selectImg").src="";
	   document.getElementById("con").value="";
}
</script>
</html>