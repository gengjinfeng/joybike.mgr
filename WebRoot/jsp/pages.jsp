<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>分页显示</title>
</head>
<body>
	<table>
		<tr>
			<td><a href="${request.getContextPath() }/joyBike1.0/jsp/insert.jsp"><input type="button" value="添加车辆"/></a></td>
			<td><a href="${request.getContextPath() }/joyBike1.0/vehicle/positions?pageNow=${pageNow }&pageSize=${pageSize }"><input type="button" value="显示车辆位置"/></a></td>
			<td colspan="7">
				<table>
					<tr>
						<td>
							<c:if test="${totalPage>5 }">
								<c:choose>
									<c:when test="${pageNow==1 }">上一页</c:when>
									<c:otherwise><a href="pages?pageNow=${pageNow-1 }&pageSize=${pageSize }">上一页</a></c:otherwise>
								</c:choose>
								<c:if test="${pageNow-2>1&&pageNow+2<totalPage }">
									<c:forEach var="i" begin="${pageNow-2 }" end="${pageNow+2 }">
										<c:choose>
											<c:when test="${i==pageNow }">${i }</c:when>
											<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
								<c:if test="${pageNow-2<=1 }">
									<c:forEach var="i" begin="1" end="5">
										<c:choose>
											<c:when test="${i==pageNow }">${i }</c:when>
											<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
								<c:if test="${pageNow+2>=totalPage }">
									<c:forEach var="i" begin="${totalPage-4 }" end="${totalPage }">
										<c:choose>
											<c:when test="${i==pageNow }">${i }</c:when>
											<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
								<c:choose>
									<c:when test="${pageNow==totalPage }">下一页</c:when>
									<c:otherwise><a href="pages?pageNow=${pageNow+1 }&pageSize=${pageSize }">下一页</a></c:otherwise>
								</c:choose>
							</c:if>
							<c:if test="${totalPage<=5&&totalPage!=1 }">
								<c:forEach var="i" begin="1" end="${totalPage }">
									<c:choose>
										<c:when test="${i==pageNow }">${i }</c:when>
										<c:otherwise><a href="pages?pageNow=${i }&pageSize=${pageSize }">${i }</a></c:otherwise>
									</c:choose>
								</c:forEach>
							</c:if>
						</td>
						<td>
							<form action="/joyBike1.0/vehicle/pages">
								共${totalPage }页，第${pageNow }页
								<c:if test="${totalPage!=1 }">
								跳转至第<input type="text" name="pageNow" size="1"/>页，</c:if>每页显示<input type="text" name="pageSize" size="1" value="${pageSize }"/>条数据<input type="submit" value="确定">
							</form>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>车辆ID</td>
			<td>车锁ID</td>
			<td>绑定电话</td>
			<td>隶属代理商ID</td>
			<td>启用状态</td>
			<td>使用状态</td>
			<td>最后一次有效纬度</td>
			<td>最后一次有效经度</td>
			<td>创建时间</td>
			<td>修改时间</td>
			<td>备注</td>
			<td>操作</td>
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
	   		<td>${vehicle.createAt }</td>
	   		<td>${vehicle.updateAt }</td>
	   		<td>${vehicle.remark }</td>
	   		<td><a href="intoUpdate?id=${vehicle.id }">修改</a> <a href="getOne?id=${vehicle.id }">查看</a></td>
	   	</tr>
		</c:forEach>
	</table>
</body>
</html>