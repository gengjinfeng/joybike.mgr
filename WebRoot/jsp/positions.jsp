<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>所有车辆位置</title>
	<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <style type="text/css">
      body,html,#container{
        height: 100%;
        margin: 0px;
        font: 12px Helvetica, 'Hiragino Sans GB', 'Microsoft Yahei', '微软雅黑', Arial;
      }
      .info-title{
        color: white;
        font-size: 14px;
        background-color: rgba(0,155,255,0.8);
        line-height: 26px;
        padding: 0px 0 0 6px;
        font-weight: lighter;
        letter-spacing: 1px
      }
      .info-content{
        padding: 4px;
        color: #666666;
        line-height: 23px;
      }
      .info-content img{
        float: left;
        margin: 3px;
      }
    </style>
</head>
<body>
	<div id="container"></div>
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=8255a46f698ce402928806547d2baa37"></script>
	<script type="text/javascript">
	    var map = new AMap.Map('container',{
	            resizeEnable: true,
	            zoom: 11,
	            center: [116.401208,39.907771]
	    });
	    
	    //加载地图插件    
	    AMap.plugin(['AMap.ToolBar','AMap.Scale'],function(){
	        var toolBar = new AMap.ToolBar();
	        var scale = new AMap.Scale();
	        map.addControl(toolBar);
	        map.addControl(scale);
	    });
	    var markers=new Array();
		<c:forEach items="${vehicles }" var="vehicle" varStatus="abc">
			markers['${abc.index }']=new AMap.Marker({
				position:['${vehicle.lastLongitude }','${vehicle.lastDimension }'],
				map:map
			});
			markers['${abc.index }'].content = '${vehicle.vehicleId }';
			markers['${abc.index }'].on('click', markerClick);
		</c:forEach> 
		//点击标注显示的弹窗
		var infoWindow = new AMap.InfoWindow({offset: new AMap.Pixel(0, -30)});
		function markerClick(e) {
			infoWindow.setContent(e.target.content);
			infoWindow.open(map, e.target.getPosition());
		};
	   </script>
	<script type="text/javascript" src="http://webapi.amap.com/demos/js/liteToolbar.js"></script>
</body>
</html>