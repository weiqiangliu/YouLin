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
    
    <title>My JSP 'myproducts.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="height:600px;">
  <div>
   <c:forEach var="product" items="${sessionScope.pageBean.list }">
<div>
<label class="productno" onclick="alertt()">【${product.pno }】</label><a href="product_getMyProduct.action?pno=${product.pno }" target="home_blow" class="ptitle">${product.ptitle }</a><br/>
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
       <a href="<%=basePath %>product_searchForUserId.action?currPage=1&userid=<s:property value="#session.existuser.userid"/>">[首页]</a>&nbsp;&nbsp;
       <a href="<%=basePath %>product_searchForUserId.action?currPage=<s:property value="#session.pageBean.currPage-1" />&userid=<s:property value="#session.existuser.userid"/>">[上一页]</a>&nbsp;&nbsp;
   </s:if>
   <s:if test="#session.pageBean.currPage < #session.pageBean.totalPage">
       <a href="<%=basePath %>product_searchForUserId.action?currPage=<s:property value="#session.pageBean.currPage+1" />&userid=<s:property value="#session.existuser.userid"/>">[下一页]</a>&nbsp;&nbsp;
       <a href="<%=basePath %>product_searchForUserId.action?currPage=<s:property value="#session.pageBean.totalPage" />&userid=<s:property value="#session.existuser.userid"/>">[尾页]</a>&nbsp;&nbsp;
   </s:if>
   </span>
</td>
</tr>
</table>
</div>
  </body>
</html>
