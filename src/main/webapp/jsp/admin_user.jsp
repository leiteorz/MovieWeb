<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>管理界面</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/admin_user.css">
</head>

<script>
    function addMovie(){
        window.location.href = "jsp/add_movie.jsp"
    }
    function queryMovie(){
        window.location.href = "update_movie.do"
    }
</script>

<body>
    <div id="admin_container">
        <h2>管理界面</h2>
        <input type="button" value="添加电影" onclick="addMovie()">
        <input type="button" value="查看电影" onclick="queryMovie()">
    </div>
</body>
</html>
