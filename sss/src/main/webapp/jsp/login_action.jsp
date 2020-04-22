<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.lagou.edu.pojo.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>列表页</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

</head>

<body>
<a href="/jsp/add.jsp">添加</a>
<form action="${basePath}/resume/queryAll" method="post">
</form>
<table border="1">
    <tr>
        <td>id</td>
        <td>名称</td>
        <td>地址</td>
        <td>电话</td>
        <td>编辑</td>
        <td>删除</td>
    </tr>
    <%
        List list=(List)request.getAttribute("list");
        for(int i=0;i<list.size();i++){
    %>
    <tr>
        <%
            Resume user=(Resume)list.get(i);
        %>
        <td><%=user.getId() %></td>
        <td><%=user.getName() %></td>
        <td><%=user.getAddress() %></td>
        <td><%=user.getPhone() %></td>
        <td><a href="resume/update?id=<%=user.getId()%>">编辑</a></td>
        <td><a href="resume/del?id=<%=user.getId() %>">删除</a></td>
    </tr>
    <%} %>
</table>


</body>
</html>
