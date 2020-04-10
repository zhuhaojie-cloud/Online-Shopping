<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.test.Test" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%
   int user_id=(Integer)session.getAttribute("user_id");
   int id=(Integer)session.getAttribute("id");
   session.setAttribute("user_id", user_id);
   session.setAttribute("id", id);
   List<Kefu_jilu> kefu_jilu_list=new ArrayList<Kefu_jilu>();
   kefu_jilu_list=(ArrayList<Kefu_jilu>)session.getAttribute("kefu_jilu_list"); 
   session.setAttribute("kefu_jilu_list", kefu_jilu_list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="10000"> 
<title>客服</title>
</head>
<style>
::-webkit-scrollbar {
            width: 0px;
        }
</style>
<body style="margin:0;padding:0;" onload="a()">
  
  <div style="width:960px;height:700px;margin:0 auto;border-radius: 4px;box-shadow: 0 0 20px #d2d8e7;">
     <div style="width:960px;height:640px">
       <div style="width:960px;height:640px;border-bottom: 1px solid #E5E5E5;">
           <div style="width:100%;min-height: 499px;border-bottom: 1px solid #E5E5E5;background: #f8f8f8;">
                 <%if(!kefu_jilu_list.isEmpty()){
	    	  for(Kefu_jilu map:kefu_jilu_list){
	    		  if(map.getSender_id()!=id){%>      
              <div style="overflow:auto;">
                <div style="width:100%;font-size: 12px;color: #B3B8BD;text-align: center"><%=map.getTime() %></div>
                <div>
                   <div style="float:left;width:32px;height:32px;"><img src="${pageContext.request.contextPath}/images/user-head.jpg" style="width:100%;height:100%"></div>
                   <div style="border-radius: 0 6px 6px;float: left;border: 1px solid #E4E4E4;background: #fff;color: #1B202B;float:left;max-width: 460px;min-width: 50px;min-height: 34px;">
                        <div><%=map.getContent() %></div>
                       <%if(map.getImage()!=null){ %>
                       <img src="${pageContext.request.contextPath}/<%=map.getImage()%>" style="width:80px;height:80px;">
                       <%} %>
                   </div>
                </div>
              </div>
              <br>
              <%}else{ %>
              <div style="overflow:auto;">
                <div style="width:100%;font-size: 12px;color: #B3B8BD;text-align: center"><%=map.getTime() %></div>
                <div>
                   <div style="float:right;width:32px;height:32px;"><img src="" style="width:100%;height:100%"></div>
                   <div style="border-radius: 0 6px 6px;float: left;border: 1px solid #E4E4E4;background: #fff;color: #1B202B;float:right;max-width: 460px;min-width: 50px;min-height: 34px;">
                       <div><%=map.getContent() %></div>
                       <%if(map.getImage()!=null){ %>
                       <img src="${pageContext.request.contextPath}/<%=map.getImage()%>" style="width:80px;height:80px;">
                       <%} %>
                   </div>
                </div>
              </div>
              <br>
                  <%}}} %>
           </div>
       
       </div>
     </div>
  </div>
</body>
<script type="text/javascript">
function a() {
	document.documentElement.scrollTop=document.documentElement.scrollHeight;
}

</script>
</html>