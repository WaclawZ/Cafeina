<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 24.01.18
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Admin - add cake</title>
</head>
<body>
<%@include file="../header.jspf" %>
<div class="container">
    <%--@elvariable id="cake" type="pl.cafeina.entity.Cake"--%>
    <form:form method="post" action="#" modelAttribute="cake">
        <div class="form-group">
            <label>Name: </label>
            <form:input class="form-control" path="name"/>
            <form:errors path="name"/><br>
        </div>
        <div class="form-group">
            <label>Type: </label>
            <form:input class="form-control" path="type"/>
            <form:errors path="type"/><br>
        </div>
        <div class="form-group">
            <label>Weigth (min-max): </label>
            <form:input class="form-control" path="weigth"/>
            <form:errors path="weigth"/><br>
        </div>
        <div class="form-group">
            <label>Price per kilo: </label>
            <form:input class="form-control" path="pricePerKilo"/>
            <form:errors path="pricePerKilo"/><br>
        </div>
        <div class="form-group">
            <label>Image url: </label>
            <form:input class="form-control" path="imgUrl"/>
            <form:errors path="imgUrl"/><br>
        </div>
        <div class="form-group">
            <label>Description: </label>
            <form:input class="form-control" path="description"/>
            <form:errors path="description"/><br>
        </div>
        <div class="form-group">
            <label>Status: </label>
            <form:checkbox class="form-check-input" path="status"/>
        </div>
        <input type="submit" value="Save">
    </form:form>
</div>
<%@include file="../footer.jspf" %>
</body>
</html>
