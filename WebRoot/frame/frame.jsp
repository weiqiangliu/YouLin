<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  11111111111111111111111111111
  <s:property value="#session.existuser.nickname"/>
  <s:property value="#session.existuser.nickname"/>
  <table>
<c:forEach var="product" items="${sessionScope.listproduct}"><tr>
 <s:property value="#session.existuser.nickname"/>
<td>${user.nickname }</td></tr>
</c:forEach>
</table>

  </body>

<!--
 <frameset noresize="noresize" rows="120,*" name="main" frameborder="no">
 <frame noresize="noresize" name="top" src="frame/home_top.jsp"/>
 <frame noresize="noresize" name="blow" src="frame/home_blow.jsp"/>
 </frameset>
--></html>
