<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/2
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.setHeader("refresh", "2;URL=welcome.jsp");
%>
