<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改车辆信息</title>
</head>
<body>
	<form action="/joyBike1.0/vehicle/update" method="post">
		<input type="hidden" name="id" value="${vehicle.id }"/>
	   		车辆ID:<input type="text" name="vehicleId" value="${vehicle.vehicleId }"><br/>
	   		车锁ID:<input type="text" name="lockId" value="${vehicle.lockId }"/><br/>
	   		绑定电话:<input type="text" name="bundlingPhone" value="${vehicle.bundlingPhone }"/><br/>
	   		隶属代理商ID:<input type="text" name="agentId" value="${vehicle.agentId }"><br/>
	   		启用状态:
	   		<select name="status" >
	   			<option value="0" <c:if test="${vehicle.status==0 }">selected="selected"</c:if>>启用</option>
	   			<option value="1" <c:if test="${vehicle.status==1 }">selected="selected"</c:if>>禁用</option>
	   			<option value="2" <c:if test="${vehicle.status==2 }">selected="selected"</c:if>>故障</option>
	   		</select><br/>
	   		使用状态:
			<select name="useStatus" >
				<option value="0" <c:if test="${vehicle.useStatus==0 }">selected="selected"</c:if>>空闲</option>
				<option value="1" <c:if test="${vehicle.useStatus==1 }">selected="selected"</c:if>>预约</option>
	 			<option value="2" <c:if test="${vehicle.useStatus==2 }">selected="selected"</c:if>>使用</option>
	   		</select><br/>
	   		最后一次有效纬度:<input type="text" name="lastDimension" value="${vehicle.lastDimension }"/><br/>
	   		最后一次有效经度:<input type="text" name="lastLongitude" value="${vehicle.lastLongitude }"/><br/>
	   		创建时间：<input type="text" name="createAt" value="${vehicle.createAt }"/><br/>
	   		修改时间：<input type="text" name="updateAt" value="${vehicle.updateAt }"/><br/>
	   		备注:<input type="text" name="remark" value="${vehicle.remark }"/><br/><br/>
   		<input type="button" value="返&nbsp;&nbsp;回" onclick="history.go(-1)">
   		<input type="button" value="提&nbsp;&nbsp;交" onclick="form.submit()"/>
   	</form>
</body>
</html>