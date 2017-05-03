<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url value="/index.jsp" var="myURL">
    <c:param name="trackingId" value="1234"/>
    <c:param name="reportType" value="summary"/>
</c:url>
<c:import url="${myURL}"/>
