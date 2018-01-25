<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 24.01.18
  Time: 14:23
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
    <title>Cafeina - Cake Details</title>
</head>
<body>
<%@include file="../header.jspf"%>
<div class="container">
    <h1 class ="row justify-content-center" style="margin: auto">${cake.name}</h1>
    <div class="row justify-content-center" style="margin: auto; max-width: 362px; max-height: 240px"><img src="/resources/assets/cakes/${cake.imgUrl}"/></div>
    <div style="height: 100px"></div>
    <div class="row justify-content-center">
        <table class="table table-hover">
            <tr>
                <th scope="row">Typ</th>
                <td>${cake.type}</td>
            </tr>
            <tr>
                <th scope="row">Waga</th>
                <td>${cake.weigth} kg</td>
            </tr>
            <tr>
                <th scope="row">Cena za kilogram</th>
                <td>${cake.pricePerKilo} zł</td>
            </tr>
            <tr>
                <th scope="row">Cena</th>
                <td>${fullPrice}</td>
            </tr>
            <tr>
                <th scope="row">Skład</th>
                <td>${cake.composition}</td>
            </tr>
            <tr>
                <th scope="row">Opis</th>
                <td>${cake.description}</td>
            </tr>
        </table>
    </div>
</div>
<%@include file="../footer.jspf"%>
</body>
</html>
