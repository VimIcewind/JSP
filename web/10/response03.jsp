<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    Cookie myCookie = new Cookie("darkmi", "jikexueyuan");
    myCookie.setMaxAge(3600);
    response.addCookie(myCookie);
%>
</body>
</html>
