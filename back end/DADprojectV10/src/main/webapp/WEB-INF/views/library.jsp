<!doctype html>
<html lang="ru">
<!-- <base href="/"/> -->
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
    <link href="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap/css/style.css" rel="stylesheet">
    <link href="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap/css/bootstrap-datepicker3.min.css" rel="stylesheet">
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
                    <a href="profile.jsp">John Doe</a>
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
                <div class="col-md-4 sidebar_left">
                    <div class="row">
                        <div class="col-md-12">

                            <img class="img-responsive" data-toggle="modal" id="main_image" data-target="#imageModal" src="http://www.iitu.kz/uploads/news/2013/may/3/IMG_9965.JPG" alt="">
                            <h1 class="room-id text-center white_with_shadow" data-selectedday="2019-03-14" data-room="129">№ 129 -Зал библиотеки</h1>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-xs-12 text-left">
                                    <ul class="list-group white_with_shadow passport">
                                        <li class="list-group-item custom-icon icon-chairs">
                                            Всего мест - 25
                                         </li>
                                            <li class="list-group-item custom-icon icon-computer">
                                            Компьютеров - 13</li><li class="list-group-item custom-icon">
                                                Проектор - Нету
                                            </li>
                                                                                                                                                            </ul>
                                </div>
                            </div>
                            <div class="datepicker white_with_shadow"></div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-xs-12 text-center">
                                    <a class="btn custom_btn" href="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/index1.jsp">К списку аудиторий</a>
                                    <button class="btn custom_btn" href="#" onclick="print();">Печать страницы</button>
                                </div>
                            </div>

                        </div>
                    </div>


                </div>
                <div class="col-md-8 sidebar_right">
                    <div class="row">
                        <div class="col-md-12">
                         <h1>Список брони на 14 марта 2019</h1>
                        </div>
                    </div><div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                        <h2>8:00 <button class="btn btn-reserve">Забронировать</button> </h2>
                                                <p>Свободно</p>
                                                 </div>
                                        <div class="content book_this" ы>
                                            <h2 style="color: #800000">8:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="8">8  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>
<button class="btn custom_btn" href="#" onclick="print();">Бронь</button>
                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <!-- <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div> -->
    </div>


</form>       </div>
                     </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                                                            <h2>9:00</h2>
                                                <p>Заблокировано</p>
                                                                                    </div>
                                        <div class="content book_this">
                                            <h2>9:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="9">9  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>
</form>                                        </div>
                                    </div>
                                </div><div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                    <h2>10:00</h2>
                                                <p>Заблокировано</p>
                                                         </div>
                                        <div class="content book_this">
                                            <h2>10:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="10">10  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>
                </div>
            </div>
            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>
</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                 <h2>11:00</h2>
                                                <p>Заблокировано</p>
                                                     </div>
                                        <div class="content book_this">
                                            <h2>11:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="11">11  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>
</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                        <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                <h2>12:00 <button class="btn btn-reserve">Забронировать</button> </h2>
                                                <p>Свободно</p>
                                                    </div>
                                        <div class="content book_this">
                                            <h2>12:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="12">12  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>


</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                 <h2>13:00</h2>
                                                <p>Заблокировано</p>
                                                    </div>
                                        <div class="content book_this">
                                            <h2>13:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="13">13  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>


</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                   <h2>14:00</h2>
                                                <p>Заблокировано</p>
                                                      </div>
                                        <div class="content book_this">
                                            <h2>14:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="14">14  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>


</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                 <h2>15:00</h2>
                                                <p>Заблокировано</p>
                                                     </div>
                                        <div class="content book_this">
                                            <h2>15:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="15">15  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>


</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                        <h2>16:00</h2>
                                                <p>Заблокировано</p>
                                                     </div>
                                        <div class="content book_this">
                                            <h2>16:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="16">16  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>
            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>

</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                    <h2>17:00</h2>
                                                <p>Заблокировано</p>
                                                         </div>
                                        <div class="content book_this">
                                            <h2>17:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="17">17  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>

</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                    <h2>18:00</h2>
                                                <p>Заблокировано</p>
                                                        </div>
                                        <div class="content book_this">
                                            <h2>18:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="18">18  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>
                </div>
            </div>
            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>
</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                    <h2>19:00</h2>
                                                <p>Заблокировано</p>
                                                        </div>
                                        <div class="content book_this">
                                            <h2>19:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="19">19  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>
                </div>
            </div>
            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>
</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  booked ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                                    <h2>20:00</h2>
                                                <p>Заблокировано</p>
                                                       </div>
                                        <div class="content book_this">
                                            <h2>20:00 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="20">20  </div>
                        <select name="minute" class="form-control reserve_time_minute">
                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>
</form>                                        </div>
                                    </div>
                                </div>                                                                                                                                       <div class="row event  free ">
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content ">
                                                 <h2>21:15
                    <button class="btn btn-reserve">Забронировать</button>                                                </h2>
                                                <p>Свободно</p>
                                                     </div>
                                        <div class="content book_this">
                                            <h2>21:15 - <em>Бронирование аудитории</em>
                                            </h2>
                                            <form class="form-inline booking_form" method="POST" action="#" id="booking">
    <div class="row">
        <div class="col-xs-8">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group title" style="display: inline-block">
                        <input name="title" type="text" class="form-control " placeholder="Тема встречи">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="">Время начала</label>
                        <div class="hour" data-hour="21">21  </div>
                        <select name="minute" class="form-control ">
                            <option value="15" selected="">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Длительность</label>
                        <select name="duration" class="form-control">
                            <option value="0" selected="">0 часов</option>
                            <option value="1">1 час</option>
                            <option value="2">2 часа</option>
                            <option value="3">3 часа</option>
                            <option value="4">4 часа</option>
                        </select>
                        <select name="duration_minute" class=" form-control">
                            <option value="0" selected="">0 минут</option>
                                                            <option value="10">10 минут</option>
                                                            <option value="11">11 минут</option>
                                                            <option value="12">12 минут</option>
                                                            <option value="13">13 минут</option>
                                                            <option value="14">14 минут</option>
                                                            <option value="15">15 минут</option>
                                                            <option value="16">16 минут</option>
                                                            <option value="17">17 минут</option>
                                                            <option value="18">18 минут</option>
                                                            <option value="19">19 минут</option>
                                                            <option value="20">20 минут</option>
                                                            <option value="21">21 минут</option>
                                                            <option value="22">22 минут</option>
                                                            <option value="23">23 минут</option>
                                                            <option value="24">24 минут</option>
                                                            <option value="25">25 минут</option>
                                                            <option value="26">26 минут</option>
                                                            <option value="27">27 минут</option>
                                                            <option value="28">28 минут</option>
                                                            <option value="29">29 минут</option>
                                                            <option value="30">30 минут</option>
                                                            <option value="31">31 минут</option>
                                                            <option value="32">32 минут</option>
                                                            <option value="33">33 минут</option>
                                                            <option value="34">34 минут</option>
                                                            <option value="35">35 минут</option>
                                                            <option value="36">36 минут</option>
                                                            <option value="37">37 минут</option>
                                                            <option value="38">38 минут</option>
                                                            <option value="39">39 минут</option>
                                                            <option value="40">40 минут</option>
                                                            <option value="41">41 минут</option>
                                                            <option value="42">42 минут</option>
                                                            <option value="43">43 минут</option>
                                                            <option value="44">44 минут</option>
                                                            <option value="45">45 минут</option>
                                                            <option value="46">46 минут</option>
                                                            <option value="47">47 минут</option>
                                                            <option value="48">48 минут</option>
                                                            <option value="49">49 минут</option>
                                                            <option value="50">50 минут</option>
                                                            <option value="51">51 минут</option>
                                                            <option value="52">52 минут</option>
                                                            <option value="53">53 минут</option>
                                                            <option value="54">54 минут</option>
                                                            <option value="55">55 минут</option>
                                                            <option value="56">56 минут</option>
                                                            <option value="57">57 минут</option>
                                                            <option value="58">58 минут</option>
                                                            <option value="59">59 минут</option>
                                                    </select>

                    </div>

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit "></button>
        </div>
    </div>
</form>                                        </div>
                                    </div>
                                </div>
                                                                        
                </div>

            </div>
        </div>

    </section>
<footer style="padding-top: 10px">
      
    <!-- CONTAINER -->
    <div class="container">
      
      <!-- ROW -->
      
      
    </div><!-- //CONTAINER -->

    <div class="t3-copyright" style="padding: 15px;text-align: center; background:rgba(0, 0, 0, 0.27) none repeat scroll 0% 0%; height: 100%;">
    <div class="container">
      <div class="row">
        <div class="col-md-12 copyright ">
          <div class="module">
            <div class="col-md-3">



            </div>
            <div class="col-md-6" style="margin-top: 8px;">
              © 2019 IITU. Все права защищены. <a href="https://github.com/Turbo-potato/DADAproject" target="_blank"> DADA Team</a>
            </div>
  
</div>
        </div>
      </div>
    </div>
  </div>

  </footer>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/jquery/jquery.min.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor\bootstrap\js/bootstrap.min.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap-datepicker.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/vendor/bootstrap-datepicker.min.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/js/app.js"></script>
<script src="/newtest/DADAproject/back%20end/DADprojectV10/src/main/webapp/WEB-INF/views/js/list.js"></script>

</body>
</html>
