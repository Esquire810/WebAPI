<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Marks</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
    <h3><a href="/">Add Marks</a></h3>

    <form role="form" class="form-horizontal" action="/mark/add" method="post">
        <ul id="groupList" class="nav navbar-nav">
            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Groups <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <c:forEach items="${groups}" var="group">
                    <li><a href="/mark_group/${group.id}">${group.name}</a></li>
                </c:forEach>
            </ul>
        </li>
        </ul>
        <select class="selectpicker form-control form-group" name="student">
            <c:forEach items="${students}" var="student">
                <option value="${student.id}">${student.firstName} ${student.lastName}</option>
            </c:forEach>
        </select>
        <select class="selectpicker form-control form-group" name="subject">
            <c:forEach items="${subjects}" var="subject">
                <option value="${subject.id}">${subject.subjName}</option>
            </c:forEach>
        </select>
        <input type="date" class="form-control" id="date" name="date" placeholder="Date" required>
        <select class="selectpicker form-control form-group" name="mark">
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    <input type="submit" class="btn btn-primary" value="Add">
    </form>
</div>
<script>
    $('.dropdown-toggle').dropdown();
</script>
</body>
</html>