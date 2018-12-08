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
    <title>ADMIN</title>
</head>
<body>
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
</body>
</html>
