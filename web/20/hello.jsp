<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/1
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
JSP表达式输出: <%=str%>
<br/>
<%!
    String str = "Hello, World!";
%>
<%
//    String str = "Hello, World!";
    out.println(str);
%>
<br/>
<br/>
<a href="<%= request.getContextPath() %>/20/index.jsp">index.jsp</a>
</body>
</html>
