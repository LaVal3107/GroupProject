<%--
  Created by IntelliJ IDEA.
  User: Valentina
  Date: 30.11.2019
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
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
<div class="container">
    <div class="row" style="margin-top: 40px">
        <div class="col-1"></div>
        <div class="col-10" style="padding-bottom: 20px"><h2>Dodaj wycieczkę: </h2></div>
        <div class="col-1"></div>
    </div>

    <div class="row">
        <div class="col-1"></div>
        <div class="col-6">
            <form method="post" action="/add">
                <div class="form-group">
                    <label for="name">Nazwa wycieczki</label>
                    <input type="text" required name="name" id="name" class="form-control"
                           placeholder="Podaj nazwę wycieczki"/>
                </div>
                <div class="form-group">
                    <label for="departure">Miejsce startowe</label>
                    <input type="text" required name="departure" id="departure" class="form-control"
                           placeholder="Podaj miejsce startowe"/>
                </div>
                <div class="form-group">
                    <label for="destination">Miejsce docelowe</label>
                    <input type="text" required name="destination" id="destination" class="form-control"
                           placeholder="Podaj miejsce docelowe"/>
                </div>
                <div class="form-group">
                    <label for="beginDate">Data wyjazdu</label>
                    <input type="date" required name="beginDate" id="beginDate" class="form-control"
                           placeholder="Podaj datę wyjazdu"/>
                </div>
                <div class="form-group">
                    <label for="endDate">Data powrotu</label>
                    <input type="date" required name="endDate" id="endDate" class="form-control"
                           placeholder="Podaj datę powrotu"/>
                </div>
                <div class="form-group">
                    <label for="days">Długość wycieczki</label>
                    <input type="number" required name="days" id="days" class="form-control"
                           placeholder="Podaj długość wycieczki"/>
                </div>
                <div class="form-group">
                    <label for="price">Wartość wycieczki</label>
                    <input type="number" required name="price" id="price" class="form-control"
                           placeholder="Podaj wartość wycieczki"/>
                </div>
                <div class="form-group">
                    <label for="availableSeats">Ilość dostępnych miejsc </label>
                    <input type="number" required name="availableSeats" id="availableSeats" class="form-control"
                           placeholder="Ilość dostępnych miejsc"/>

                </div>

                <button class="btn btn-primary" type="submit">Dodaj</button>
            </form>
        </div>
        <div class="col-5"></div>
    </div>
</div>

</body>
</html>