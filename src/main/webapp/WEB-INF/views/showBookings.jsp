<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Valentina
  Date: 01.12.2019
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bookings</title>
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
<body>
<div class="row" style="margin-top: 40px; margin-bottom: 10px">
    <div class="col-1"></div>
    <div class="col-6"><h2>Lista zarezerwowanych wycieczek</h2></div>
    <div class="col-5"></div>
</div>

<div class="row">
    <div class="col-12" style="padding-bottom: 20px">
        <table class="table">
            <tr>
                <th>Lp.</th>
                <th>Nazwa wycieczki</th>
                <th>Ilość zarezerw. miejsc</th>
                <th>Imię klienta</th>
                <th>Nazwisko klienta</th>
                <th>Numer telefonu</th>
                <th>Adres e-mail</th>
            </tr>
            <c:forEach items="${bookings}" var= "booking" varStatus="stat">
                <tr>
                    <td>${stat.count}</td>
                    <td><b>${booking.travel.name}</b></td>
                    <td>${booking.seatsAmount}</td>
                    <td>${booking.clientName}</td>
                    <td>${booking.clientSurname}</td>
                    <td>${booking.clientPhoneNumber}</td>
                    <td>${booking.clientEmail}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</div>

</body>
</html>
