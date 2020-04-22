<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>修改完成页面</title>
    <meta http-equiv="refresh" content ="0; url=<%=basePath%>/resume/login">
</head>

<body>
    <a href="<%=basePath%>/resume/login"> 修改完成。点击此处跳转</a>
</body>
</html>