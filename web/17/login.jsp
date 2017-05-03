<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/loginServlet" method="get">
    userName:<input type="text" name="uname"/><br/>
    password:<input type="password" name="upwd"/><br/>
    <input type="submit" value="Login"/>
    <input type="reset" value="Reset"/>
</form>
</body>
</html>
