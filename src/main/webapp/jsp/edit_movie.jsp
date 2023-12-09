<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>修改电影</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/add_movie.css">
    <link rel="stylesheet" type="text/css" href="jsp/css/edit_movie.css">
</head>
<script>
  function deleteMovie(id){
      window.location.href = "delete_movie.do?movieId=" + id;
  }
</script>
<body>
    <div id="add-container">
          <h2>修改电影</h2>
          <form action="add_movie.do" style="width: 100%" method="post">
                <input type="hidden" id="movieId" name="movieId" value="${movie.id}">

                <label for="name">电影名:</label>
                <input type="text" id="name" name="name" value="${movie.name}" required>

                <label for="director">导演:</label>
                <input type="text" id="director" name="director" value="${movie.director}" required>

                <label for="actor">主演:</label>
                <input type="text" id="actor" name="actor" value="${movie.actor}" required>

                <label for="year">年份:</label>
                <input type="text" id="year" name="year" value="${movie.year}" required>

                <label for="country">国家:</label>
                <input type="text" id="country" name="country" value="${movie.country}" required>

                <label for="length">长度:</label>
                <input type="text" id="length" name="length" value="${movie.length}" required>

                <label for="image">图片:</label>
                <input type="text" id="image" name="image" value="${movie.image}" required>

                <label for="url">链接:</label>
                <input type="text" id="url" name="url" value="${movie.url}" required>

                <label for="type">种类:</label>
                <input type="text" id="type" name="type" value="${movie.type}" required>

                <label for="description">简介:</label>
                <input type="text" id="description" name="description" value="${movie.description}" required>

                <input type="submit" value="修改" style="background: deepskyblue">
                <input type="button" value="删除" style="background: lightcoral" onclick="deleteMovie(${movie.id})">
          </form>
    </div>
</body>
</html>
