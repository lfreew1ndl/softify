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

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="${contextPath}/resources/js/ckeditor/ckeditor.js"></script>

</head>
<body>
<div class="container">

    <form>
        <label for="subject">Subject</label>
        <input type="text" name="subject" id="subject" required>

        <label for="date">Date time: </label>
        <input type="datetime-local" name="date" id="date" required>

        <label for="duration">Duration</label>
        <input type="number" name="duration" id="duration" required>

        <label for="space_amount">space_amount: </label>
        <input type="number" name="space_amount" id="space_amount" required>

        <label for="establishment">Establishment: </label>
        <select id="establishment" required>
            <c:forEach items="${establishment}" var="item">
                <option value="${item.id}">${item.name}</option>
                </c:forEach>
        </select>

        <label for="preview">Preview</label>
        <textarea id="preview" name="preview">

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
</body>
</html>
