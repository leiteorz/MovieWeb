<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>添加电影</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/add_movie.css">

</head>
<body>
    <div id="add-container">
        <h2>添加电影</h2>
        <form action="add_movie.do" style="width: 100%" method="post">
            <label for="name">电影名:</label>
            <input type="text" id="name" name="name" required>
            <label for="director">导演:</label>
            <input type="text" id="director" name="director" required>
            <label for="actor">主演:</label>
            <input type="text" id="actor" name="actor" required>
            <label for="year">年份:</label>
            <input type="text" id="year" name="year" required>
            <label for="country">国家:</label>
            <input type="text" id="country" name="country" required>
            <label for="length">长度:</label>
            <input type="text" id="length" name="length" required>
            <label for="image">图片:</label>
            <input type="text" id="image" name="image" required>
            <label for="url">链接:</label>
            <input type="text" id="url" name="url" required>
            <label for="type">种类:</label>
            <input type="text" id="type" name="type" required>
            <label for="description">简介:</label>
            <input type="text" id="description" name="description" required>

            <input type="submit" value="添加">
        </form>
    </div>
</body>
</html>
