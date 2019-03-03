<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<base href="/"/>
<head>
    <meta charset="utf-8">
    <title>Booking</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="_token" content="UP7kIiEBuJtkEAeEpzLcQNjExoXg1tPZ8JOXCiD2">
</head>

<body>

<style><%@include file="../../resources/css/bootstrap.min.css"%></style>
<style><%@include file="../../resources/css/style.css"%></style>
<style><%@include file="../../resources/css/bootstrap-datepicker3.min.css"%></style>
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
                    <a href="#">Admin page</a>
                </li>
                <li><a href="">Exit</a></li>
            </ul>
        </div>
    </div>
</nav>
<header>
    <h1 class="text-center ">Booking Auditory</h1>
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
                <div class="panel-body" id="rooms">
                    <div class="row rooms_row">
                        <div class="col-xs-6 col-md-3 room floor_1">
                            <a href="/room?id=3">
                                <span class="image" style="background-image: url('http://www.iitu.kz/uploads/news/2013/may/3/IMG_9965.JPG')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>129</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Library <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#129">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_2">
                            <a href="/room?id=1">
                                <span class="image" style="background-image: url('http://www.iitu.kz/upload/News/full/News-image-temp15363-0.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>226</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Laboratory <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#226">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="/room?id=2">
                                <span class="image" style="background-image: url('https://storage.tpu.ru/thumbnail/52dd837894612e2bc75c88478936f723/bf796d445258c806/3b00afd0b3231589.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>301</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Lecture Hall <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#301">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="/room?id=4">
                                <span class="image" style="background-image: url('https://kai.ru/image/journal/article?img_id=6951668&t=1507114653101')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>302</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>lecture hall <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#302">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row rooms_row">
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#304">
                                <span class="image" style="background-image: url('http://ic.pics.livejournal.com/drugoi/484155/7588521/original.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>304</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>laboratory cabinet <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#304">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#305">
                                <span class="image" style="background-image: url('http://lyceum9.com/images/matbaza/%D0%B8%D0%BD%D1%842.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>305</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>laboratory work <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#305">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#308">
                                <span class="image" style="background-image: url('http://upload2.schoolrm.ru/resize_cache/809663/c3bed4c46e3bebf9034448fed65e7b8e/iblock/7fa/7fa56e5872d43af5a7b73eab78658608/b22cfd8a88066a3d1e693dba80737307.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>308</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>laboratory work <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#308">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#309">
                                <span class="image" style="background-image: url('http://www.lingo-class.ru/wa-data/public/site/themes/new1/img/rinel/ikt_class.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>309</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>lecture hall <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#309">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row rooms_row">
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#309">
                                <span class="image" style="background-image: url('https://www.bsu.edu.ru/upload/iblock/fdd/22.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>311</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>lecture hall <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#311">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#311">
                                <span class="image" style="background-image: url('http://www.enu.kz/images/novosti-enu/kabinet-kriminalistiki-1.jpg ')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>312</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Practice cabinet <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#312">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#312">
                                <span class="image" style="background-image: url('https://news.kaznmu.kz/wp-content/uploads/2014/05/%D0%9A%D0%B0%D0%B1%D0%B8%D0%BD%D0%B5%D1%82-%D0%BA%D0%B0%D1%84%D0%B5%D0%B4%D1%80%D1%8B-%D0%A5%D0%B8%D0%BC%D0%B8%D1%8F-%D0%B8-%D1%82%D0%B5%D1%85%D0%BD%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%8F-%D0%B3%D0%B5%D1%82%D0%B5%D1%80%D0%BE%D0%B3%D0%B5%D0%BD%D0%BD%D1%8B%D1%85-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC1.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>313</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Practice cabinet <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#313">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#313">
                                <span class="image" style="background-image: url('http://www.provuz.ru/data/files/img/std/1000000/102000/101518-kabinet-matematicheskih-disciplin-396e4247a23f.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>314</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Practice cabinet <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#314">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row rooms_row">
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#318">
                                <span class="image" style="background-image: url('https://sdu.edu.az/userfiles/image/news/news_1062.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>318</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Practice cabinet <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#318">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#325">
                                <span class="image" style="background-image: url('http://www.enu.kz/images/novosti-enu/kabinet-kriminalistiki-22.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>325</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Practice cabinet <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#325">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#326">
                                <span class="image" style="background-image: url('https://www.spbgasu.ru/gallery/photogallery/3723/orig_3723.JPG')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>326</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Laboratory <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#326">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#328">
                                <span class="image" style="background-image: url('http://ic.pics.livejournal.com/kun27guru/37149536/251858/251858_1000.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>328</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Laboratory <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#328">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row rooms_row">
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#329">
                                <span class="image" style="background-image: url('https://cs6.pikabu.ru/post_img/big/2017/07/02/5/1498976214155090520.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>329</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>Laboratory <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#329">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#330">
                                <span class="image" style="background-image: url('https://www.globaldialog.ru/_/manager/files/551/d3c920162e/HKU-5.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>330</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>lecture hall <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#330">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#330A">
                                <span class="image" style="background-image: url('https://www.solo.ru/img/uploaded/projects/2017-10-tgu/main.jpg')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>330A</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>lecture hall <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#330A">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3 room floor_3">
                            <a href="#332">
                                <span class="image" style="background-image: url('https://scontent-lga3-1.cdninstagram.com/vp/01241070fbc2799ccdb611de82ce0471/5CB5ED49/t51.2885-15/sh0.08/e35/s750x750/47153724_1212525168897288_2912285009877827410_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com&ig_cache_key=MTk0Mjc0MTMyNDI4Njc4ODgwOQ%3D%3D.2')"></span>
                            </a>
                            <div class="info white_with_shadow">
                                <div class="row">
                                    <div class="col-xs-5 number">
                                        <p>332</p>
                                    </div>
                                    <div class="col-xs-5 name"><p>PR department <a href="#">edit</a></p></div>
                                    <div class="col-xs-2 link"> <p>
                                        <a href="#332">
                                            <i class="go_link"></i>
                                        </a>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row text-center">
                    <ul class="pagination">
                        <li class="disabled"><span>&laquo;</span></li>
                        <li class="active ourli"><span>1</span></li>
                        <li><a href="#page=2">2</a></li>
                        <li><a href="#page=3">3</a></li>
                        <li><a href="#page=4">4</a></li>
                        <li><a href="#page=5" rel="next">&raquo;</a></li>
                    </ul>
                </div>
            </div>
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

