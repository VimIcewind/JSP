<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>c:forEach 标签实例</title>
</head>
<body>
<c:forEach var="i" begin="1" end="5">
    <p>Item <c:out value="${i}"/></p>
</c:forEach>
</body>
</html>
