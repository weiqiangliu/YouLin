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
  <!--用百度的静态资源库的cdn安装bootstrap环境-->
		<!-- Bootstrap 核心 CSS 文件 -->
		<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<!--font-awesome 核心我CSS 文件-->
		<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<STYLE type="text/css">
	body{margin: 0;padding: 0;height: 1030px;};
	</STYLE>	
	</head>
	<body  class="container">
	<form  action="product_addProduct" method="post" namespace="/" name="isc">
    <div class="form-group">
    <label for="ptitle">商品标题：</label>
    <input name="ptitle" type="text" class="form-control" id="ptitle" placeholder="请输入商品标题(最多30字)" maxlength="30">
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
<label for="keywords">您选择的类别是：</label><input type="text" readonly="readonly" id="keywords" name="keywords" style="width: 100px;">
</div>
<hr/>
<div class="form-group">
    <label for="shortintroduce">商品简介：</label>
    <textarea class="form-control" rows="16" name="shortintroduce" id="shortintroduce" style="background:url(img/bgzuzi.jpg) no-repeat;background-size: cover;"></textarea>
  </div>
  <hr/>
      <div class="form-group">
    <label for="price">商品价格：</label>
    <input name="price" type="text" class="form-control" id="price" placeholder="请输入您想出售的价格" maxlength="10">
  </div>
  <hr/>
<div class="form-group">
    <label for="publishplace" style="">发布地点：</label>
    <input name="publishplace" type="text"  id="publishplace" readonly="readonly"  style="width: 100px;">
    <label for="publishplace" style="">(已自动获取)</label>
</div>
<hr>
<div class="form-group">
    <label>上传图片（*.jpg/*.png/*.gif/*.bmp）：</label><br/>
    <input type="file" name="filePath" id="filePath" value="选择图片"/>  
    <br/>
    <input type="button" name="fileLoad" id="fileLoad" value="点击上传" onClick="fileupload(this)"/>
    <br />
         <label>  您已上传（</label><label id="indexnn" ></label><label> ）张,最多上传5张</label>
</div>
<hr/>
<div class="form-group">联系人手机：
<input maxlength="11" class="text-primary form-group" name="contactway" type="text"  id="contactway"  style="width: 200px;" value="<s:property value="#session.existuser.phonenubmer"/>">
</div>
<input type="submit" class="btn btn-success" value="发布闲置">
<input name="Xplace" id="Xplace" type="hidden">
<input name="Yplace" id="Yplace" type="hidden">
<input name="pno" id="pno" type="hidden">
<input name="publishdate" id="publishdate" type="hidden">
<input name="userid" id="userid" type="hidden">
<input name="pusername" id="pusername" type="hidden" value="${sessionScope.existuser.nickname}">
<h5 style="color: red;"><s:actionerror /></h5>
</form>
  
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
  var pnum = "PNO"+${sessionScope.existuser.userid}+ date.getFullYear()+(date.getMonth()+1)+date.getDate()+date.getHours()+date.getMinutes()+date.getSeconds(); 
  var pdat = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
  document.getElementById("pno").value = pnum;
  document.getElementById("publishdate").value = pdat;
  document.getElementById("userid").value = ${sessionScope.existuser.userid};
  }
  </script>
  <script type="text/javascript">  
        var indexn = 0;
        function fileupload(){  
            var allowtype="jpg,png,bmp,gif";
            if(indexn===5){alert("您已上传5张图片，最多上传5张");return false;}
            else{
            if($("#filePath").val()==""){  
                alert("上传文件不能为空!");  
                return false;  
            }  
            var filetype = $("#filePath").val().split(".")[1].toLowerCase();
            if (allowtype.indexOf(filetype) == -1) {alert("文件格式不正确，请上传图片文件(jpg,png,bmp,gif)");return false;}
              
            $.ajaxFileUpload({  
                    url:"<%=basePath %>/servlet/FileuploadServlet?userid="+${sessionScope.existuser.userid}+"&pno="+$("#pno").val(),  
                    secureuri:false,  
                    fileElementId:'filePath',  
                    dataType: 'text/xml',             
                    success: function (data) {  
                    alert(data);
                        if(data.indexOf("uploadsuccess")>0){
                        alert("上传成功！");
                        indexn+=1;
                        $("#indexnn").html(indexn); 
                        }
                        
                        else{
                        alert("该文件已存在，请重新选择！");
                        }
                    },
                    error: function (data, status, e){  
                        alert("上传失败！");  
                    }
                }  
            );  
           }
        }  
     
  </script> 
  <SCRIPT type="text/javascript" src="js/fenlei.js"></SCRIPT> 
  <script type="text/javascript" src="js/ajaxfileupload.js"></script>
  </body>	
</html>
