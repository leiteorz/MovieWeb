<%@ page import="java.util.Base64" %>
<%@ page import="model.Movie" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<base href="http://localhost:8080/MyMovieWeb_war/"/>

<html>
<head>
    <title>电影网首页</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/head.css">
    <link rel="stylesheet" type="text/css" href="jsp/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="jsp/css/home-banner.css">
    <link rel="stylesheet" type="text/css" href="jsp/css/film_item.css">
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
    <%--首页轮播图--%>
    <h1 style="color: darkblue; font-size: 24px; margin-top: 80px; margin-left: 20px">推荐</h1>
    <div class="swiper home-banner">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="./img/banner_1.png"/>
            </div>
            <div class="swiper-slide">
                <img src="./img/banner_2.png"/>
            </div>
            <div class="swiper-slide">
                <img src="./img/banner_3.png"/>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <!-- Swiper JS -->
    <script src="./js/swiper.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".home-banner", {
            pagination: {
                el: ".swiper-pagination",
                loop: true,
                autoplay: 1500
            },
        });
    </script>

    <%--喜剧--%>
    <h1 style="color: darkblue; font-size: 24px; margin-top: 10px; margin-left: 20px">喜剧</h1>
    <div class="film-block">
        <c:if test="${not empty funnyMovies}">
            <c:set var="firstFunnyMovie" value="${funnyMovies[0]}"/>
            <div class="film-item clearfix" onclick="toMovieDetail(${firstFunnyMovie.id})">
                <div class="film-img">
                    <img src="${firstFunnyMovie.image}"/>
                    <div style="text-align: center;margin-top: 10px">${firstFunnyMovie.name}</div>
                </div>
             </div>
        </c:if>
        <c:if test="${not empty funnyMovies}">
            <c:forEach var="movie" items="${funnyMovies}" begin="1">
                <div class="film-item" onclick="toMovieDetail(${movie.id})">
                    <div class="film-img">
                        <img src="${movie.image}"/>
                        <div style="text-align: center;margin-top: 10px">${movie.name}</div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>

    <%--动作--%>
    <h1 style="color: darkblue; font-size: 24px; margin-top: 40px; margin-left: 20px">动作</h1>
    <div class="film-block">
        <c:if test="${not empty actionMovies}">
            <c:set var="firstActionMovie" value="${actionMovies[0]}"/>
            <div class="film-item clearfix" onclick="toMovieDetail(${firstActionMovie.id})">
                <div class="film-img">
                    <img src="${firstActionMovie.image}"/>
                    <div style="text-align: center;margin-top: 10px">${firstActionMovie.name}</div>
                </div>
            </div>
        </c:if>
        <c:if test="${not empty actionMovies}">
            <c:forEach var="movie" items="${actionMovies}" begin="1">
                <div class="film-item" onclick="toMovieDetail(${movie.id})">
                    <div class="film-img">
                        <img src="${movie.image}"/>
                        <div style="text-align: center;margin-top: 10px">${movie.name}</div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>

    <%--科幻--%>
    <h1 style="color: darkblue; font-size: 24px; margin-top: 40px; margin-left: 20px">科幻</h1>
    <div class="film-block">
        <c:if test="${not empty scienceMovies}">
            <c:set var="firstScienceMovie" value="${scienceMovies[0]}"/>
            <div class="film-item clearfix" onclick="toMovieDetail(${firstScienceMovie.id})">
                <div class="film-img">
                    <img src="${firstScienceMovie.image}"/>
                    <div style="text-align: center;margin-top: 10px">${firstScienceMovie.name}</div>
                </div>
            </div>
        </c:if>
        <c:if test="${not empty scienceMovies}">
            <c:forEach var="movie" items="${scienceMovies}" begin="1">
                <div class="film-item" onclick="toMovieDetail(${movie.id})">
                    <div class="film-img">
                        <img src="${movie.image}"/>
                        <div style="text-align: center;margin-top: 10px">${movie.name}</div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>

    <%--动画--%>
    <h1 style="color: darkblue; font-size: 24px; margin-top: 35px; margin-left: 20px">动画</h1>
    <div class="film-block">
        <c:if test="${not empty cartoonMovies}">
            <c:set var="firstCartoonMovie" value="${cartoonMovies[0]}"/>
            <div class="film-item clearfix" onclick="toMovieDetail(${firstCartoonMovie.id})">
                <div class="film-img">
                    <img src="${firstCartoonMovie.image}"/>
                    <div style="text-align: center;margin-top: 10px">${firstCartoonMovie.name}</div>
                </div>
            </div>
        </c:if>
        <c:if test="${not empty cartoonMovies}">
            <c:forEach var="movie" items="${cartoonMovies}" begin="1">
                <div class="film-item" onclick="toMovieDetail(${movie.id})">
                    <div class="film-img">
                        <img src="${movie.image}"/>
                        <div style="text-align: center;margin-top: 10px">${movie.name}</div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>

    <%--悬疑--%>
    <h1 style="color: darkblue; font-size: 24px; margin-top: 40px; margin-left: 20px">悬疑</h1>
    <div class="film-block">
        <c:if test="${not empty suspenseMovies}">
            <c:set var="firstSuspenseMovie" value="${suspenseMovies[0]}"/>
            <div class="film-item clearfix" onclick="toMovieDetail(${firstSuspenseMovie.id})">
                <div class="film-img">
                    <img src="${firstSuspenseMovie.image}"/>
                    <div style="text-align: center;margin-top: 10px">${firstSuspenseMovie.name}</div>
                </div>
            </div>
        </c:if>
        <c:if test="${not empty suspenseMovies}">
            <c:forEach var="movie" items="${suspenseMovies}" begin="1">
                <div class="film-item" onclick="toMovieDetail(${movie.id})">
                    <div class="film-img">
                        <img src="${movie.image}"/>
                        <div style="text-align: center;margin-top: 10px">${movie.name}</div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>
</body>
</html>
