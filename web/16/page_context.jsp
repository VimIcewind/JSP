<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    JspWriter myOut = pageContext.getOut();
    myOut.println("Hello, world!");

    pageContext.setAttribute("VimIcewind", "jikexueyuan", pageContext.SESSION_SCOPE);

    String value = session.getAttribute("VimIcewind").toString();
    out.println(value);
    out.println("<br/>");
%>
</body>
</html>
