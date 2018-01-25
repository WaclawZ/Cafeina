<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 25.01.18
  Time: 15:38
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
    <title>Cafeina - Order</title>
</head>
<body>
<%@include file="../header.jspf"%>
    <div style="min-height: 40em" class="container">
        <div class="row justify-content-center">
            <%--@elvariable id="order" type="pl.cafeina.entity.Order"--%>
            <form:form method="post" action="#" modelAttribute="order">
                <div class="form-group">
                    <label>Ciasto: </label>
                    <form:select path="cakes" items="${cakesList}" class="form-control" itemLabel="name" itemValue="id"/>
                    <form:errors path="cakes"/><br>
                </div>
                <div class="form-group">
                    <label>Data: </label>
                    <form:input type="date" path="orderDate" class="form-control"/>
                    <form:errors path="orderDate"/><br>
                </div>
                <div class="form-group">
                    <label>Email: </label>
                    <form:input path="email" class="form-control" value="${userEmail}"/>
                    <form:errors path="email"/><br>
                </div>
                <div class="form-group">
                    <label>Telefon: </label>
                    <form:input path="number" class="form-control"/>
                    <form:errors path="number"/><br>
                </div>
                <input type="submit" value="Zamów">
            </form:form>
        </div>
    </div>
<%@include file="../footer.jspf"%>
</body>
</html>
