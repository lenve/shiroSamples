<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: sang
  Date: 2018/5/28
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登录成功！</h1>
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
<shiro:lacksRole name="admin">
    用户不具备admin角色
</shiro:lacksRole>
<hr>
<shiro:lacksRole name="user">
    用户不具备user角色
</shiro:lacksRole>
<hr>
<shiro:lacksPermission name="book:info">
    用户不具备book:info权限
</shiro:lacksPermission>
<hr>
<shiro:lacksPermission name="user:delete">
    用户不具备user:delete权限
</shiro:lacksPermission>
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
</body>
</html>
