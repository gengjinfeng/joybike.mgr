<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改产品信息</title>
</head>
<body>
	<form action="/joyBike1.0/product/update" method="post">
		<input type="hidden" name="id" value="${product.id }"/>
   		产品编码:<input type="text" name="productCode" value="${product.productCode }"><br/>
   		产品名称:<input type="text" name="productName" value="${product.productName }"/><br/>
   		售卖价:<input type="text" name="price" value="${product.price }"/><br/>
   		刊例价:<input type="text" name="publishedPrice" value="${product.publishedPrice }"><br/>
   		创建人:<input type="text" name="createId" value="${product.createId }"><br/>
   		创建时间:<input type="text" name="createAt" value="${product.createAt }"><br/>
   		修改人:<input type="text" name="updateId" value="${product.updateId }"><br/>
   		修改时间:<input type="text" name="updateAt" value="${product.updateAt }"><br/>
   		<input type="button" value="返&nbsp;&nbsp;回" onclick="history.go(-1)">
   		<input type="submit" value="提&nbsp;&nbsp;交"/>
   	</form>
</body>
</html>