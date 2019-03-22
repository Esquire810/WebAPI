<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wee_Miracle</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
    <link rel="stylesheet"  href="resources/css/contacts.css" />
</head>
<body>
<div id="wrapper">
    <div class="overlay"></div>

    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand">
                <a class="menu_namebar" href="/">
                    WM
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown">Товари<span class="glyphicon glyphicon-chevron-right"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <c:forEach items="${groups}" var="group">
                        <li><a href="/group/${group.uuid}">${group.name}</a></li>
                    </c:forEach>
                </ul>
            </li>
            <!--li>
            <a href="#">Галерея</a>
            </li-->
            <li>
                <a href="/about_us">Про нас</a>
            </li>
            <li>
                <a href="/contact_page">Контакти</a>
            </li>
            <!--li>
                <a href="#">Доставка і оплата</a>
            </li-->
        </ul>
    </nav>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
        </button>
        <div class="namebar">
            <h1>Wee Miracle</h1>
            <div class="all-info">
                <div class="online-edit">
                    <span class="title">Графік роботи</span>
                    <ul class="sked__holder">
                        <li class="sked__list">
                            <div class="sked__item">
                                <span class="sked__day">Понеділок</span>
                            </div>
                            <div class="sked__item">
                                <span class="sked__time">09:00</span>
                                <span class="sked__time">19:00</span>
                            </div>
                        </li>
                        <li class="sked__list">
                            <div class="sked__item">
                                <span class="sked__day">Вііторок</span>
                            </div>
                            <div class="sked__item">
                                <span class="sked__time">09:00</span>
                                <span class="sked__time">19:00</span>
                            </div>
                        </li>
                        <li class="sked__list">
                            <div class="sked__item">
                                <span class="sked__day">Середа</span>
                            </div>
                            <div class="sked__item">
                                <span class="sked__time">09:00</span>
                                <span class="sked__time">19:00</span>
                            </div>
                        </li>
                        <li class="sked__list">
                            <div class="sked__item">
                                <span class="sked__day">Червер</span>
                            </div>
                            <div class="sked__item">
                                <span class="sked__time">09:00</span>
                                <span class="sked__time">19:00</span>
                            </div>
                        </li>
                        <li class="sked__list">
                            <div class="sked__item">
                                <span class="sked__day">П'ятниця</span>
                            </div>
                            <div class="sked__item">
                                <span class="sked__time">09:00</span>
                                <span class="sked__time">19:00</span>
                            </div>
                        </li>
                        <li class="sked__list">
                            <div class="sked__item">
                                <span class="sked__day">Субота</span>
                            </div>
                            <div class="sked__item">
                                <span class="sked__time">Вихідний</span>
                            </div>
                        </li>
                        <li class="sked__list">
                            <div class="sked__item">
                                <span class="sked__day">Неділя</span>
                            </div>
                            <div class="sked__item">
                                <span class="sked__time">Вихідний</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="page_row">
                    <h1 class="title"><span>Контактна інформція компанії Wee Miracle</span></h1>
                    <div class="info-edit">
                        <div class="contact-info-row" title="Назва">
                            <span class="contact-info-title">Wee Miracle</span>
                        </div>
                        <address class="contact-info-row" title="Адреса">
                            <span class="contact-info-address" title="Україна">Україна</span>
                            <span class="contact-info-address" title="Київ">Київ</span>
                            <span class="contact-info-address" title="вул.Дарницькиї бульвар 17, офіс 66">вул.Дарницькиї бульвар 17, офіс 66</span>
                        </address>
                        <div class="contact-info-row" title="Телефон">
                            <span class="contact-info-number">+380(96)681-33-52</span>
                            <span class="contact-info-number">+380(99)365-89-88</span>
                            <span class="contact-info-number">+380(93)413-01-95</span>
                        </div>
                        <div class="contact-info-row" title="Сайт компанії">
                            <span class="contact-info-a"><a href="/" title="https://weemiracle.com.ua">https://weemiracle.com.ua</a></span>
                        </div>
                        <div class="contact-info-row" title="Тип компанії">
                            <span class="contact-info-compane">Виробник</span>
                            <span class="contact-info-compane">Торгова компанія</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    $(document).ready(function () {
        var trigger = $('.hamburger'),
            overlay = $('.overlay'),
            isClosed = false;

        trigger.click(function () {
            hamburger_cross();
        });

        function hamburger_cross() {

            if (isClosed == true) {
                overlay.hide();
                trigger.removeClass('is-open');
                trigger.addClass('is-closed');
                isClosed = false;
            } else {
                overlay.show();
                trigger.removeClass('is-closed');
                trigger.addClass('is-open');
                isClosed = true;
            }
        }

        $('[data-toggle="offcanvas"]').click(function () {
            $('#wrapper').toggleClass('toggled');
        });
        $('.dropdown-toggle').dropdown();
    });
</script>
</div>
<!-- /#wrapper -->
</body>
</html>