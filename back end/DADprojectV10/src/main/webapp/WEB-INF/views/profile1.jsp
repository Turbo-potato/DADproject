<!doctype html>
<html lang="ru">
<!-- <base href="/"/> -->
<head>
   <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
   
    <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/vendor/bootstrap/css/style.css" rel="stylesheet">
    <link href="../resources/vendor/bootstrap/css/bootstrap-datepicker3.min.css" rel="stylesheet">
    <link href="http://www.iitu.kz/css/font-awesome.min.css" rel="stylesheet">
    <meta charset="utf-8">
    <title>Booking</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="_token" content="UP7kIiEBuJtkEAeEpzLcQNjExoXg1tPZ8JOXCiD2">
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
    <h1 class="text-center ">Booking audithory</h1>
</header>

<div class="container" style="display: flex; flex-direction: row;">

    <!-- edit form column -->
  
     <div>
        <form action="/changeProfile" method="post">
        <div class="col-md-12">
          <h1>Edit Profile</h1>
      <h3>Personal info</h3></div>

        <div class="form-group col-md-7">
          <label class="col-lg-6 control-label">Login:</label>
          <div class="col-lg-10">
            <input class="form-control" value="${sesUser.login}" name="login" type="text">
          </div>

        </div>
        <div class="form-group col-md-7">
          <label class="col-lg-6 control-label">NickName:</label>
          <div class="col-lg-10">
            <input class="form-control" value="${sesUser.nickname}" name="nickname" type="text">
          </div>
        </div>


    <div class="form-row">
    </div>

    <div class="form-row">
        <!--
        <div class="form-group col-md-7">
          <label class="col-md-3 control-label">Username:</label>
          <div class="col-md-10">
            <input class="form-control" value="Danila" type="text">
          </div>
        </div>
        -->
        <div class="form-group col-md-7">
          <label class="col-md-3 control-label">Password:</label>
          <div class="col-md-10">
            <input class="form-control" value="admin" name="password" type="password">
          </div>
        </div>
        <div class="form-group col-md-7">
          <label class="col-md-10 control-label">Confirm password:</label>
          <div class="col-md-10">
            <input class="form-control" value="admin" type="password">
          </div>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-7">
          <label class="col-md-3 control-label"></label>
          <div class="col-md-10">
            <button class="btn custom_btn" type="submit">Save</button>
            <span></span>
            <button class="btn custom_btn" href="#" onclick="">Cancel</button>
          </div>
        </div>
    </div>
      </form>
  <div>
    <img src="https://cdn.discordapp.com/attachments/290039438602534912/568405052314877962/aliSquare.jpg" style="display: block; align: flex-start; " width="350" height="350">
    <div>
          <button style="margin-top: 10px; margin-left: 140px" class="btn custom_btn"> Load photo</button>
    </div>
  </div>
     </div>    <!-- </div> -->
  </div>
  <div>
   
    <div>
          
    </div>
  </div>
     </div>    <!-- </div> -->
  </div>
  <footer>
<div style="position: absolute; bottom: 0; width: 100%; text-align: center; background-color: white;" class="footer-copyright"><div class="wrap">
  <p>Copyright © 2019 DADA Limited. All Rights Reserved. Booking authditory is a registered trademark.</p><p>
  <a href="https://github.com/Turbo-potato/DADAproject">Our Github project</a> by <u><a href="team.jsp" target="_blank" rel="nofollow">DADA-Team</a></u>
</p></div></div>
</footer>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/jquery/jquery.min.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor\bootstrap\js/bootstrap.min.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap-datepicker.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap-datepicker.ru.min.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/list.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/app.js"></script>

</body>
</html>
