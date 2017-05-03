<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>JSTL sql:setDataSource Tag</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://vimemacs.com/jsp_db"
                   user="root"  password="Vim&Emacs"/>

<sql:query dataSource="${snapshot}" sql="select * from tbl_user" var="result" />

</body>
</html>
