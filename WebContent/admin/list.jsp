<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
int user_id=(Integer)session.getAttribute("user_id");
    session.setAttribute("user_id", user_id);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>bootstrapTable</title>
<!-- 必要css包 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/css/bootstrap-theme.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-table.js"></script>
<script src="js/bootstrap-table-zh-CN.js"></script>
</head>
<body>
    <div class="container-fluid">
        <h2>首页轮播图</h2>
		<div class="row-fluid">
			<div class="span12">
				<form class="form-search" action="${pageContext.request.contextPath}/Search?action=lunbo" method="post">
					<input class="input-medium search-query" type="text" />
					<button type="submit" class="btn btn-danger" name="search">查找</button>
				</form>
				<table class="table">
					<thead>
						<tr>
							<th>编号</th>
							<th>标题</th>
							<th>点击次数</th>
							<th>发布日期</th>
							<th>作者</th>
							<th>图片</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty requestScope.lunbo_list }"> 
					        没有数据
                     </c:if>
						<c:forEach items="${lunbo_list}" var="lunbo">
							<tr>
								<td>${lunbo.id}</td>
								<td>${lunbo.title}</td>
								<td>${lunbo.hot}</td>
								<td>${lunbo.fb_time}</td>
								<td>${lunbo.author}</td>
								<td>${lunbo.image}</td>
								<td><a href="${pageContext.request.contextPath}/Delete?jianzhi_id=${lunbo.id}&action=lunbo">删除</a>
									<a href="${pageContext.request.contextPath}/Update?jianzhi_id=${lunbo.id}&action=lunbo" target="_blank">修改</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	
	<div class="container-fluid">
        <h2>首页快讯</h2>
		<div class="row-fluid">
			<div class="span12">
				<form class="form-search"  action="${pageContext.request.contextPath}/Search?action=home_nongchang" method="post">
					<input class="input-medium search-query" type="text" />
					<button type="submit" class="btn btn-danger">查找</button>
				</form>
				<table class="table">
					<thead>
						<tr>
							<th>编号</th>
							<th>图片</th>
							<th>标题</th>
							<th>类型</th>
							<td>发布时间</td>
							<td>作者</td>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty requestScope.notice_infor_list }"> 
					        没有数据
                     </c:if>
						<c:forEach items="${notice_infor_list}" var="notice_infor">
							<tr>
								<td>${notice_infor.notice_id}</td>
								<td>${notice_infor.image}</td>
								<td>${notice_infor.title}</td>
								<td>${notice_infor.notice_type}</td>
								<td>${notice_infor.time}</td>
								<td>${notice_infor.author}</td>
								<td><a href="${pageContext.request.contextPath}/Delete?jianzhi_id=${notice_infor.notice_id}&action=home_nongchang">删除</a>
									<a href="${pageContext.request.contextPath}/Update?jianzhi_id=${notice_infor.notice_id}&action=home_nongchang" target="_blank">修改</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<div class="container-fluid">
        <h2>首页首发</h2>
		<div class="row-fluid">
			<div class="span12">
				<form class="form-search" action="${pageContext.request.contextPath}/Search?action=home_data" method="post" >
					<input class="input-medium search-query" type="text" />
					<button type="submit" class="btn btn-danger">查找</button>
				</form>
				<table class="table">
					<thead>
						<tr>
							<th>商品编号</th>
							<th>时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty requestScope.shoufa_list }"> 
					        没有数据
                     </c:if>
						<c:forEach items="${shoufa_list}" var="shoufa_list">
							<tr>
								<td>${shoufa_list.commodity_id}</td>
								<td>${shoufa_list.time}</td>
								<td><a href="${pageContext.request.contextPath}/Delete?jianzhi_id=${shoufa_list.commodity_id}&action=home_data">删除</a>
									<a href="${pageContext.request.contextPath}/Update?jianzhi_id=${shoufa_list.commodity_id}&action=home_data" target="_blank">修改</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<!--<div class="container-fluid">
        <h2>首页领卷中心</h2>
		<div class="row-fluid">
			<div class="span12">
				<form class="form-search"  action="${pageContext.request.contextPath}/Search?action=home_yin" method="post">
					<input class="input-medium search-query" type="text" />
					<button type="submit" class="btn btn-danger">查找</button>
				</form>
				<table class="table">
					<thead>
						<tr>
							<th>编号</th>
							<th>标题</th>
							<th>简介</th>
							<th>图片</th>
							<th>地址</th>
							<th>电话</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty requestScope.home_yin_list }"> 
					        没有数据
                     </c:if>
						<c:forEach items="${home_yin_list}" var="home_yin">
							<tr>
								<td>${home_yin.id}</td>
								<td>${home_yin.title}</td>
								<td>${home_yin.jian}</td>
								<td>${home_yin.image}</td>
								<td>${home_yin.adr}</td>
								<td>${home_yin.phone}</td>
								<td><a href="${pageContext.request.contextPath}/Delete?jianzhi_id=${home_yin.id}&action=home_yin">删除</a>
									<a href="${pageContext.request.contextPath}/Update?jianzhi_id=${home_yin.id}&action=home_yin" target="_blank">修改</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<form class="form-search"  action="${pageContext.request.contextPath}/Search?action=news" method="post">
					<input class="input-medium search-query" type="text" />
					<button type="submit" class="btn btn-danger">查找</button>
				</form>
				<table class="table">
					<thead>
						<tr>
							<th>编号</th>
							<th>标题</th>
							<th>类别</th>
							<th>点击次数</th>
							<th>发布日期</th>
							<th>作者</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty requestScope.news_list }"> 
					        没有数据
                     </c:if>
						<c:forEach items="${news_list}" var="news">
							<tr>
								<td>${news.id}</td>
								<td>${news.title}</td>
								<td>${news.category}</td>
								<td>${news.hot}</td>
								<td>${news.fb_time}</td>
								<td>${news.author}</td>
								<td><a href="${pageContext.request.contextPath}/Delete?jianzhi_id=${news.id}&action=news">删除</a>
									<a href="${pageContext.request.contextPath}/Update?jianzhi_id=${news.id}&action=news" target="_blank">修改</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	  -->
</body>
</html>
