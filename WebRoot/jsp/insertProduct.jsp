<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加产品</title>
</head>
<body>
	<form action="/joyBike1.0/product/insert" method="post">
   		产品编码:<input type="text" name="productCode"/><br/>
   		产品名称:<input type="text" name="productName"/><br/>
   		售卖价:<input type="text" name="price"/><br/>
   		刊例价:<input type="text" name="publishedPrice"/><br/>
   		创建人id:<input type="text" name="createId"/><br/>
   		修改人id:<input type="text" name="updateId"/><br/>
   		<input type="button" value="返&nbsp;&nbsp;回" onclick="history.go(-1)">
   		<input type="submit" value="提&nbsp;&nbsp;交"/>
   	</form>
</body>
</html>