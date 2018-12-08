<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dserbtc
  Date: 12/8/2018
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>   Admin Page</title>
    <title>SimpleMagazine 01</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/skin.css" />
    <script type="text/javascript" src="javascript/cufon-yui.js"></script>
    <script type="text/javascript" src="javascript/font.font.js"></script>
    <script type="text/javascript"></script>
</head>
<body>
<<<<<<< HEAD
 <div id="adminPage"> 
        <h1>ADMIN</h1>
        <form action="/adminPage" method="post">
            <label>Name</label>
            <input name="name" type="text"/> <br /><br />
            <label>Bio</label>
            <textarea name="bio"></textarea> <br /><br />
            <input type="submit">
        </form>
      </div>    
=======
<div id="header" class="box">
    <h1 id="logo">simple<span>magazine</span> 01</h1>
    <ul id="nav">
        <li><a href="/index">Homepage</a></li>
        <li><a href="/event">Add event</a></li>
        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <li><a href="/registration">Registration</a></li>
            <li><a href="/login">Login</a></li>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <li><a href="/logout">logout</a></li>
        </c:if>>
    </ul>
</div>
<div style="margin-left: 40px">
    <h1 style="color: #0000cc">ADMIN</h1>
    <h3>Add new establishment</h3>
    <form action="/addEstablishment" method="get">
        <label>Name</label>
        <input name="name" type="text"/>
        <label>bio</label>
        <textarea name="bio"></textarea>
        <input type="submit">
    </form>
</div>
<div id="footer" style="position: absolute; bottom: 0px">
    <div class="main">
        <p class="f-right t-right">Design by <a href="http://www.templatesdock.com/">TemplatesDock</a></p>
        <p class="f-left">Copyright &copy;&nbsp;2010 <a href="#">SimpleMagazine</a></p>
    </div>
</div>
>>>>>>> 2cddc8aebdf4d02194cd956075bacc32ffb2758a
</body>
</html>
