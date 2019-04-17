<%@ page import="com.myspring.entities.Times" %>
<%@ page import="java.util.List" %>
<%@ page import="com.myspring.entities.Rooms" %>
<%@ page import="com.myspring.entities.Reserves" %>
<%@ page import="com.myspring.entities.Users" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ru">
<!-- <base href="/"/> -->
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
    <style><%@include file="../../resources/css/bootstrap.min.css"%></style>
    <style><%@include file="../../resources/css/style.css"%></style>
    <style><%@include file="../../resources/css/bootstrap-datepicker3.min.css"%></style>
    <meta charset="utf-8">
    <title>Booking</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="_token" content="UP7kIiEBuJtkEAeEpzLcQNjExoXg1tPZ8JOXCiD2">

</head>

<body>
<%
List<Reserves> reserves = (List<Reserves>)request.getAttribute("reserves");
Users users  = (Users) request.getAttribute("users");
//Rooms rooms = (Rooms) request.getAttribute("room");
    Reserves tempreserv = new Reserves();
List<Times> times = (List<Times>)request.getAttribute("times");
%>
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
                    <a class="nav_href" href="my">My schedule</a>
                </li>
                <li>
                    <a href="library?id=1">John Doe</a>
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
                            <div class="datepicker white_with_shadow"><div class="datepicker datepicker-inline" style="display: block;"><div class="datepicker-days" style="display: block;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">Март 2019</th><th class="next">»</th></tr><tr><th class="dow">Пн</th><th class="dow">Вт</th><th class="dow">Ср</th><th class="dow">Чт</th><th class="dow">Пт</th><th class="dow">Сб</th><th class="dow">Вс</th></tr></thead><tbody><tr><td class="old day">25</td><td class="old day">26</td><td class="old day">27</td><td class="old day">28</td><td class="day">1</td><td class="day">2</td><td class="day">3</td></tr><tr><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day">10</td></tr><tr><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="today active day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td></tr><tr><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td></tr><tr><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td></tr><tr><td class="new day">1</td><td class="new day">2</td><td class="new day">3</td><td class="new day">4</td><td class="new day">5</td><td class="new day">6</td><td class="new day">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Сегодня</th></tr><tr><th colspan="7" class="clear" style="display: none;">Очистить</th></tr></tfoot></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2019</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="month">Янв</span><span class="month">Фев</span><span class="month focused active">Мар</span><span class="month">Апр</span><span class="month">Май</span><span class="month">Июн</span><span class="month">Июл</span><span class="month">Авг</span><span class="month">Сен</span><span class="month">Окт</span><span class="month">Ноя</span><span class="month">Дек</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Сегодня</th></tr><tr><th colspan="7" class="clear" style="display: none;">Очистить</th></tr></tfoot></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2010-2019</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year active focused">2019</span><span class="year new">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Сегодня</th></tr><tr><th colspan="7" class="clear" style="display: none;">Очистить</th></tr></tfoot></table></div><div class="datepicker-decades" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2000-2090</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="decade old">1990</span><span class="decade">2000</span><span class="decade active">2010</span><span class="decade">2020</span><span class="decade">2030</span><span class="decade">2040</span><span class="decade">2050</span><span class="decade">2060</span><span class="decade">2070</span><span class="decade">2080</span><span class="decade">2090</span><span class="decade new">2100</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Сегодня</th></tr><tr><th colspan="7" class="clear" style="display: none;">Очистить</th></tr></tfoot></table></div><div class="datepicker-centuries" style="display: none;"><table class="table-condensed"><thead><tr><th colspan="7" class="datepicker-title" style="display: none;"></th></tr><tr><th class="prev">«</th><th colspan="5" class="datepicker-switch">2000-2900</th><th class="next">»</th></tr></thead><tbody><tr><td colspan="7"><span class="century old">1900</span><span class="century active">2000</span><span class="century">2100</span><span class="century">2200</span><span class="century">2300</span><span class="century">2400</span><span class="century">2500</span><span class="century">2600</span><span class="century">2700</span><span class="century">2800</span><span class="century">2900</span><span class="century new">3000</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Сегодня</th></tr><tr><th colspan="7" class="clear" style="display: none;">Очистить</th></tr></tfoot></table></div></div></div>
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
                    </div>
                    <div class="row event booked ">
                       <%for(Times times1:times){
                        boolean A =false;
                        boolean B = false;
                       %>
                                    <div class="col-xs-12">
                                        <div class="time-block">
                                            <i class="point "></i>
                                        </div>
                                        <div class="content free_for_book">
                                            <h2><%=times1.getRoom_id()%></h2>

                                            <%
                                                for(Reserves reserves1:reserves){
                                                if(users.getId() == reserves1.getUsers().getId() && reserves1.getTime_id() == times1.getId()){
                                            %>
                                            <form action="/dereserve" method="post">
                                                <%--<<input hidden name ="room_id" value="<%=rooms.getName()%>"/>&ndash;%&gt;&ndash;%&gt;--%>
                                                <input hidden name="reserve_id" value="<%=reserves1.getId()%>"/>
                                                <input hidden name="user_id" value="<%=users.getId()%>"/>
                                                <input value="Снять бронь" type="submit"></input>
                                            </form>
                                               <%A = true;
                                               break;
                                            }
                                            else if(users.getId() != reserves1.getUsers().getId() && reserves1.getTime_id() == times1.getId()){
                                                    B = true;
                                              }%>
                                            <%}%>
                                            <%

                                            if(!A && !B)
                                            {%>

                                            <form action="/reserve" method="post">
                                                <%--<input hidden name ="room_id" value="<%=rooms.getName()%>"/>--%>
                                                <input hidden name ="time_id" value="<%=times1.getId()%>"/>
                                                <input hidden name="user_id" value="<%=users.getId()%>"/>
                                                <input value="Забронировать" type="submit"></input>
                                            </form>
                                            <%}
                                            %>

                                            <%--<form action="/dereserve" method="post">--%>
                                                <%--&lt;%&ndash;<input hidden name ="room_id" value="<%=rooms.getName()%>"/>&ndash;%&gt;--%>
                                                <%--<input hidden name="reserve_id" value=""/>--%>
                                                <%--<input hidden name="user_id" value="<%=users.getId()%>"/>--%>
                                                <%--<input value="Снять бронь" type="submit"></input>--%>
                                            <%--</form>--%>
                                        <%--<c:if test="${reserves[status.index].status == 'N' ||empty reserves[status.index] || empty reserves }" >--%>
                                                <%--<form action="/reserve" method="post">--%>
                                                <%--<input hidden name ="room_id" value="<%=rooms.getName()%>"/>--%>
                                                <%--<input hidden name ="time_id" value="${time.id}"/>--%>
                                                <%--<input hidden name="user_id" value="${reserves.users.id}"/>--%>
                                                <%--<input value="Забронировать" type="submit"></input>--%>
                                                <%--</form>--%>
                                                <%--</c:if>--%>
                                       <!-- <div class="content book_this">
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

                </div>
            </div>

            <input type="hidden" name="roomid" value="129">
            <input type="hidden" name="day" value="2019-03-14">
        </div>
        <div class="col-xs-4">
            <button type="submit" class="btn btn-submit sbm_icon"></button>
        </div>
    </div>


                                            </form>

                                        </div>-->

                                        </div>
                                    </div>
                                <%}%>
                    </div>
                </div>
            </div>
        </div>
</section>
<form action="/reserve" method="post" id="send">
    <input type="hidden" name="room_id" value="${room.id}">
    <input type="hidden" name="time_id" value="3">
    <button type="submit">reserve</button>
</form>
<script src="../../resources/vendor/jquery/jquery.min.js"></script>
<script src="../../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../../resources/vendor/bootstrap/bootstrap-datepicker.js"></script>
<script src="../../resources/vendor/bootstrap-datepicker.ru.min.js"></script>
<script src="../../resources/views/vendor/list.js"></script>
<script src="../../resources/vendor/app.js"></script>
<script>
    $('document').ready(function(){
        $('#go').click(function(){
            $('#send').submit();
        });
    });
</script>

</body>
</html>
