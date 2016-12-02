<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 添加产品</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="/joyBike1.0/product/insert">    
      <div class="form-group">
        <div class="label">
          <label>产品编码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="productCode" data-validate="required:请输入产品编码"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>产品名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="productName" data-validate="required:请输入产品名称"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>售卖价：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="price" data-validate="required:不能为空"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>刊例价：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="publishedPrice" data-validate="required:不能为空"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建人id：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="createId" data-validate="required:不能为空"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>修改人id：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="updateId" data-validate="required:不能为空"/>
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