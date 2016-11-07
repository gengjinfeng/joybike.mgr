<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>所有产品</title>
</head>
<body>
	<table>
		<tr>
			<td><a href="${request.getContextPath() }/joyBike1.0/jsp/insertProduct.jsp"><input type="button" value="添加产品"/></a></td>
		</tr>
		<tr>
			<td>产品编码</td>
			<td>产品名称</td>
			<td>售卖价</td>
			<td>刊例价</td>
			<td>创建人</td>
			<td>创建时间</td>
			<td>修改人</td>
			<td>修改时间</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${products }" var="product" >
		<tr>	
	   		<td>${product.productCode }</td>
	   		<td>${product.productName }</td>
	   		<td>${product.price }</td>
	   		<td>${product.publishedPrice }</td>
	   		<td>${product.createId }</td>
	   		<td>${product.createAt }</td>
	   		<td>${product.updateId }</td>
	   		<td>${product.updateAt }</td>
	   		<td><a href="intoUpdate?id=${product.id }">修改</a><a href="getOne?id=${product.id }">查看</a></td>
	   	</tr>
		</c:forEach>
	</table>
</body>
</html>