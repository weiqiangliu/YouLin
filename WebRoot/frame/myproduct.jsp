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
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=vWoIcihuThnPB5ekkXUWFbarGZRDnRQ1"></script>
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
   <SCRIPT type="text/javascript">
   function deletepro(pro){
  if(confirm("您确定要删除该商品吗？")){
      alert("删除成功！");
      window.location.href='product_deletemyproduct.action?pno='+pro;
   }
   }
   function updatepro(){
    if(confirm("您确定要修改该商品吗？")){
       alert("修改成功！");
       document.getElementById("updateform").submit();
    }     
   }
   </SCRIPT>
  </head>
  
  <body class="container">
  <form id="updateform" name="isc" action="product_updateProduct?pno=${sessionScope.Product.pno }" method="post" namespace="/" >
   <div class="form-group">
    <label for="ptitle">商品标题：</label>
    <input name="ptitle" type="text" class="form-control" id="ptitle" value="${sessionScope.Product.ptitle }" maxlength="30">
  </div>
   <hr/>
 <div class="form-group">
    <label for="keywords">类别：</label>
 
<select name="example" size="1" onChange="redirect(this.options.selectedIndex)"> 
<option selected>-请选择类别-</option> 
<option>闲置数码</option> 
<option>闲置母婴</option> 
<option>家居日用</option> 
<option>影音家电</option> 
<option>鞋服配饰</option> 
<option>珠宝收藏</option> 
</select> 
<select name="stage2" size="1" onChange="redirect1(this.options.selectedIndex)"> 
<option selected>-请选择类别-</option> 
</select> 
<select name="stage3" size="1" onChange="redirect2(this.options.selectedIndex)" id="stage3"> 
<option selected>-请选择类别-</option> 
</select> 
<label for="keywords">您选择的类别是：</label><input type="text" readonly="readonly" id="keywords" name="keywords" style="width: 100px;" value="${sessionScope.Product.keywords }">
</div>
 <hr/>
 <div class="form-group">
    <label for="shortintroduce">商品简介：</label>
    <textarea class="form-control" rows="16" name="shortintroduce" id="shortintroduce" style="background:url(img/bgzuzi.jpg) no-repeat;background-size: cover;">${sessionScope.Product.shortintroduce }</textarea>
  </div>
  
  <hr/>
      <div class="form-group">
    <label for="price">商品价格：</label>
    <input name="price" type="text" class="form-control" id="price" value="${sessionScope.Product.price }" maxlength="10">
  </div>
  <hr/>
  <div class="form-group">
    <label for="publishplace" style="">发布地点：</label>
    <input name="publishplace" type="text"  id="publishplace" readonly="readonly"  style="width: 100px;">
    <label for="publishplace" style="">(已自动获取)</label>
</div>
<hr>
<div class="form-group">联系人手机：
<input maxlength="11" class="text-primary form-group" name="contactway" type="text"  id="contactway"  style="width: 200px;" value="${sessionScope.Product.contactway }">
</div>
<input name="Xplace" id="Xplace" type="hidden">
<input name="Yplace" id="Yplace" type="hidden">
<input name="pno" id="pno" type="hidden" value="${sessionScope.Product.pno }">
<input name="publishdate" id="publishdate" type="hidden">
<input name="userid" id="userid" type="hidden" value="${sessionScope.Product.userid}">
  </form>
     <div style="margin: auto;margin-top:10px;text-align:center;;">
     <button class="btn btn-info" onclick="updatepro();">保存商品</button>
  <button class="btn btn-info" style="margin-left: 60px;" onclick="deletepro('${sessionScope.Product.pno }');">删除商品</button>
   </div>
   <script type="text/javascript">
   var myCity = new BMap.LocalCity();
	myCity.get(myFun);
   function myFun(result){
		var cityName = result.name;
		document.getElementById("publishplace").value=cityName;
	}

  	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
		document.getElementById("Xplace").value = r.point.lng;
		document.getElementById("Yplace").value = r.point.lat;
		}
		else {
			alert('获取位置失败'+this.getStatus());
		}        
	},{enableHighAccuracy: true})

  window.onload=function(){
  var date = new Date();
  var pdat = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
  document.getElementById("publishdate").value = pdat;
  }
  </script>
  <script type="text/javascript" src="js/fenlei.js"></script>
  <script type="text/javascript" src="js/ajaxfileupload.js"></script>
  </body>
</html>
