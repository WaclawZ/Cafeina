<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 25.01.18
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Cafeina - Register</title>
</head>
<body>
<%@include file="../header.jspf" %>
<div class="container">
    <%--@elvariable id="user" type="pl.cafeina.entity.User"--%>
    <form:form method="post" action="#" modelAttribute="user">
        <div class="form-group">
            <label>Imię: </label>
            <form:input class="form-control" path="firstName"/>
            <form:errors path="firstName"/><br>
        </div>
        <div class="form-group">
            <label>Nazwisko: </label>
            <form:input class="form-control" path="lastname"/>
            <form:errors path="lastname"/><br>
        </div>
        <div class="form-group">
            <label>Email: </label>
            <form:input class="form-control" path="email"/>
            <form:errors path="email"/><br>
        </div>
        <div class="form-group">
            <label>Hasło: </label>
            <form:password class="form-control" path="password"/>
            <form:errors path="password"/><br>
        </div>
        <div class="form-group">
            <label>Wiek: </label>
            <form:input class="form-control" path="age"/>
            <form:errors path="age"/><br>
        </div>
        <form:hidden path="admin"/>
        <input type="submit" value="Zarejestruj się">
    </form:form>
    <br>Do you have an account? <a href="/user/login">Login now</a>.
</div>
<%@include file="../footer.jspf" %>
</body>
</html>
