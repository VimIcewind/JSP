<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/5
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
首页
<br/>
<br/>
<a href="<%= request.getContextPath() %>/20/hello.jsp">hello.jsp</a>
<br/>
<br/>

<%
    String flag = "";
    Object obj = session.getAttribute("flag");

    if (obj != null) {
        flag = obj.toString();
    }
    if (flag.equals("login_success")) {
%>
    <a href="<%= request.getContextPath() %>/logoutServlet20">退出</a>
    <br/>
<% } else { %>
    <a href="<%= request.getContextPath() %>/20/login.jsp">登录</a>
<% } %>
</body>
</html>
