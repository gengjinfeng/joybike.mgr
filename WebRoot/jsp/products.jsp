<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<script src="../js/jquery.js"></script>
<script src="../js/myjquery.js"></script>
<script src="../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 产品列表</strong></div>
  <table class="table table-hover text-center">
    <tr>
      <th width="10%">产品编码</th>
      <th width="20%">产品名称</th>
      <th width="10%">售卖价</th>
      <th width="10%">刊例价</th>
      <th width="10%">创建人</th>
      <th width="10%">创建时间</th>
      <th width="10%">修改人</th>
      <th width="10%">修改时间</th>
      <th width="10%">操作</th>
    </tr>
   
   <c:forEach items="${products }" var="product" >
		<tr>	
	   		<td>${product.productCode }</td>
	   		<td>${product.productName }</td>
	   		<td>${product.price }</td>
	   		<td>${product.publishedPrice }</td>
	   		<td>${product.createId }</td>
	   		<td>
	   			<jsp:useBean id="createAt" class="java.util.Date" scope="page"></jsp:useBean>
				<jsp:setProperty property="time" name="createAt" value="${product.createAt*1000 }"/>
				<fmt:formatDate value="${createAt}" pattern="yyyy-MM-dd HH:mm:ss" />
	   		</td>
	   		<td>${product.updateId }</td>
	   		<td>
	   			<jsp:useBean id="updateAt" class="java.util.Date" scope="page"></jsp:useBean>
				<jsp:setProperty property="time" name="updateAt" value="${product.updateAt*1000 }"/>
				<fmt:formatDate value="${updateAt}" pattern="yyyy-MM-dd HH:mm:ss" />
	   		</td>
	   		<td><div class="button-group">
			    <a class="button border-main" href="intoUpdate?id=${product.id }"><span class="icon-edit"></span> 修改</a>
			    <!-- <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a> -->
			    </div></td>
	   	</tr>
	</c:forEach>
  </table>
</div>
</body>
</html>