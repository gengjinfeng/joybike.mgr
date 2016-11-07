<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>产品详情</title>
</head>
<body>
	<input type="hidden" name="id" value="${product.id }"/>
 	产品编码:${product.productCode }<br/>
 	产品名称:${product.productName }<br/>
 	售卖价:${product.price }"<br/>
 	刊例价:${product.publishedPrice }<br/>
 	创建人:${product.createId }<br/>
 	创建时间:${product.createAt }<br/>
 	修改人:${product.updateId }<br/>
 	修改时间:${product.updateAt }<br/>
 	<input type="button" value="返&nbsp;&nbsp;回" onclick="history.go(-1)">
</body>
</html>