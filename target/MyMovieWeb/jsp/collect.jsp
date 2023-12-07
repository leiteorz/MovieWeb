<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>我的收藏</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/film_item.css">
</head>

<%--点击事件--%>
<script>
    function toMovieDetail(movieId){
        window.location.href = "specific_movie.do?movieId=" + movieId;
    }
</script>

<body>
    <h1 style="margin-left: 20px;margin-top: 20px">我的收藏</h1>
    <c:forEach var="movie" items="${collectList}">
        <c:if test="${(loop.index - 1)%8 == 0}">
            <div style="clear:both;"></div>
        </c:if>
        <div class="film-item" onclick="toMovieDetail(${movie.id})" style="margin-top: 35px">
            <div class="film-img">
                <img src="${movie.image}"/>
                <div style="text-align: center;margin-top: 10px">${movie.name}</div>
            </div>
        </div>
    </c:forEach>
</body>
</html>
