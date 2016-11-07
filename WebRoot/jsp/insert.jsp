<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加车辆</title>
</head>
<body>
	<form action="/joyBike1.0/vehicle/insert" method="post">
   		车辆ID:<input type="text" name="vehicleId"/><br/>
   		车锁ID:<input type="text" name="lockId"/><br/>
   		绑定电话:<input type="text" name="bundlingPhone"/><br/>
   		隶属代理商ID:<input type="text" name="agentId"/><br/>
   		启用状态:
   			<select name="status" >
	   			<option value="0">启用</option>
	   			<option value="1">禁用</option>
	   			<option value="2">故障</option>
	   		</select><br/>
   		使用状态:
   			<select name="useStatus" >
				<option value="0">空闲</option>
				<option value="1">预约</option>
	 			<option value="2">使用</option>
	   		</select><br/>
   		最后一次有效纬度:<input type="text" name="lastDimension"/><br/>
   		最后一次有效经度:<input type="text" name="lastLongitude"/><br/>
   		备注:<input type="text" name="remark"/><br/>
   		<input type="button" value="返&nbsp;&nbsp;回" onclick="history.go(-1)">
   		<input type="submit" value="提&nbsp;&nbsp;交"/>
   	</form>
</body>
</html>