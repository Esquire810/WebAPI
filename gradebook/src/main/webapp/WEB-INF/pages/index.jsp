<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade Book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
    <h3><a href="/">Grade Book</a></h3>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul id="toolList" class="nav navbar-nav">
                    <li><button type="button" id="add_student" class="btn btn-default navbar-btn">Add Student</button></li>
                    <li><button type="button" id="delete_student" class="btn btn-default navbar-btn">Delete Student</button></li>
                    <li><button type="button" id="add_group" class="btn btn-default navbar-btn">Add/Delete Group</button></li>
                    <li><button type="button" id="add_subj" class="btn btn-default navbar-btn">Add/Delete Subject</button></li>
                    <li><button type="button" id="add_mark" class="btn btn-default navbar-btn">Add Marks</button></li>
                </ul>
                <form class="navbar-form navbar-left" role="search" action="/search" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" name="pattern" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div><!-- /.navbar-collapse -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <ul id="studList" class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Groups <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <c:forEach items="${groups}" var="group">
                                <li><a href="/group/${group.id}">${group.name}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Subjects <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <c:forEach items="${subjects}" var="subject">
                                <li><a href="/subj/${subject.id}">${subject.subjName}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                </ul>
            </div>

        </div><!-- /.container-fluid -->
    </nav>

    <table class="table table-bordered">
        <c:forEach items="${students}" var="student">
            <tr>
                <td><input type="checkbox" name="toDelete[]" value="${student.id}" id="checkbox_${student.id}"/></td>
                <td>${student.lastName}</td>
                <td>${student.firstName}</td>
                <td>${student.group.name}</td>
            </tr>
        </c:forEach>
        <c:forEach items="${marks}" var="mark">
            <tr>
                <td>${mark.student.lastName}</td>
                <td>${mark.student.firstName}</td>
                <td>${mark.mark}</td>
                <td>${mark.date}</td>
                <td>${mark.subject.subjName}</td>
            </tr>
        </c:forEach>
    </table>
    </nav>
</div>

<script>
    $('.dropdown-toggle').dropdown();

    $('#add_student').click(function(){
        window.location.href='/student_add_page';
    });

    $('#add_group').click(function(){
        window.location.href='/group_add_page';
    });
    $('#add_subj').click(function(){
        window.location.href='/subj_add_page';
    });
    $('#add_mark').click(function(){
        window.location.href='/mark_add_page';
    });

    $('#delete_student').click(function(){
        var data = { 'toDelete[]' : []};
        $(":checked").each(function() {
            data['toDelete[]'].push($(this).val());
        });
        $.post("/student/delete", data, function(data, status) {
            window.location.reload();
        });
    });
</script>
</body>
</html>