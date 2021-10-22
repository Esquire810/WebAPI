<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Subject</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form role="form" class="form-horizontal" action="/subj/add" method="post">
        <div class="form-group"><h3>New Subject</h3></div>
        <div class="form-group"><input type="text" class="form-control" name="subjName" placeholder="Subject"></div>
        <div class="form-group"><input type="submit" class="btn btn-primary" value="Add"></div>
    </form>
</div>
<div class="container">
    <form role="form" class="form-horizontal" action="/subj/delete" method="post">
        <div class="form-group"><h3>Delete Subject</h3></div>
        <select name="deleteSubj" class="selectpicker form-control form-group" name="subject">
            <c:forEach items="${subjects}" var="subject">
                <option value="${subject.id}">${subject.subjName}</option>
            </c:forEach>
        </select>
        <div class="form-group"><input type="submit" class="btn btn-primary" value="Delete"></div>
    </form>
</div>
</body>
</html>