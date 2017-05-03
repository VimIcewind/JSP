<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
Server Info: <%= application.getServerInfo() %><br/>
Application Name: <%= application.getServletContextName() %><br/>
<%-- Server Name: <%= application.getVirtualServerName() %><br/> -->
</body>
</html>
