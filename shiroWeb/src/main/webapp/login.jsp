<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: sang
  Date: 2018/5/28
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登录</h1>
<shiro:guest>
    欢迎【游客】访问!
</shiro:guest>
<hr>
<shiro:user>
    欢迎【<shiro:principal/>】访问!
</shiro:user>
<hr>
<shiro:authenticated>
    用户【<shiro:principal/>】身份认证通过，不是通过Remember Me认证!
</shiro:authenticated>
<hr>
<shiro:notAuthenticated>
    用户未进行身份认证
</shiro:notAuthenticated>
<hr>
<h3><a href="/logout">注销</a></h3>
<shiro:hasRole name="admin">
    <h3><a href="/admin.jsp">admin.jsp</a></h3>
</shiro:hasRole>
<shiro:hasAnyRoles name="user,aaa">
    <h3><a href="/user.jsp">user.jsp</a></h3>
</shiro:hasAnyRoles>
<shiro:hasPermission name="book:info">
    <h3><a href="/bookinfo.jsp">bookinfo.jsp</a></h3>
</shiro:hasPermission>
<shiro:hasPermission name="user:info">
    <h3><a href="/userinfo.jsp">userinfo.jsp</a></h3>
</shiro:hasPermission>
<hr>
<form action="/login" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2">${error}</td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
</body>
</html>
