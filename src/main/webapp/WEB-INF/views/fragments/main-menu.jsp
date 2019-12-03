<%--
  Created by IntelliJ IDEA.
  User: Valentina
  Date: 01.12.2019
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Best Travels</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="/travels/add">Dodaj wycieczkę</a>
            <a class="nav-item nav-link" href="/travels">Lista wycieczek</a>
            <a class="nav-item nav-link" href="/booking/add">Dodaj rezerwację</a>
            <a class="nav-item nav-link" href="/bookings">Lista rezerwacji</a>
            <a class="nav-item nav-link" href="/registration">Lista rezerwacji</a>
            <strong> <a class="nav-item nav-link" href="/registration">Zaaloguj się</a> </strong>
            <strong> <a class="nav-item nav-link" href="/registration">Zarejestruj się</a> </strong>
        </div>
    </div>
</nav>
