<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script src="../js/myjquery.js"></script> 
</head>
<body>
<form method="post" action="">
  <div class="panel admin-panel">
	    <div class="panel-head"><strong class="icon-reorder"> 车辆信息</strong></div>
	    <div class="padding border-bottom">
	      <ul class="search">
	        <li>
	          <a href="${request.getContextPath() }/joyBike1.0/vehicle/positions?pageNow=${pageNow }&pageSize=${pageSize }" class="button button-little bg-blue"><span class="icon-desktop"></span> 显示本页车辆的位置</a>
	          <a href="${request.getContextPath() }/joyBike1.0/vehicle/intobUpdate?pageNow=${pageNow }&pageSize=${pageSize }" class="button button-little bg-blue"><span class="icon-pencil-square-o"></span> 批量修改车辆信息</a>
	        </li>
	      </ul>
	    </div>
	    <table class="table table-hover text-center">
	      <tr>
	        <th width="120">车辆ID</th>
	        <th>车锁ID</th>       
	        <th>绑定电话</th>
	        <th>隶属代理商ID</th>
	        <th>启用状态</th>
	        <th>使用状态</th>
	        <th>最后一次有效纬度</th>
	        <th>最后一次有效经度</th>
	        <th>创建时间</th>
			<th>修改时间</th>
			<th>备注</th>
			<th>操作</th>
	      </tr>
	        <c:forEach items="${vehicles }" var="vehicle" >
			<tr>	
		   		<td>${vehicle.vehicleId }</td>
		   		<td>${vehicle.lockId }</td>
		   		<td>${vehicle.bundlingPhone }</td>
		   		<td>${vehicle.agentId }</td>
		   		<c:choose>
		   			<c:when test="${vehicle.status==0 }">
		   				<td>启用</td>
		   			</c:when>
		   			<c:when test="${vehicle.status==1 }">
		   				<td>禁用</td>
		   			</c:when>
		   			<c:otherwise>
		   				<td>故障</td>
		   			</c:otherwise>
		   		</c:choose>
		   		<c:choose>
		   			<c:when test="${vehicle.useStatus==0 }">
		   				<td>空闲</td>
		   			</c:when>
		   			<c:when test="${vehicle.useStatus==1 }">
		   				<td>预约</td>
		   			</c:when>
		   			<c:otherwise>
		   				<td>使用</td>
		   			</c:otherwise>
		   		</c:choose>
		   		<td>${vehicle.lastDimension }</td>
		   		<td>${vehicle.lastLongitude }</td>
		   		<td>
			   		<jsp:useBean id="createAt" class="java.util.Date" scope="page"></jsp:useBean>
					<jsp:setProperty property="time" name="createAt" value="${vehicle.createAt*1000 }"/>
					<fmt:formatDate value="${createAt}" pattern="yyyy-MM-dd HH:mm:ss" />
		   		</td>
		   		<td>
		   			<jsp:useBean id="updateAt" class="java.util.Date" scope="page"></jsp:useBean>
					<jsp:setProperty property="time" name="updateAt" value="${vehicle.updateAt*1000 }"/>
					<fmt:formatDate value="${updateAt}" pattern="yyyy-MM-dd HH:mm:ss" />
		   		</td>
		   		<td>${vehicle.remark }</td>
		   		<td><div class="button-group">
				    <a class="button border-main" href="intoUpdate?id=${vehicle.id }"><span class="icon-edit"></span> 修改</a>
				    <a class="button border-main" href="position?id=${vehicle.id }"><span class="icon-info-circle"></span> 位置</a>
				    </div></td>
		   	</tr>
			</c:forEach>
	      <tr>
	        <td colspan="12">
	        	<div class="pagelist"> 
					共${count }条，每页显示<select id="sel" name="pageSize">
				      <option value="25" <c:if test="${pageSize==25 }">selected="selected"</c:if>>25</option>
				      <option value="50" <c:if test="${pageSize==50 }">selected="selected"</c:if>>50</option>
				      <option value="100" <c:if test="${pageSize==100 }">selected="selected"</c:if>>100</option>
				      <option value="200" <c:if test="${pageSize==200 }">selected="selected"</c:if>>200</option>
				    </select>条
					<c:choose>
						<c:when test="${pageNow==1 }"><label>首页</label> <label>上一页</label></c:when>
						<c:otherwise><a href="pages?pageNow=1&pageSize=${pageSize }">首页</a> <a href="pages?pageNow=${pageNow-1 }&pageSize=${pageSize }">上一页</a></c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${totalPage<=5 }">
				   			<c:forEach var="i" begin="1" end="${totalPage }">
								<c:choose>
									<c:when test="${i==pageNow }"><span class="current">${i }</span></c:when>
									<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
								</c:choose>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${pageNow-2>1&&pageNow+2<=totalPage }">
									<c:forEach var="i" begin="${pageNow-2 }" end="${pageNow+2 }">
										<c:choose>
											<c:when test="${i==pageNow }"><span class="current">${i }</span></c:when>
											<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
										</c:choose>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${pageNow-2<=1 }">
											<c:forEach var="i" begin="1" end="5">
												<c:choose>
													<c:when test="${i==pageNow }"><span class="current">${i }</span></c:when>
													<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
												</c:choose>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<c:forEach var="i" begin="${totalPage-4 }" end="${totalPage }">
												<c:choose>
													<c:when test="${i==pageNow }"><span class="current">${i }</span></c:when>
													<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
												</c:choose>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
	        		<c:choose>
						<c:when test="${pageNow==totalPage }"><label>下一页</label> <label>尾页</label></c:when>
						<c:otherwise><a href="pages?pageNow=${pageNow+1 }&pageSize=${pageSize }">下一页</a> <a href="pages?pageNow=${totalPage }&pageSize=${pageSize }">尾页</a></c:otherwise>
					</c:choose>
					<form action="/joyBike1.0/vehicle/pages">
					共${totalPage }页，到第<input type="text" name="pageNow" style="width:30px; height:20px;"/>页<input id="sub" type="submit" onclick="return check()" value="确定">
					</form>
	        	</div>
	        </td>
	      </tr>
	    </table>
	 </div>
</form>
<script type="text/javascript">
$("#sel").change(function(){ 
  location.href="${request.getContextPath() }/joyBike1.0/vehicle/pages?pageSize="+$("#sel option:selected").text();
})
function check(){
	if($("input[name=pageNow]").val()>0 && $("input[name=pageNow]").val()<=${totalPage }){
		return true;
	} else {
		alert("页数有误");
		return false;
	}
}
</script>
</body>
</html>