<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
            <sec:authorize access="isAuthenticated()">
                <%-- Treść strony tylko dla zalogowanych użytkowników --%>
                <ul class="navbar-nav nav nav-pills nav-fill">
                    <li class="nav-item mx-1">
                        <a class="nav-link btn btn-outline-info" role="button" href="/travels/add"><span
                                class="text-lg-left">Dodaj wycieczkę</span></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a class="nav-link btn btn-outline-info" role="button" href="/"><span
                                class="text-lg-left">Strona główna</span></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a class="nav-link btn btn-outline-info" role="button" href="/travels"><span
                                class="text-lg-left">Lista wycieczek</span></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a class="nav-link btn btn-outline-info" role="button" href="/booking/add"><span
                                class="text-lg-left">Dodaj rezerwację</span></a>
                    </li>
                    <li class="nav-item mx-1">
                        <a class="nav-link btn btn-outline-info" role="button" href="/bookings"><span
                                class="text-lg-left">Lista rezerwacji</span></a>
                    </li>
                    <li class="nav-item mx-1">
                        <div style="margin-right: 10px; margin-top: 10px;"> Witaj, <strong>${pageContext.request.userPrincipal.principal.username}!  </strong></div>
                    </li>
                </ul>
                <%--
               <a class="nav-item nav-link btn btn-outline-info" href="/travels/add">Dodaj wycieczkę  </a>
               <a class="nav-item nav-link btn btn-outline-info" href="/travels">  Lista wycieczek  </a>
               <a class="nav-item nav-link btn btn-outline-info" href="/booking/add">  Dodaj rezerwację  </a>
               <a class="nav-item nav-link btn btn-outline-info" href="/bookings">  Lista rezerwacji  </a>

               <div style="margin-right: 20px;"> Witaj, <strong>${pageContext.request.userPrincipal.principal.username}!  </strong></div>
               <form class="form-inline mt-3" method="post" action="/logout">
                   <button class="btn btn-outline-primary" type="submit">Wyloguj się</button>
                   <sec:csrfInput/>
               </form>
                --%>
                <form class="form-inline mt-3" method="post" action="/logout">
                    <button class="btn btn-outline-primary" type="submit">Wyloguj się</button>
                    <sec:csrfInput/>
                </form>
           </sec:authorize>

           <sec:authorize access="!isAuthenticated()">
               <form class="form-inline mr-2 mt-3" method="get" action="/login">
                   <button class="btn btn-outline-primary" type="submit">Zaloguj się</button>
               </form>
               <form class="form-inline mt-3" method="get" action="/register">
                   <button class="btn btn-outline-success" type="submit">Zarejestruj się</button>
               </form>
               <%--
               <strong> <a class="nav-item nav-link" href="/login">Zaaloguj się</a> </strong>
               <strong> <a class="nav-item nav-link" href="/register">Zarejestruj się</a> </strong>
               --%>
            </sec:authorize>
        </div>
    </div>
</nav>
