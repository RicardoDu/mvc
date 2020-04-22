<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>登录页面</title>
    <meta http-equiv="refresh" content ="5; url=<%=basePath%>/jsp/login.jsp">
</head>

<body>
    <a href="<%=basePath%>/jsp/login.jsp"> 您尚未登录，请前往登录。点击此处跳转</a>
</body>
</html>