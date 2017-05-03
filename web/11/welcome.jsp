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
<% if (session.getAttribute("userName") != null) { %>
    Welcome: <%=session.getAttribute("userName") %>
    <a href="logout.jsp">Logout</a>
<% } else { %>
    Please login.
    <a href="login.jsp">Login</a>
<% } %>

<% if (session.isNew()) { %>
    <br/>
    Welcome new user!
<% } else { %>
    Welcome old user!
<% } %>
</body>
</html>
