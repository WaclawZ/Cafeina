<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 23.01.18
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Cafeina - Home</title>
    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 70%;
            margin: auto;
        }
    </style>
</head>
<body>
<div>
    <%@include file="/WEB-INF/views/header.jspf" %>
</div>
<div class="container">
        <div id="myCarousel" class="carousel slide row justify-content-center">
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="/resources/assets/cafeina-home1.jpg" alt="Chania">
                </div>
                <div class="item">
                    <img src="/resources/assets/cafeina-home2.jpg" alt="Chania">
                </div>
                <div class="item">
                    <img src="/resources/assets/cafeina-home3.jpg" alt="Flower">
                </div>
            </div>
        </div>
    <div class="row justify-content-center">
        <div class="col">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat.
        </div>
        <div class="col">
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            Excepteur
            sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </div>
    </div>
</div>
<div class>
    <%@include file="/WEB-INF/views/footer.jspf" %>
</div>
</body>
<script src="<c:url value="/resources/scripts/homeApp.js"/>"></script>
</html>
