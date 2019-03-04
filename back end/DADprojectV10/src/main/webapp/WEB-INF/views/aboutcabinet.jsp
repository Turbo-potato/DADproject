<!doctype html>
<html lang="ru">
<base href="/"/>
<head>
  <meta charset="utf-8">
  <title>Booking</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <meta name="_token" content="UP7kIiEBuJtkEAeEpzLcQNjExoXg1tPZ8JOXCiD2">
</head>

<body>

<style><%@include file="/WEB-INF/views/vendor/bootstrap/css/bootstrap.min.css"%></style>
<style><%@include file="/WEB-INF/views/vendor/bootstrap/css/style.css"%></style>
<style><%@include file="/WEB-INF/views/vendor/bootstrap/css/bootstrap-datepicker3.min.css"%></style>
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
          <a href="#">John Doe</a>
        </li>
        <li><a href="">Exit</a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <h1 class="text-center ">Booking authditory</h1>
</header>
<section class="main">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <div class="panel-body">
          <div class="btn-group pull-right " role="group">
            <a href="#AllFloor" class="btn btn-ourhref">All floor</a>
            <a href="#1floor" class="btn btn-default btn-default floor_button">1 floor</a>
            <a href="#2floor" class="btn btn-default btn-default floor_button">2 floor</a>
            <a href="#3floor" class="btn btn-default btn-default floor_button">3 floor</a>
            <a href="#4floor" class="btn btn-default btn-default floor_button">4 floor</a>
            <a href="#5floor" class="btn btn-default btn-default floor_button">Sport Zone</a>
            <a href="#5floor" class="btn btn-default btn-default floor_button">Knowledge Building</a>
            <a href="#6floor" class="btn btn-default btn-default floor_button">Atrium</a>
            <a href="#7floor" class="btn btn-default btn-default floor_button">Creative Zone</a>
            <a href="#8floor" class="btn btn-default btn-default floor_button">MEDIA LAB</a>
          </div>
        </div>
      </div>
    </div>
      <div>
        <h1>Cabinet 301</h1>
        <img src="https://storage.tpu.ru/thumbnail/52dd837894612e2bc75c88478936f723/bf796d445258c806/3b00afd0b3231589.jpg" width="50%" alt="Responsive image">
        <table class="table mt-3">

          <thead>
          <tr>
            <th class="col"></th>
          <th class="col">Time</th>
          <th class="col">Status</th>
          <th class="col">Book</th>
          </tr>
          </thead>
          <tbody>
            <tr>
                <th scope="row">1</th>
                <td>8:00</td>
                <td>Free</td>
                <td><button class="btn btn-ourhref">Book</button></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>9:00</td>
              <td>Free</td>
              <td><button class="btn btn-ourhref">Book</button></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>10:00</td>
              <td>Booked</td>
            </tr>
            <tr>
              <th scope="row">4</th>
              <td>12:00</td>
              <td>Free</td>
              <td><button class="btn btn-ourhref">Book</button></td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>13:10</td>
              <td>Booked</td>
            </tr>
            <tr>
              <th scope="row">6</th>
              <td>14:10</td>
              <td>Free</td>
              <td><button class="btn btn-ourhref">Book</button></td>
            </tr>
            <tr>
              <th scope="row">7</th>
              <td>15:10</td>
              <td>Free</td>
              <td><button class="btn btn-ourhref">Book</button></td>
            </tr>
          </tbody>
        </table>
      </div>
  </div>
</section>

<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/bootstrap-datepicker.js"></script>
<script src="/js/bootstrap-datepicker.ru.min.js"></script>
<script src="/js/list.js"></script>
<script src="/js/app.js"></script>
<script type="text/javascript">
    function showFloor(floor,e){
        $(e).removeClass('btn-default');
        $('.floor_button').removeClass('btn-success');
        $('.floor_button').addClass('btn-default');
        $(e).addClass('btn-success');
        $.get( "/floor/" + floor, function( data ) {
            $('#rooms').html(data);
        });
    }
</script>

</body>
</html>
