<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<!--font-awesome 核心我CSS 文件-->
		<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<title>home top</title>
<STYLE type="text/css">
body {margin: 0;padding: 0;overflow: hidden;}
ul{list-style-type: none;float: left;line-height: 80px;}
li{float: left;margin-left: 40px;font-size: 20px;font-weight:bold;}
</STYLE>
</head>
<body>
<div style="height:30px;margin-top: 4px;background-color:#f5f5f5">
&nbsp;&nbsp;<strong>欢迎您：<s:property value="#session.existuser.nickname"/></strong>&nbsp;&nbsp;&nbsp;
<a href="user_relogin.action" target="_parent">重新登陆</a>
<a href="#" target="homepage" style="float: right; margin-right:20px;">个人中心</a>
</div>
<div style="height:80px; background:url(img/4.jpg);" >
<img alt="YouLin" src="img/ico.jpg" height="80px;" width="80px;" style="float:left;"><div style="float:left;margin-left:6px;line-height: 80px;"><label style="font-size:38px;font-weight:bold;margin-left:20px;">友邻</label><label style="margin-left: 10px;font-weight: normal">我们都是友好的邻里~</label></div>

<ul>
<li><a href="product_goToHomePage.action" target="home_blow">首页</a></li>
<li><a href="frame/arround.jsp" target="home_blow">附近二手</a></li>
<li><a href="frame/addProduct.jsp" target="home_blow">发布闲置</a></li>
<li><a href="product_searchForUserId.action?currPage=1&userid=<s:property value="#session.existuser.userid"/>" target="home_blow">我的闲置</a></li>
</ul>
<div style="margin-right:50px; float:right;">
<input name="search" id="search" class="form-control" type="text" style="float:left; width: 220px;height: 30px;margin-top:25px;margin-left: 80px;" placeholder="搜索二手闲置"/>
<a  href="javascript:void(0);" onclick=" var sear=document.getElementById('search').value;parent.frames['home_blow'].window.location.href = 'product_searchKey.action?currPage=1&searchkey='+sear;return false;" ><img height="60px;" width="80px;" src="img/serchico.jpg" style="margin-top: 13px;"/></a>
</div>
</div>
</body>
</html>