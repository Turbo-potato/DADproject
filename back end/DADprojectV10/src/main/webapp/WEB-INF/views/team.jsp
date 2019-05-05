<!doctype html>
<html lang="ru">
<!-- <base href="/"/> -->
<head>
   <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <link href="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap/css/style.css" rel="stylesheet">
    <link href="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap/css/bootstrap-datepicker3.min.css" rel="stylesheet">
    <link href="http://www.iitu.kz/css/font-awesome.min.css" rel="stylesheet">
    <meta charset="utf-8">
    <title>Booking</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="_token" content="UP7kIiEBuJtkEAeEpzLcQNjExoXg1tPZ8JOXCiD2">
    <style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.colum {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 90%;
    display: block;
  }
}

.car {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.containe {
  padding: 0 16px;
}

.containe::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #800000;
  text-align: center;
  cursor: pointer;
}

.button:hover {
  background-color: #555;
}
</style>
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
                    <a class="nav_href" href="index1.jsp">My schedule</a>
                </li>
                <li>
                    <a href="profile.jsp">John Doe</a>
                </li>
                <li><a href="">Exit</a></li>
            </ul>
        </div>
    </div>
</nav>
<header>
    <h1 class="text-center ">Разыскиваются</h1>
</header>

<div class="row" style="margin-left: 15%; width: 70%">
  <div class="colum">
    <div class="car">
      <img src="res/danilaSquare.jpg" alt="Jane" height="350" style="width:100%">
      <div class="containe">
        <h2>Dan Xawdxawdx</h2>
        <p class="title">FrontEnd</p>
        <p>Использовал бутцтрап 3</p>
        <p>xawdxawdx@mail.ru</p>
        <p><button class="button">3000$</button></p>
      </div>
    </div>
  </div>

  <div class="colum">
    <div class="car">
      <img src="res/aliSquare.jpg" alt="Mike" height="350" style="width:100%">
      <div class="containe">
        <h2>Ali ZP</h2>
        <p class="title">DB manager</p>
        <p>Жестоко расправился с лагманом</p>
        <p>cockboring@example.com</p>
        <p><button class="button">А Али не платят</button></p>
      </div>
    </div>
  </div>
  <div class="colum">
    <div class="car">
      <img src="res/dias.jpg" alt="John" height="350" style="width:100%">
      <div class="containe">
        <h2>Dias Diegos</h2>
        <p class="title">BackENd</p>
        <p>Не пошел в кино, думал что шазам</p>
        <p>diegos@example.com</p>
        <p><button class="button">-5 reputation</button></p>
      </div>
    </div>
  </div>
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
