<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
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
<script src="../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span> 修改车辆</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="/joyBike1.0/vehicle/update">  
      <input type="hidden" name="id" value="${vehicle.id }"/>
      <div class="form-group">
        <div class="label">
          <label>车辆ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="vehicleId" value="${vehicle.vehicleId }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>车锁ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="lockId" value="${vehicle.lockId }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>绑定电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="bundlingPhone" value="${vehicle.bundlingPhone }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>隶属代理商ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="agentId" value="${vehicle.agentId }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>启用状态：</label>
        </div>
        <div class="field">
          <select name="status" class="input w50">
           	<option value="0" <c:if test="${vehicle.status==0 }">selected="selected"</c:if>>启用</option>
	   		<option value="1" <c:if test="${vehicle.status==1 }">selected="selected"</c:if>>禁用</option>
	   		<option value="2" <c:if test="${vehicle.status==2 }">selected="selected"</c:if>>故障</option>
          </select>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>使用状态：</label>
        </div>
        <div class="field">
          <select name="useStatus" class="input w50">
           	<option value="0" <c:if test="${vehicle.useStatus==0 }">selected="selected"</c:if>>空闲</option>
			<option value="1" <c:if test="${vehicle.useStatus==1 }">selected="selected"</c:if>>预约</option>
 			<option value="2" <c:if test="${vehicle.useStatus==2 }">selected="selected"</c:if>>使用</option>
          </select>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>最后一次有效纬度：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${vehicle.lastDimension }" name="lastDimension"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>最后一次有效经度：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="lastLongitude" value="${vehicle.lastLongitude }"/>
          <div class="tips"></div>
        </div>
      </div>
      <input type="hidden" name="createAt" value="${vehicle.createAt }"/>
      <input type="hidden" name="updateAt" value="${vehicle.updateAt }"/>
      <div class="form-group">
        <div class="label">
          <label>备注：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="remark" value="${vehicle.remark }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-reply" type="button" onclick="history.go(-1)"> 返回</button>
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
</html>