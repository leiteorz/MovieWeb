<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/login.css">
</head>
<body>
    <div id="login-container">
        <h2>登陆</h2>
        <form action="login.do" style="width: 100%" method="post">
            <label for="uid">账户:</label>
            <input type="text" id="uid" name="uid" required>

            <label for="password">密码:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="登陆">
        </form>
    </div>
</body>
</html>
