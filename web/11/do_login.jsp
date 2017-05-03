<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 10:40
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
    if (userName != null && password != null) {
        session.setAttribute("userName", userName);
        response.setHeader("refresh", "2;URL=welcome.jsp");
    }
%>
</body>
</html>
