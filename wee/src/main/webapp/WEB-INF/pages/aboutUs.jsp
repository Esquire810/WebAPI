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
    <link rel="stylesheet"  href="resources/css/about_us.css" />
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
            <div>
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
                <div class="content">
                    <p>Ми раді вітати Вас на нашому сайті! Ми творці торгової марки WeeMiracle, яка виробляє дитячі товари. Зовсім не хочеться писати про те, що наш товар унікальний і неповторний. Ви можете самі його оцінити, спробувавши купити хоча б одну річ нашої марки. Наші вироби говорять про нас самих, судіть самі))).</p>
                    <p>Марнолюбні, подумаєте Ви. Зовсім ні. Ми просто батьки.</p>
                    <p>Здавалося б, що тут такого? Мільйони людей стають матерями і батьками, дідусями і бабусями, племінницями і тітками. Що ж тоді такого особливого? Психологія матерів і вагітних дуже сильно відрізняється. Ми - типові батьки, які пройшли через всі труднощі вагітності і материнства і готові поділитися своїм досвідом з вами.</p>
                    <!--p>Саме тому ми не просто робимо товари для дітей, а й прагнемо допомогти молодим батькам, організовуючи вечори, читаючи лекції, проводячи майстер-класи.</p-->
                    <p>ТМ WeeMiracle- це креативна команда молодих батьків, які вирішили поламати стереотипи про українського виробника. Ми створюємо те, чого не вистачало нам самим. Наші ідеї наділені універсальністю, оптимальністю і навіть "вміють рости з малюком". І, будучи реалізованими, проходять "тест драйв" на наших же дітях. Тому ми сміливо представляємо наші вироби на ринку.</p>
                    <p>Наша продукція це не тільки практичність для батьків, це ще і комфорт, тепло і затишок ваших дітей. І повірте, посмішка вашої дитини варто того!</p>
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->



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