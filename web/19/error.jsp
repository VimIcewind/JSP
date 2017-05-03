<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录错误提示页面</title>
    <style type="text/css">
        body {
            color: #000;
            font-size: 14px;
            margin: 20px auto;
        }
        #message {
            text-align: center;
        }
    </style>
</head>
<body>
<div id="message">
    登陆失败。<br/>
    错误提示：
    <%
        Object obj = request.getAttribute("msg");
        if (obj != null) {
            out.println(obj.toString());
        } else {
            out.println("无");
        }
    %>
    您提交的信息为:<br/>
    用户名：<%= request.getParameter("uname") %><br/>
    密码：<%= request.getParameter("upwd") %><br/>
    <a href="<%= request.getContextPath() %>/19/login.jsp">返回登录页面</a>
</div>
</body>
</html>
