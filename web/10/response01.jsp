<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setIntHeader("Refresh", 2);
    out.println("date is " + new java.util.Date().toString() + "<br/>");
%>
</body>
</html>
