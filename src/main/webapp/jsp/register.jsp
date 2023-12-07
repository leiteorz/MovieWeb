<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/register.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
  <div id="register-container">
    <h2>注册</h2>
    <form action="register.do" method="post" style="width: 100%">
      <label for="uid">账户:</label>
      <input type="text" id="uid" name="uid" required>

      <label for="user_name">用户名:</label>
      <input type="text" id="user_name" name="user_name" required>

      <label for="gender">性别:</label>
      <select class="form-control" name="gender" id="gender">
        <option value="男">男</option>
        <option value="女">女</option>
      </select>

      <label for="pwd">密码:</label>
      <input type="password" id="pwd" name="pwd" required>

      <label for="re_pwd">重复密码:</label>
      <input type="password" id="re_pwd" name="re_pwd" required>

      <input type="submit" value="注册">
    </form>
  </div>
</body>
</html>
