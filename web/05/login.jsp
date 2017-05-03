<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/1
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    out.println(userName);
    out.println(password);
%>
</body>
</html>
