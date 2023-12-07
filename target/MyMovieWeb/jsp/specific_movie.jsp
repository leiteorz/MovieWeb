<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<c:set var="movie" value="${movie}"/>
<head>
    <title>${movie.name}</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/head.css">
    <link rel="stylesheet" type="text/css" href="jsp/css/specific.css">
</head>

<script>
    function watchMovie(url){
        window.location.href = url;
    }
    function addCollect(movieId){
        window.location.href = "add_collect.do?movieId=" + movieId;
    }
    function cancelCollect(movieId){
        window.location.href = "cancel_collect.do?movieId=" + movieId;
    }
</script>

<body>
    <%--电影网站上面的导航栏--%>
    <header class="bg-header">
        <div id="top">
            <img src="img/film_logo.png" class="logo" alt="logo" style="margin-left: 0px"/>
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

    <div class="all-container" style="margin-top: 80px">
        <div class="container">
            <h1 style="margin-top: 20px">${movie.name}</h1>
            <%--年份,国家,种类--%>
            <div class="movie-tag-container">
                <div class="movie-tag">${movie.year}年</div>
                <div class="movie-tag">${movie.country}</div>
                <div class="movie-tag">${movie.type}</div>
            </div>

            <div class="des">
                <div class="des-container">
                    <div style="font-weight: bolder;white-space: nowrap">简介：</div>
                    <div class="info">
                        ${movie.description}
                    </div>
                </div>
                <%--导演--%>
                <div class="des-container">
                    <div style="font-weight: bolder">导演：</div>
                    <div>${movie.director}</div>
                </div>
                <%--主演--%>
                <div class="des-container">
                    <div style="font-weight: bolder">主演：</div>
                    <div>${movie.actor}</div>
                </div>
                <%--备注--%>
                <div class="des-container" style="margin-bottom: 20px">
                    <div style="font-weight: bolder">备注：</div>
                    <div>${movie.language}</div>
                </div>
            </div>
        </div>

        <img src="${movie.image}" class="movie-img">
    </div>

    <input type="button" class="watch_button" value="立即观看" onclick="watchMovie('${movie.url}')">
    <c:if test="${!isCollect}">
        <input type="button" class="watch_button" value="收藏" onclick="addCollect(${movie.id})">
    </c:if>
    <c:if test="${isCollect}">
        <input type="button" class="watch_button" value="已收藏" onclick="cancelCollect(${movie.id})">
    </c:if>
</body>
</html>
