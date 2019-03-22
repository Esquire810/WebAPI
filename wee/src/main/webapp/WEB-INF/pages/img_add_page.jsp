<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Image</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form role="form" class="form-horizontal" action="/img/add" method="post">
        <div class="form-group"><h3>New Image</h3></div>
        <div class="form-group"><input type="text" class="form-control" name="url" placeholder="Image URL"></div>
        <div class="form-group"><input type="submit" class="btn btn-primary" value="Add"></div>
    </form>
</div>
</body>
</html>