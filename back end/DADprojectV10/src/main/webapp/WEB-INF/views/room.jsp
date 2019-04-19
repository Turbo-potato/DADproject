
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Room</title>
    <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="_token" content="UP7kIiEBuJtkEAeEpzLcQNjExoXg1tPZ8JOXCiD2">
    <style><%@include file="../../resources/css/bootstrap.min.css"%></style>
    <style><%@include file="../../resources/css/style.css"%></style>
    <style><%@include file="../../resources/css/bootstrap-datepicker3.min.css"%></style>
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
            <a class="navbar-brand" href="/" style="    padding-top: 10px;">
                <img src="http://www.iitu.kz/img/logo.png" alt=""/>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="nav_href" href="/my">My schedule</a>
                </li>
                <li>
                    <a href="/admin">Admin page</a>
                </li>
                <li><a href="">Exit</a></li>
            </ul>
        </div>
    </div>
</nav>

<header>
    <h1 class="text-center ">Room 226</h1>
</header>


<section class="main">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="panel-body" id="rooms">
                    <div class="row rooms_row">
<div class="col-xs-6 col-md-3 room floor_2">
    <a href="#226">
        <span class="image" style="background-image: url('http://www.iitu.kz/upload/News/full/News-image-temp15363-0.jpg')"></span>
    </a>
    <div class="info white_with_shadow">
        <div class="row">
            <div class="col-xs-5 number">
                <p>226</p>
            </div>
            <div class="col-xs-5 name"><p>Laboratory <a href="#"></a></p></div>
            <div class="col-xs-2 link"> <p>
                <a href="#226">
                    <i class="go_link"></i>
                </a>
            </p>
            </div>
        </div>
    </div>
</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<div class="container">
    <div class="row">
<form method="post" action="/editRoom" class="form col-md-6">
    <label>Name</label>
    <input type="text" name="name" class="form-control" value="${room.name}">
    <label>Description</label>
    <input type="text" name="description" class="form-control" value="${room.description}">
    <label>Computers</label>
    <input type="text" name="computers" class="form-control" value="${room.computers}">
    <label>Seats</label>
    <input type="number" name="seats" class="form-control" value="${room.seats}">
    <label>Floor</label>
    <input type="number" name="floor" class="form-control" value="${room.floor}">
    <label>Has projector</label>
    <br><br>
    <select name="hasProjector">
        <option value="${room.hasProjector}" selected>default</option>
        <option value="1">yes</option>
        <option value="0">no</option>
    </select>
    <input type="hidden" name="id" class="form-control" value="${room.id}">
    <br><br>
    <button type="submit" class="badge-primary">Save settings</button>
</form>
    </div>
</div>
</body>
</html>
