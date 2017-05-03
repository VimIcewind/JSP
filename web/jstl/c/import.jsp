<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>c:import 标签实例</title>
</head>
<body>
<c:import var="data" url="http://www.baidu.com" charEncoding="UTF-8"/>
<c:out value="${data}"/>
</body>
</html>
