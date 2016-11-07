<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>首页</title>
  </head>
  
  <body>
  	<a href="jsp/insert.jsp">添加车辆</a><br/>
    <a href="vehicle/pages">分页显示车辆</a><br/>
    <a href="product/getAll">查看所有产品</a><br/>
    <form name="upform" action="/joyBike1.0/vehicle/upLoad" method="POST">
	    excel文件的路径：<input type ="text" name="path"/>
	    <input type="submit" value="确定" />
  	</form>
  </body>
</html>
