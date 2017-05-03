<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/1
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单录入信息</title>
</head>
<body>
<form action="do_register.jsp" method="post">
    用户名：<input type="text" name="userName"/><br/>
    技能：
    <input type="checkbox" name="skills" value="java"/>java
    <input type="checkbox" name="skills" value="python"/>python
    <input type="checkbox" name="skills" value="ruby"/>ruby
    <input type="checkbox" name="skills" value="golang"/>golang
    <br/>
    <input type="submit" value="提交"/>
    <input type="reset" value="重置"/>
</form>
</body>
</html>
