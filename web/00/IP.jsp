<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IP</title>
</head>
<body>
<%
    System.out.println("Your IP address is " + request.getRemoteAddr());
    out.println("Your IP address is " + request.getRemoteAddr());
%>
</body>
</html>
