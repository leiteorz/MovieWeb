<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>用户中心</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/user_center.css">
</head>
<body>
  <%
      String userName = request.getParameter("username");
  %>
  <div id="user-container">
    <h2>用户中心</h2>
    <form action="user_center.do" style="width: 100%" method="post">
        <label for="userName">用户名:</label>
        <input type="text" id="userName" name="userName" value="<%= userName%>" required>

        <label for="newPwd">新密码:</label>
        <input type="text" id="newPwd" name="newPwd" required>

        <label for="oldPwd">旧密码:</label>
        <input type="text" id="oldPwd" name="oldPwd" required>

        <input type="submit" value="保存修改">
    </form>
  </div>
</body>
</html>
