<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Group</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form role="form" class="form-horizontal" action="/group/add" method="post">
        <div class="form-group"><h3>New Group</h3></div>
        <div class="form-group"><input type="text" class="form-control" name="name" placeholder="Name"></div>
        <select class="selectpicker form-control form-group" name="img">
            <c:forEach items="${image}" var="img">
                <option value="${img.id}">${img.url}</option>
            </c:forEach>
        </select>
        <div class="form-group"><input type="submit" class="btn btn-primary" value="Add"></div>
    </form>
    <form role="form" class="form-horizontal" action="/group/delete" method="post">
        <div class="form-group"><h3>Delete Group</h3></div>
        <select name="deleteGroup" class="selectpicker form-control form-group" name="img">
            <c:forEach items="${groups}" var="group">
                <option name="deleteG" value="${group.uuid}">${group.name}</option>
            </c:forEach>
        </select>
        <div class="form-group"><input type="submit" class="btn btn-primary" value="Delete"></div>
    </form>
</div>
<script>
    $('.selectpicker').selectpicker();
</script>
</body>
</html>