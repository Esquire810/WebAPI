<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Wee_Miracle</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/list.css">
    <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">
    <div class="overlay"></div>

    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand">
                <a href="#">
                    WM
                </a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Товары <span class="glyphicon glyphicon-menu-down"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <c:forEach items="${groups}" var="group">
                        <li><a href="/group/${group.uuid}">${group.name}</a></li>
                    </c:forEach>
                </ul>
            </li>
            <li>
                <a href="#">О нас</a>
            </li>
            <li>
                <a href="#">Контакты</a>
            </li>
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
            <div class="page_row">
                <ul class="product-list">
                    <li class="product-list__item">
                        <div class="product-list__image-panel">
                            <a class="product-list__image-link" href="">
                                <img class="product-list__image" src="https://drive.google.com/uc?id=1iChSw1u8zBqj60w4nk69y6jKN9PIwUCL" alt="Подушка з вишитим візерунком сови">
                            </a>
                        </div>
                        <div class="product-list__info-panel">
                            <div class="product-list__title"><a class="goods-title" href="">Подушка з вишитим візерунком "Сови"</a></div>
                            <div class="goods-price"><span class="goods-price__value">320 <span class="notranslate">грн.</span></span></div>
                            <div class="product-list__order-panel"><a class="product-list__btn" href="">Переглянути</a></div>
                        </div>
                    </li>
                    <li class="product-list__item">
                        <div class="product-list__image-panel">
                            <a class="product-list__image-link" href="">
                                <img class="product-list__image" src="https://drive.google.com/uc?id=1rp7rBQAvqFgxRdH_Ges1-iLMTm67DI1I" alt="Щастливого дня Святого Валентина">
                            </a>
                        </div>
                        <div class="product-list__info-panel">
                            <div class="product-list__title"><a class="goods-title" href="">Подушка з вишитим візерунком "Щастливого дня Святого Валентина"</a></div>
                            <div class="goods-price"><span class="goods-price__value">300 <span class="notranslate">грн.</span></span></div>
                            <div class="product-list__order-panel"><a class="product-list__btn" href="">Переглянути</a></div>
                        </div>
                    </li>
                    <li class="product-list__item">
                        <div class="product-list__image-panel">
                            <a class="product-list__image-link" href="">
                                <img class="product-list__image" src="https://drive.google.com/uc?id=1oYZ93DRWg0oYznfmCCwOXFWZfpcO5Ljc" alt="Поцілунок">
                            </a>
                        </div>
                        <div class="product-list__info-panel">
                            <div class="product-list__title"><a class="goods-title" href="">Подушка з вишитим візерунком "Поцілунок"</a></div>
                            <div class="goods-price"><span class="goods-price__value">280 <span class="notranslate">грн.</span></span></div>
                            <div class="product-list__order-panel"><a class="product-list__btn" href="">Переглянути</a></div>
                        </div>
                    </li>
                    <li class="product-list__item">
                        <div class="product-list__image-panel">
                            <a class="product-list__image-link" href="">
                                <img class="product-list__image" src="https://drive.google.com/uc?id=1vfU9P5vXhaRpis0MBTf84t27sTsdhAYW" alt="Завжди в моему серці">
                            </a>
                        </div>
                        <div class="product-list__info-panel">
                            <div class="product-list__title"><a class="goods-title" href="">Подушка з вишитим візерунком "Завжди в моему серці"</a></div>
                            <div class="goods-price"><span class="goods-price__value">350 <span class="notranslate">грн.</span></span></div>
                            <div class="product-list__order-panel"><a class="product-list__btn" href="">Переглянути</a></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->
</div>
<!-- /#wrapper -->

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
    });

    $('.dropdown-toggle').dropdown();
</script>
</body>
</html>