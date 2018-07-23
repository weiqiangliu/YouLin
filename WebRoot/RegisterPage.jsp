<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>友邻注册界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
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
	body{margin: 0;padding: 0;};
	</STYLE>	
	</head>
	<body>
	<div class="container">
    <div class="top" style="background:url(img/4.jpg); height:60px; width: 100%;" >
    <div style="float:left;"><img src="img/ico.jpg" height="60px;"width="60px;"><SPAN style="font-size:x-large;margin-left: 10px;">友邻注册页面</SPAN></div><div style="float: right;line-height: 60px;"><a href="<%=basePath %>/Login.jsp">返回登陆</a></div>
    </div>
    <hr/>
<form role="form" action="user_register" method="post" namespace="/" id="registerform">
  <div class="form-group">
    <label>用户名：</label>
    <input type="text" class="form-control" placeholder="请输入您的用户名" name="username" id="username">
  </div>
  <div class="form-group">
    <label>密码：</label>
    <input type="text" class="form-control" placeholder="请输入您的密码" name="password" id="password">
  </div>
  <div class="form-group">
    <label>性别：</label>
   <div class="radio">
    <label>
    <input type="radio" name="sex"  value="男" checked="checked">男</label>
    <label>
    <input type="radio" name="sex"  value="女">女</label>
  </div>
  </div>
   
  <div class="form-group">
  <label>昵称：</label>
  <input type="text" class="form-control" placeholder="请输入您的昵称" name="nickname">
  </div>

    <div class="form-group">
    <label>生日：</label>
    <input name="birthday" type="text" class="form-control" placeholder="请选择您的出生日期" onfocus="new WdatePicker(this,'%Y-%M-%D',false,'default')"> 
    </div>
  <div class="form-group">
  <label>常住城市：</label>
  <input name="permanentaddress" type="text" class="form-control" placeholder="请输入您的常住城市" mod="address|notice" mod_address_source="hotel" mod_address_suggest="@Beijing|北京|53@Shanghai|上海|321@Shenzhen|深圳|91@Guangzhou|广州|80@Qingdao|青岛|292@Chengdu|成都|324@Hangzhou|杭州|383@Wuhan|武汉|192@Tianjin|天津|343@Dalian|大连|248@Xiamen|厦门|61@Chongqing|重庆|394@" mod_address_reference="cityid" size="15" id="homecity_name">
  <input id="cityid" name="cityid" type="hidden" value="{$cityid}" />
  <div id="jsContainer" class="jsContainer" style="height:0">
   <div id="tuna_alert" style="display:none;position:absolute;z-index:999;overflow:hidden;"></div>
    <div id="tuna_jmpinfo" style="visibility:hidden;position:absolute;z-index:120;"></div>
    </div> 
  </div>
  <hr/>
  <label>联系方式（至少填一项，手机号必填）：</label>
  <hr/>
  <div class="form-group">
  <label>QQ号：</label>
  <input name="qqnumber" type="text" class="form-control" placeholder="请输入您的QQ号">
  </div>
    <div class="form-group">
  <label>微信号：</label>
  <input name="weichat" type="text" class="form-control" placeholder="请输入您的微信号">
  </div>
  <hr/>
  <div class="form-group">
  <label>手机号：</label>
  <input name="phonenubmer" onblur="javascript:checknumber();" id="phonenubmer" type="text" class="" placeholder="请输入大陆11位手机号" maxlength="11">
  <input id="cknm" type="button" onclick="sendchecknumber();" class="btn btn-info" value="获取验证码"/>
  <label>验证码：</label><input onblur="ckchecknumber();" name="checkphonenubmer" id="checkphonenubmer" type="text" class="" placeholder="请输入验证码" maxlength="4">
  </div>
  <button type="button" onclick="javascript:register();" class="btn btn-success">注册用户</button>
  </form>	
  </div>
  <script type="text/javascript">
function checknumber(){
var phonenubmer = document.getElementById("phonenubmer").value;
var patrn = /^(-)?\d+(\.\d+)?$/;
if (patrn.exec(phonenubmer) == null || phonenubmer == ""||phonenubmer.length<11) {
alert("请输入正确的手机号！");
document.getElementById("phonenubmer").value="";
}
}; 

function sendchecknumber(){
var phonenubmer = document.getElementById("phonenubmer").value;
var Num=""; 
if(phonenubmer==null||phonenubmer==""){alert("请输入11位大陆手机号！");}
else{
for(var i=0;i<4;i++) 
{ 
Num+=Math.floor(Math.random()*10); 
} 
document.getElementById("hiddenchecknumber").value=Num;
settime();

var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.open("POST","http://106.ihuyi.com/webservice/sms.php?method=Submit&account=C70809914&password=0f787d3970d75e9bb6349f4cb0f17f31&mobile="+phonenubmer+"&content=您的验证码是："+Num+"。请不要把验证码泄露给其他人。",true);
xmlhttp.send();
}
};

var countdown=60; 
var val = document.getElementById("cknm");

function settime() { 
if (countdown == 0) { 
val.removeAttribute("disabled");    
val.value="免费获取验证码"; 
countdown = 60; 
return null;
} else { 
val.setAttribute("disabled", true); 
val.value="重新发送(" + countdown + ")"; 
countdown--; 
} 
var timer = setTimeout(function() { 
settime() 
},1000) 
} 


function ckchecknumber(){
var truenumber =document.getElementById("hiddenchecknumber").value;
var input = document.getElementById("checkphonenubmer").value;

if(truenumber!=input){
alert("请输入正确的手机验证码！");
document.getElementById("checkphonenubmer").value="";
}
}

function register(){

var username = document.getElementById("username").value;
var password = document.getElementById("password").value;
var checkphonenubmer = document.getElementById("checkphonenubmer").value;

if(username==null||username==""||password==null||password==""){
alert("用户名或密码不能为空，请输入！");}
else if(checkphonenubmer==null||checkphonenubmer=="")
{alert("请输入手机验证码！");}
else{
document.getElementById("registerform").submit();
}
};
  </script> 
  <script type="text/javascript" src="js/fixdiv.js"></script>
  <script type="text/javascript" src="js/address.js"></script>
  <script src="js/jquery-1.11.2.min.js"></script>
  <input type="hidden" id="hiddenchecknumber">
  </body>	
</html>
