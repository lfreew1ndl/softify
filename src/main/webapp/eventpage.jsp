<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/skin.css" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/eventsList.css" />
    <script type="text/javascript" src="javascript/cufon-yui.js"></script>
    <script type="text/javascript" src="javascript/font.font.js"></script>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="${contextPath}/resources/js/ckeditor/ckeditor.js"></script>

</head>
<body>
<div class="main">
   <div id="header" class="box">
     <h1 id="logo">simple<span>magazine</span> 01</h1>
     <ul id="nav">
       <li><a href="index.html">Homepage</a></li>
       <li class="current"><a href="subpage.html">Add event</a></li>
       <li><a href="#">Registration</a></li>
       <li><a href="#">Login</a></li>
     </ul>
   </div>
<div class="container">
    <form>
        <label for="subject">Subject</label>
        <input type="text" name="subject" id="subject" required><br>

        <label for="date">Date time: </label>
        <input type="datetime-local" name="date" id="date" required><br>

        <label for="duration">Duration</label>
        <input type="number" name="duration" id="duration" required><br>

        <label for="space_amount">space_amount: </label>
        <input type="number" name="space_amount" id="space_amount" required><br>

        <label for="establishment">Establishment: </label>
        <select id="establishment" required>
            <c:forEach items="${establishment}" var="item">
                <option value="${item.id}">${item.name}</option>
                </c:forEach>
        </select><br>

        <label for="preview">Preview</label>
        <textarea id="preview" name="preview"><br>

        </textarea>

        <div class="adjoined-bottom">
            <div class="grid-container">
                <div class="grid-width-100">
                    <div id="editor">
                        <h1>Hello wfdsfsdorld!</h1>
                        <p>I'm an instance of <a href="https://ckeditor.com">CKEditor</a>.</p>
                    </div>
                </div>
            </div>
        </div>




        <button type="button" onClick="addEvent()">Submit</button>
    </form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/sample.js"></script>
<script src="${contextPath}/resources/js/event.js"></script>
</div>
<div id="footer">
  <div class="main box">
    <p class="f-right t-right">Design by <a href="http://www.templatesdock.com/">TemplatesDock</a></p>
    <p class="f-left">Copyright &copy;&nbsp;2010 <a href="#">SimpleMagazine</a></p>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>
