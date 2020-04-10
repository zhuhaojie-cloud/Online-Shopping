<%@ page language="java" contentType="text/html; charset=utf-8" import="swu.xxj.test.Test" import="java.util.*" import="swu.xxj.entity.*"
    pageEncoding="utf-8"%>
<%
   int user_id=(Integer)session.getAttribute("user_id");
   String login_time=(String)session.getAttribute("login_time");
   session.setAttribute("user_id", user_id);
   
   List<Kefu_jilu> kefu_jilu_list=new ArrayList<Kefu_jilu>();
   kefu_jilu_list=(ArrayList<Kefu_jilu>)session.getAttribute("kefu_jilu_list"); 
   /*从id大到小，取出首先出现的user_id, */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="10000"> 
<title>客服</title>
</head>
<script>

</script>
<body style="margin:0;padding:0;">
     <div style="width:980px;min-height:585px;margin:0 auto;border-radius: 4px;box-shadow: 0 0 20px #d2d8e7;">
       <div style="width:550px;height:51px;padding-top:10px;margin:0 auto">
         <form action="${pageContext.request.contextPath}/Sousuo" method="post">
           <input type="text" style="margin-right: -5px;box-sizing: border-box;width:400px;height:46px;padding:0 80px 0 15px;border: 1px solid #ccc;border-right: 0;border-radius: 4px 0 0 4px;outline: none;font-size: 15px;background-color: #fff;">
           <input type="button" value="搜索" style="width: 120px;border:0px;border-radius: 0 4px 4px 0;background-color: #08f;color: #fff;line-height: 45px;cursor: pointer;text-align: center;">
         </form>
       </div>
       <% List<Integer> ids=new ArrayList<Integer>();
          ids.add(0);
       if(!kefu_jilu_list.isEmpty()){
	    	  for(Kefu_jilu map:kefu_jilu_list){
	    		  System.out.println(ids);
	    		  int m=1;
	    		  for(int j=0;j<ids.size();j++){
	    		    if(ids.get(j)==map.getUser_id())
	    		    	m=0;
	    		  }
	    		  if(m==1)
	    		    {
	    			  ids.add(map.getUser_id());
	    		      User user=new User();
	    		      user=Test.getUserByID(map.getUser_id());%>
     <a href="${pageContext.request.contextPath}/Kefu3?id=<%=map.getUser_id() %>" target="_self">
     <div style="width:980px;height:51px;border-bottom: 1px solid #E5E5E5;padding-top:10px">
         <%
           if(map.getTime().compareTo(login_time)>0){ %>
        <div style="float:left;width:10px;margin-left:5px;height:10px;border-radius:50%;background:#e3101e;"></div>
           <%} %>
        <div style="float:left;margin-left:20px;width:45px"><img src="${pageContext.request.contextPath}/<%=user.getImage() %>" style="width:44px;height:44px"></div>
        <div style="float:left;width:700px">
           <div><%=user.getUserName() %></div>
           <div style="color:#000"><%=map.getContent() %></div>   
       </div>
        <div style="float:left;margin-right:10px;width:200px"><%=map.getTime() %></div>
     </div>
     </a>
     <%}}} %>
    </div>
</body>
</html>