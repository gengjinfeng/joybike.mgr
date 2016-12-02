<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span> 添加车辆</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="/joyBike1.0/vehicle/insert">  
      <div class="form-group">
        <div class="label">
          <label>车辆ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="vehicleId" data-validate="required:请输入车辆ID"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>车锁ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="lockId" data-validate="required:请输入车锁ID"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>绑定电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="bundlingPhone"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>隶属代理商ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="agentId"  data-validate="required:不能为空"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>启用状态：</label>
        </div>
        <div class="field">
          <select name="status" class="input w50">
	   		<option value="1">禁用</option>
           	<option value="0">启用</option>
	   		<option value="2">故障</option>
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
           	<option value="0">空闲</option>
			<option value="1">预约</option>
	 		<option value="2">使用</option>
          </select>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>最后一次有效纬度：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="lastDimension" data-validate="required:不能为空"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>最后一次有效经度：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="lastLongitude" data-validate="required:不能为空"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>备注：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="remark"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
</html>