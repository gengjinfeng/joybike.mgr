<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>车辆详细信息</title>
</head>
<body>
	车辆ID:${vehicle.vehicleId }<br/>
	车锁ID:${vehicle.lockId }<br/>
	绑定电话:${vehicle.bundlingPhone }<br/>
	隶属代理商ID:${vehicle.agentId }<br/>
	启用状态:<c:choose>
		   		<c:when test="${vehicle.status==0 }">启用</c:when>
		   		<c:when test="${vehicle.status==1 }">禁用</c:when>
		   		<c:otherwise>故障</c:otherwise>
		   	</c:choose><br/>
	使用状态:<c:choose>
		   		<c:when test="${vehicle.useStatus==0 }">空闲</c:when>
		   		<c:when test="${vehicle.useStatus==1 }">预约</c:when>
		   		<c:otherwise>使用</c:otherwise>
		   	</c:choose><br/>
	最后一次有效纬度:${vehicle.lastDimension }<br/>
	最后一次有效经度:${vehicle.lastLongitude }<br/>
	创建时间：${vehicle.createAt }<br/>
	修改时间：${vehicle.updateAt }<br/>
	备注:${vehicle.remark }<br/>
	<input type="button" value="返&nbsp;&nbsp;回" onclick="history.go(-1)">
	<a href="position?id=${vehicle.id }"><input type="button" value="查看位置"></a>
</body>
</html>