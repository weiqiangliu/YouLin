<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=vWoIcihuThnPB5ekkXUWFbarGZRDnRQ1"></script>
	<title>地图展示</title>
	<STYLE type="text/css">
	     .productno{
        
        }
        .ptitle{
        text-align: left;
        font-size:large;
        font-weight: bold;
        text-decoration:none
        }
        .product{
       
        font-size:medium;
        }
	</STYLE>
	<script type="text/javascript">
	// 百度地图API功能
	window.onload = function(){ var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,11);
	map.enableScrollWheelZoom(true); 
	
	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
		    var label = new BMap.Label("您现在在这里！",{offset:new BMap.Size(20,-10)});
	        mk.setLabel(label);
			map.panTo(r.point);
			r.point.lng = 121.891619;
			r.point.lat = 30.980088;
			mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
			/*alert('您的位置：'+r.point.lng+','+r.point.lat);*/
		}
		else {
			alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true})
	}
</script>
</head>
<body style="height: 1060px;">
	<div id="allmap" style="width: 100%;height: 380px;"></div>
	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#dofefe SIZE=3>

<c:forEach var="product" items="${sessionScope.pageBean.list }">
<div>
<label class="productno" onclick="alertt()">【${product.pno }】</label><a href="" target="home_blow" class="ptitle">${product.ptitle }</a><br/>
<div class="product">
类别：<span onclick="alerttest()">${product.keywords }</span>&nbsp;&nbsp;发布地点：${product.publishplace }&nbsp;&nbsp;发布日期：${product.publishdate }

</div>
<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#dofefe SIZE=2>
</div>
<input type="hidden" />
</c:forEach>

<table border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td align="right">
   <span>第<s:property value="#session.pageBean.currPage" />/<s:property value="#session.pageBean.totalPage" />页</span>
   &nbsp;&nbsp;总共<s:property value="#session.pageBean.totalCount" />条记录
   &nbsp;&nbsp;每页显示<s:property value="#session.pageBean.pageSize" />条
   <span>
   <s:if test="#session.pageBean.currPage > 1">
       <a href="<%=basePath %>product_goToHomePage.action?currPage=1">[首页]</a>&nbsp;&nbsp;
       <a href="<%=basePath %>product_goToHomePage.action?currPage=<s:property value="#session.pageBean.currPage-1" />">[上一页]</a>&nbsp;&nbsp;
   </s:if>
   <s:if test="#session.pageBean.currPage < #session.pageBean.totalPage">
       <a href="<%=basePath %>product_goToHomePage.action?currPage=<s:property value="#session.pageBean.currPage+1" />">[下一页]</a>&nbsp;&nbsp;
       <a href="<%=basePath %>product_goToHomePage.action?currPage=<s:property value="#session.pageBean.totalPage" />">[尾页]</a>&nbsp;&nbsp;
   </s:if>
   </span>
</td>
</tr>
</table>

</body>
</html>

