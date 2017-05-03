<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
sessionid: <%= session.getId() %><br/>
session creationtime: <%= new java.util.Date(session.getCreationTime()).toString() %><br/>
session lastaccessedtime: <%= new java.util.Date(session.getLastAccessedTime()).toString() %><br/>
session maxinactiveinterval: <%=session.getMaxInactiveInterval() %><br/>
</body>
</html>
