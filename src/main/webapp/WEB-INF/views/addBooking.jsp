<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Valentina
  Date: 30.11.2019
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Booking travels</title>
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
<jsp:include page="fragments/main-menu.jsp"/>
<div class="container">
    <div class="row" style="margin-top: 40px">
        <div class="col-1"></div>
        <div class="col-10" style="padding-bottom: 20px"><h2>Zarezerwuj wycieczkę: </h2></div>
        <div class="col-1"></div>
    </div>

    <div class="row">
        <div class="col-1"></div>
        <div class="col-6">
            <form method="post" action="/booking/add">
                <div class="form-group">
                    <label for="travelId">Nazwa wycieczki</label>
                    <select name="travelId" class="form-control" id="travelId" onchange="this.form.submit()">
                        <c:forEach items="${travels}" var="travel">
                            <c:choose>
                                <c:when test="${travel.id.equals(selectedTravelId)}">
                                    <option value="${travel.id}" selected>${travel.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${travel.id}">${travel.name}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="seatsAmount">Iłość miejsc</label>
                    <input type="number" min="1" step="1" max="${availableSeats} " required name="seatsAmount"
                           id="seatsAmount" class="form-control"
                           placeholder="Podaj ilość miejsc (max: ${availableSeats})"/>
                </div>
                <div class="form-group">
                    <label for="clientName">Imię</label>
                    <input type="text" required name="clientName" id="clientName" class="form-control"
                           placeholder="Podaj swoje imię"/>
                </div>
                <div class="form-group">
                    <label for="clientSurname">Nazwisko</label>
                    <input type="text" required name="clientSurname" id="clientSurname" class="form-control"
                           placeholder="Podaj swoje nazwisko"/>
                </div>
                <div class="form-group">
                    <label for="clientPhoneNumber">Numer telefonu</label>
                    <input type="text" required name="clientPhoneNumber" id="clientPhoneNumber" class="form-control"
                           placeholder="Podaj numer telefonu"/>
                </div>
                <div class="form-group">
                    <label for="clientEmail">Adres e-mail</label>
                    <input type="text" required name="clientEmail" id="clientEmail" class="form-control"
                           placeholder="Podaj adres e-mail"/>
                </div>
                <button class="btn btn-primary" type="submit" name="reserved">Rezerwuj</button>
            </form>
        </div>
        <div class="col-5"></div>
    </div>
</div>

</body>
</html>
