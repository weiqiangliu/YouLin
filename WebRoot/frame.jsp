<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
<body>
<iframe frameborder="0"  width="100%" src="frame/home_top.jsp"></iframe>
<iframe id="home_blow" name="home_blow" width="100%" frameborder="0"   src="frame/home_blow.jsp" onLoad="Javascript:SetWinHeight(this)" scrolling="no" ></iframe>
<script type="text/javascript">
    window.scrollTo(0,0);
    function iFrameHeight() {

        var ifm= document.getElementById("home_blow");

        var subWeb = document.frames ? document.frames["home_blow"].document :ifm.contentDocument;

            if(ifm != null && subWeb != null) {

            ifm.height = subWeb.body.scrollHeight;
            }
    }
function SetWinHeight(obj) 
{ 
var win=obj; 
if (document.getElementById) 
{ 
if (win && !window.opera) 
{ 
if (win.contentDocument && win.contentDocument.body.offsetHeight) 
win.height = win.contentDocument.body.offsetHeight+8; 
else if(win.Document && win.Document.body.scrollHeight) 
win.height = win.Document.body.scrollHeight+8; 
} 
} 
} 

</script>

</script>
</body>


<!--
 <frameset noresize="noresize" rows="120,*" name="main" frameborder="no">
 <frame noresize="noresize" name="top" src="frame/home_top.jsp"/>
 <frame noresize="noresize" name="blow" src="frame/home_blow.jsp"/>
 </frameset>
--></html>
