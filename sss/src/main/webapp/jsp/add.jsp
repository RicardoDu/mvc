<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page import="com.lagou.edu.pojo.*" %>
<html>
<head>
    <base href="<%=basePath%>">

    <title>编辑</title>

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
<div align="center" style="border: 2px ; border-color: black;">
    <%
        System.out.println(request.getAttribute("data"));
        Resume user = (Resume) request.getAttribute("data");
        if (user == null) {
            user = new Resume();
            user.setName("");
            user.setAddress("");
            user.setPhone("");
        }
    %>
    <form action="<%=basePath%>resume/save" method="post">
        <table>
            <tr>
                <td colspan="2">编辑窗口</td>
            </tr>
            <tr>
                <td>名称:</td>
                <td><input type="text" name="name" value=<%=user.getName()%>>
                </td>
            </tr>
            <tr>
                <td>地址:</td>
                <td><input type="text" name="address" value=<%=user.getAddress() %>>
                </td>
            </tr>
            <tr>
                <td>电话:</td>
                <td><input type="text" name="phone" value=<%=user.getPhone() %>>
                </td>
            </tr>
            <% if (user.getId() != null) {
                  Long  id = user.getId();%>
                <tr style="display: none;">
                    <td>id:</td>
                    <td><input type="text" name="id" value=<%=id %>>
                    </td>
                </tr>
            <%}%>
            <tr>
                <td colspan="2"><input type="submit" value="提交"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>