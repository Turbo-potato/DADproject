<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<html>
<head>
    <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/vendor/bootstrap/css/style.css" rel="stylesheet">
    <link href="../resources/vendor/bootstrap/css/bootstrap-datepicker3.min.css" rel="stylesheet">
    <link href="http://www.iitu.kz/css/font-awesome.min.css" rel="stylesheet">
    <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="_token" content="UP7kIiEBuJtkEAeEpzLcQNjExoXg1tPZ8JOXCiD2">
    <title>My Schedule</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">
                <img src="http://www.iitu.kz/img/logo.png" alt=""/>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="nav_href" href="/mySchedule?uid=${sesUser.id}">My schedule</a>
                </li>
                <li>
                    <a href="/profile1">${sesUser.nickname}</a>
                </li>
                <li><a href="/admin">Rooms</a></li>
                <li><a href="/login">Exit</a></li>
            </ul>
        </div>
    </div>
</nav>
<header>
    <h1 class="text-center ">My Schedule</h1>
</header>

<table class="table">
    <thead>
    <th scope="col">Room</th>
    <th scope="col">Start Time</th>
    <th scope="col">Finish Time</th>
    </thead>
    <tbody>
<c:forEach items="${myReserves}" var="reserve">
    <tr>
        <th scope="row">${reserve.roomName}</th>
        <td>${reserve.start_time}</td>
        <td>${reserve.finish_time}</td>
    </tr>
    </c:forEach>
</tbody>
</table>

<footer>
    <div style="position: absolute; bottom: 0; width: 100%; text-align: center; background-color: white;" class="footer-copyright"><div class="wrap">
        <p>Copyright © 2019 DADA Limited. All Rights Reserved. Booking authditory is a registered trademark.</p><p>
        <a href="https://github.com/Turbo-potato/DADAproject">Our Github project</a> by <u><a href="team.jsp" target="_blank" rel="nofollow">DADA-Team</a></u>
    </p></div></div>
</footer>
</body>
</html>
