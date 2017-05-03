<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title></title>
</head>
<body>
异常描述信息：<br/>
<%
    out.println(exception.getMessage());
%>
<br/>
exception对象的字符串描述：<br/>
<%
    out.println(exception.toString());
%>
<br/>
<%
    exception.printStackTrace();
%>
</body>
</html>
