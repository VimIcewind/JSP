<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    out.println("page对象的字符串: " + page.toString() + "<br/>");
    out.println(page.getClass() + "<br/>");
    out.println(page.hashCode() + "<br/>");
    //page.equals(obj):
%>
</body>
</html>
