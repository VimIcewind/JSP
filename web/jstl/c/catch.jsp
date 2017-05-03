<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>c:catch 标签实例</title>
</head>
<body>

<c:catch var="catchException">
    <% int x = 5 / 0;%>
</c:catch>

<c:if test="${catchException != null}">
    <p>The exception is : ${catchException} <br/>
        There is an exception: ${catchException.message}</p>
</c:if>

</body>
</html>
