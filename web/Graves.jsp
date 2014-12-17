<%@ page import="java.util.List" %>
<%@ page import="edu.cs.ubbcluj.ro.model.Grave" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>

    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="jquery.js"></script>
</head>
<body>
<div class="menu">
    <div>
        <img class="logo" src="resources/logo.gif" alt="logo">
    </div>
    <ul class="nav">
        <li>
            <a href="">
                <span>Programare inmormantari</span>
            </a>
        </li>
        <li>
            <a href="">
                <span>Persoane</span>
            </a>
        </li>
        <li>
            <a href="" class="active">
                <span>Morminte</span>
            </a>
        </li>
        <li>
            <a href="">
                <span>Evidenta sesizarilor</span>
            </a>
        </li>
        <li>
            <a href="">
                <span>Evidenta contractelor de concesiune</span>
            </a>
        </li>
        <li>
            <a href="">
                <span>Evidenta cereri locuri</span>
            </a>
        </li>
        <li>
            <a href="">
                <span>Iesire</span>
            </a>
        </li>
    </ul>
</div>

<div class="content">
    <%
        if (session.getAttribute("graves") != null) {
            List<Grave> graves = (List<Grave>) session.getAttribute("graves");
            for (int i = 0; i < graves.size(); i++) {
                out.println(graves.get(i).getNumber());
            }
            session.removeAttribute("graves");
        }
    %>
</div>
</body>
</html>