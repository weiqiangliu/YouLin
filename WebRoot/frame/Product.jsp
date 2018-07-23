<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
			<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<!--font-awesome 核心我CSS 文件-->
		<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<STYLE type="text/css">
label{
font-size: 16px;
}
p{
font-size: 16px;
}
</STYLE>
  </head>
  
  <body>
  <div style="border:2px solid grey;padding:10px; line-height: 40px; width: 1200px;margin: auto;">
    <label style="font-size:16px;">${sessionScope.Product.pno }</label><label style="font-size: 23px;font-weight: bold;margin-left:20px;">${sessionScope.Product.ptitle }</label><br/>
    <hr/>
    <label>分类：${sessionScope.Product.keywords }</label>
    <label style="margin-left:30px;">发布地点: ${sessionScope.Product.publishplace }</label>
    <label style="margin-left:30px;">发布时间: ${sessionScope.Product.publishdate }</label>
    <label style="margin-left:30px;">价格：<font color="red" size="4px;" style="margin-left: 5px;">${sessionScope.Product.price } ¥</font></label>
   <br/>
   <label>发布者：${sessionScope.Product.pusername }</label>
   <label style="margin-left:30px;">联系人手机: ${sessionScope.Product.contactway }</label>
   <hr>
   <h4><STRONG>商品简介：</STRONG></h4>
   <p>${sessionScope.Product.shortintroduce }</p>
   <hr>
   <h4><STRONG>商品图片：</STRONG></h4>
   <div style="margin-left:0px;text-align: center;">
   <c:if test="${sessionScope.imagelist.size()==0 }"><label style="color:red;">未上传图片</label></c:if>
   <c:forEach var="productintroduceimage" items="${sessionScope.imagelist }">
   <img src="/youlinimg/${sessionScope.Product.userid }/${productintroduceimage.pno }/${productintroduceimage.imagename }" width="600px;" height="500px;"/>
   <hr/>
   </c:forEach>
   </div>
   </div> 
  </body>
</html>
