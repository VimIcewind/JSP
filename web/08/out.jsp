<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/1
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page buffer="10kb" %>
<html>
<head>
    <title>out</title>
</head>
<body>
<%
    out.println("jikexueyuan");
    out.print("darkmi");
    out.newLine();
    out.println("<br/>");
    out.flush();
//    out.clearBuffer();
    out.clear();
    out.println("获取当前缓冲区大小：" + out.getBufferSize());
    out.println("<br/>");
    out.println("当前缓冲区剩余字节数目：" + out.getRemaining());
%>
</body>
</html>
