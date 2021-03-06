<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="java.util.Date,java.text.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>JSTL sql:transaction Tag</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://vimemacs.com/jsp_db"
                   user="root"  password="Vim&Emacs"/>

<%
    Date DoB = new Date("2001/12/16");
    int studentId = 100;
%>

<sql:transaction dataSource="${snapshot}">
    <sql:update var="count">
        UPDATE Students SET last = 'Ali' WHERE Id = 102
    </sql:update>
    <sql:update var="count">
        UPDATE Students SET last = 'Shah' WHERE Id = 103
    </sql:update>
    <sql:update var="count">
        INSERT INTO Students
        VALUES (104,'Nuha', 'Ali', '2010/05/26');
    </sql:update>
</sql:transaction>

<sql:query dataSource="${snapshot}" var="result">
    SELECT * from Students;
</sql:query>

<table border="1" width="100%">
    <tr>
        <th>Emp ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>DoB</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.first}"/></td>
            <td><c:out value="${row.last}"/></td>
            <td><c:out value="${row.dob}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
