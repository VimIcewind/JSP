<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>c:forTokens 标签实例</title>
</head>
<body>
<c:forTokens items="Zara,nuha,roshy" delims="," var="name">
    <p><c:out value="${name}"/></p>
</c:forTokens>
</body>
</html>
