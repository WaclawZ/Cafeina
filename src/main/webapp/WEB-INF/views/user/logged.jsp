<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 25.01.18
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Cafeina - Twój profil</title>
</head>
<body>
<%@include file="../header.jspf"%>
<div style="min-height: 40em" class="container">
    <div class="row justify-content-center">
        <h1>Twój profil:</h1>
    </div>
    <div class="row justify-content-center">
        <table class="table table-hover">
            <tr>
                <th scope="row">Imię</th>
                <td>${user.firstName}</td>
                <td>Edytuj</td>
            </tr>
            <tr>
                <th scope="row">Nazwisko</th>
                <td>${user.lastName}</td>
                <td>Edytuj</td>
            </tr>
            <tr>
                <th scope="row">Wiek</th>
                <td>${user.age}</td>
                <td>Edytuj</td>
            </tr>
            <tr>
                <th scope="row">Hasło</th>
                <td>********</td>
                <td>Edytuj</td>
            </tr>
        </table>
    </div>
    <div class="row justify-content-center">
        <h3>Twoje zamówienia:</h3><br>
    </div>
    <div class="row justify-content-end">
        <a class="btn btn-light" href="/user/logout" />Wyloguj</a>
    </div>
</div>
<%@include file="../footer.jspf"%>
</body>
</html>
