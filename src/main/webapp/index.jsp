<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SimpleMagazine 01</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="css/skin.css" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="css/eventsList.css" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/companiesList.css" />

    <script type="text/javascript" src="javascript/cufon-yui.js"></script>
<script type="text/javascript" src="javascript/font.font.js"></script>

<script type="text/javascript">
Cufon.replace('h1, h2, h3, h4, h5, h6', {
    hover: true
});
</script>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
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
        </c:if>

    </ul>
  </div>

  <!-- Begin EventsItem block -->
  <div id="section" class="box">
    <div id="content">
      <ul class="articles box event-list">
       <!-- begin eventsItem -->
          <c:forEach items="${events}" var="item">
        <li>
            <time datetime="2014-07-20">
              <span class="day">${item.date.dayOfMonth}</span>
              <span class="month">${item.date.month.toString().substring(0,3)}</span>
              <span class="year">${item.date.year}</span>
              <span class="time">ALL DAY</span>
            </time>
            <img alt="Independence Day" src="https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg" />
            <div class="info">
              <h2 class="title">${item.subject}</h2>
              <p class="desc">${item.preview}</p>
              <a class="detail" href="/eventDesc?id=${item.id}">Detail</a>
            </div>
        </li>
          </c:forEach>
        <!--end eventsItem -->
      </ul>

    </div>

    <div id="aside">
      <h3 class="text-center">Companies</h3>
      <ul class="menu companiesList">
          <c:forEach items="${comp}" var="item1">

          <li><a href="#">${item1.name}</a></li>
          </c:forEach>

      </ul>
    </div>
  </div>
</div>
<div id="footer">
  <div class="main box">
    <p class="f-right t-right">Design by <a href="http://www.templatesdock.com/">TemplatesDock</a></p>
    <p class="f-left">Copyright &copy;&nbsp;2010 <a href="#">SimpleMagazine</a></p>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
<!-- END PAGE SOURCE -->
</body>
</html>
