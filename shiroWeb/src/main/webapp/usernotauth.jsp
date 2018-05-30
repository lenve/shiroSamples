<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: sang
  Date: 2018/5/30
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<shiro:notAuthenticated>
    用户未进行身份认证
</shiro:notAuthenticated>
<shiro:guest>
    guest
</shiro:guest>
</body>
</html>
