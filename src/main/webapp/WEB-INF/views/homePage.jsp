<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Valentina
  Date: 30.11.2019
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Travels World</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
            integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
            integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
            crossorigin="anonymous"></script>
</head>
<body style="background-image: url(/samolot1.jpg); background-size: unset; background-position: 50% 50%; background-repeat: no-repeat">
<jsp:include page="fragments/main-menu.jsp"/>
<div class="container">
    <div class="row" style="color: black; align-content:center; margin-top: 20px; margin-bottom: 10px">
        <div class="col-1"></div>
        <div class="col-10"><h1>WYCIECZKI ŚWIATA CZEKAJĄ NA CIEBIE</h1></div>
        <div class="col-1"></div>
    </div>
    <div class="row" style="color: black; align-content:center; margin-top: 20px; margin-bottom: 10px">
        <div class="col-1"></div>
        <div class="col-10">
            <c:forEach items="${actualTravels}" var="travel">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">${travel.name}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">${travel.destination}</h6>
                        <p class="card-text">Od ${travel.beginDate} do ${travel.endDate}</p>
<%--                        <a href="#" class="card-link">Card link</a>--%>
<%--                        <a href="#" class="card-link">Another link</a>--%>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="col-1"></div>
    </div>
</div>
</body>
</html>
