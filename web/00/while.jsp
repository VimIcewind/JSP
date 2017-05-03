<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int fontSize; %>
<html>
<head><title>WHILE LOOP Example</title></head>
<body>
<% fontSize = 0; %>
<% while ( fontSize <= 3){ %>
<font color="green" size="<%= fontSize %>">
    JSP Tutorial
</font><br />
<% fontSize++; %>
<% } %>
</body>
</html>
