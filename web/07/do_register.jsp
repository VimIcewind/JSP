<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/1
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册信息处理</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    out.println(userName);
    out.println("<br/>");
    out.println(password);
%>
<br/>
<jsp:useBean id="user" class="com.vimemacs.entity.UserEntity"></jsp:useBean>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="password"/>
<jsp:getProperty name="user" property="userName"/>
<br/>
<jsp:getProperty name="user" property="password"/>
</body>
</html>
