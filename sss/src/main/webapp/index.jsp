<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>登录页面</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>

<body>
<form action="<%=basePath%>/resume/login" method="post">
    <table>
        <tr>
            <td colspan="2">登录窗口</td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="userName" />
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password" />
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="登录" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>