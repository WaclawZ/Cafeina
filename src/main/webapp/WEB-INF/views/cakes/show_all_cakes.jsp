<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 23.01.18
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <title>Cafeina - Cakes</title>
</head>
<body>
<%@include file="../header.jspf" %>

<div class="container">
    <div class="card-deck">

        <div class="card d-inline-flex" style="width: 18rem;">
            <img class="card-img-top" src="/resources/assets/zielony_mech.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
        <div class="card d-inline-flex" style="width: 18rem;">
            <img class="card-img-top" src="/resources/assets/tiramisu.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
        <div class="card d-inline-flex" style="width: 18rem;">
            <img style="height: " class="card-img-top" src="/resources/assets/czeko_pom.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>

    </div>

</div>

<%@include file="../footer.jspf" %>
</body>
</html>
