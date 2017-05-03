<%--
  Created by IntelliJ IDEA.
  User: hwd
  Date: 2015/10/4
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
    <style type="text/css">
        body {
            color: #000;
            font-size: 14px;
            margin: 200px auto;
        }
    </style>
    <script type="text/javascript">
        function check(form) {
            if (document.forms.loginForm.uname.value == "") {
                alert("请输入用户名！");
                document.forms.loginForm.uname.focus();
                return false;
            }
            if (document.forms.loginForm.upwd.value == "") {
                alert("请输入密码！");
                document.forms.loginForm.upwd.focus();
                return false;
            }
        }
    </script>
</head>
<body>
<form action="<%= request.getContextPath() %>/loginServlet19" method="post" name="loginForm" >
    <table border="1" cellspacing="0" cellpadding="5" bordercolor="silver" align="center">
        <tr>
            <td colspan="2" align="center" bgcolor="#E8E8E8">用户登录</td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="uname"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="upwd"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="submit" onclick="return check(this);"/>
                <input type="reset" name="reset"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
