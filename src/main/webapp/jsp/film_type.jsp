<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<c:set var="type" value="${type}"/>

<html>
<head>
    <title>${type}</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/film_item.css">
    <link rel="stylesheet" type="text/css" href="jsp/css/head.css">
</head>

<%--点击事件--%>
<script>
    function toMovieDetail(movieId){
        window.location.href = "specific_movie.do?movieId=" + movieId;
    }
</script>

<body>
<%--电影网站上面的导航栏--%>
    <header class="bg-header">
        <div id="top">
            <img src="./img/film_logo.png" class="logo" alt="logo"/>
            <ul class="head-list">
                <li>
                    <a href="home.do">首页</a>
                </li>
                <li>
                    <a href="film_type.do?type=喜剧">喜剧</a>
                </li>
                <li>
                    <a href="film_type.do?type=动作">动作</a>
                </li>
                <li>
                    <a href="film_type.do?type=科幻">科幻</a>
                </li>
                <li>
                    <a href="film_type.do?type=动画">动画</a>
                </li>
                <li>
                    <a href="film_type.do?type=悬疑">悬疑</a>
                </li>
            </ul>
        </div>
        <%--用户登陆--%>
        <div id="user-header">
            <c:if test="${!isLogin}">
                <ul class="head-list">
                    <li>
                        <a href="jsp/login.jsp">登陆</a>
                    </li>
                    <li>
                        <a href="jsp/register.jsp">注册</a>
                    </li>
                </ul>
            </c:if>
            <c:if test="${isLogin}">
                <ul class="head-list">
                    <li>
                        <a href="jsp/user_center.jsp?username=${user.name}">${user.name}</a>
                    </li>
                    <li>
                        <a href="collect.do">收藏</a>
                    </li>
                </ul>
            </c:if>
            <img src="./img/user_logo.png" class="logo" alt="user_logo">
        </div>
    </header>

    <h1 style="margin-left: 20px; margin-top: 80px">${type}</h1>

    <c:forEach var="movie" items="${movieList}">
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
