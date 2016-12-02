<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>闪电单车后台管理系统</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/logo.jpg" class="radius-circle rotate-hover" height="50" alt="" />闪电单车后台管理系统</h1>
  </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-truck"></span>车辆管理</h2>
  <ul>
    <li><a href="vehicle/pages" target="right"><span class="icon-caret-right"></span>车辆信息</a></li>
    <li><a href="vehicle/positions" target="right"><span class="icon-caret-right"></span>车辆位置</a></li>
    <li><a href="jsp/insert.jsp" target="right"><span class="icon-caret-right"></span>添加车辆</a></li>
    <li><a href="jsp/beachInsert.jsp" target="right"><span class="icon-caret-right"></span>批量导入</a></li>  
  </ul>   
  <h2><span class="icon-shopping-cart"></span>产品管理</h2>
  <ul>
    <li><a href="product/getAll" target="right"><span class="icon-caret-right"></span>查看产品</a></li>
    <li><a href="jsp/insertProduct.jsp" target="right"><span class="icon-caret-right"></span>添加产品</a></li>
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>系统消息</h2>
  <ul>
    <li><a href="message/getAll" target="right"><span class="icon-caret-right"></span>查看消息</a></li>
    <li><a href="jsp/insertMessage.jsp" target="right"><span class="icon-caret-right"></span>添加消息</a></li>
  </ul>  
  <h2><span class="icon-globe"></span>GPS数据</h2>
  <ul>
    <li><a href="jsp/search.jsp" target="right"><span class="icon-caret-right"></span>查看GPS</a></li>
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="jsp/mainfra.jsp" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">欢迎使用</a></li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="jsp/mainfra.jsp" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
</div>
</body>
</html>
