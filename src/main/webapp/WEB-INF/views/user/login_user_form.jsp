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
    <title>Cafeina - Login</title>
</head>
<body>
<%@include file="../header.jspf" %>
<div style="min-height: 40em" class="container">
    <div class="row justify-content-center">
        <form method="post" action="#">
            <label>Email:</label>
            <input class="form-control" type="text" name="username" id="username" placeholder="Email"><br>
            <label>Hasło:</label>
            <input class="form-control" type="password" name="password" id="password" placeholder="Hasło"><br>
            <input class="btn btn-primary" type="submit" value="Zaloguj się">
        </form>
    </div>
    <div class="row justify-content-center">
        <a href="register">Nie masz konta? Zarejestruj się.</a>
    </div>
</div>
<%@include file="../footer.jspf" %>
</body>
</html>
