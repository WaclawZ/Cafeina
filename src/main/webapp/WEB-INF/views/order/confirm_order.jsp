<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 26.01.18
  Time: 09:56
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
    <title>Cafeina - Confirm</title>
</head>
<body>
<%@include file="../header.jspf" %>
<div style="min-height: 40em" class="container">
    <div class="row justify-content-center">
        <table class="table">
            <tr>
                <th colspan="row">Ciasta:</th>
                <c:forEach items="${cakes}" var="cake">
                    <td>${cake.name}</td>
                </c:forEach>
            </tr>
            <tr>
                <th colspan="row">Widełki cenowe za całe zamówienie</th>
                <td colspan="${cakes.size()}">${sumPrice}</td>
            </tr>
        </table>
    </div>
    <div style="height: 100px"></div>
    <div class="row juustify-content-center">
        <table class="table table-hover">
            <tr>
                <th>Data zmówienia</th>
                <th>Email</th>
                <th>Telefon kontaktowy</th>
            </tr>
            <tr>
                <td><fmt:formatDate value="${order.orderDate}" pattern="dd-MM-yyyy"/></td>
                <td>${order.email}</td>
                <td>${order.number}</td>
            </tr>
        </table>
    </div>
    <div class="row justify-content-end">
        <a class="btn btn-danger" href="javascript:history.back()">Cofnij</a>
        <a class="btn btn-success" href="/order/confirm/${order.id}">Potwierdź</a>
    </div>
</div>
<%@include file="../footer.jspf" %>
</body>
</html>
