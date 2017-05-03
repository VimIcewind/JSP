<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    Object obj = application.getAttribute("counter");
    if (obj == null) {
        application.setAttribute("counter", new Integer(1));
        out.println("该页面被访问了1次。");
    } else {
       int counterValue = Integer.parseInt(obj.toString());
        counterValue++;
        out.println("该页面被访问了" + counterValue + "次<br/>");
        application.setAttribute("counter", counterValue);
    }
%>
</body>
</html>
