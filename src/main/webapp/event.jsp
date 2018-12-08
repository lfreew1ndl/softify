<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>SimpleMagazine 01</title>
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
   <link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" />
   <link rel="stylesheet" media="screen,projection" type="text/css" href="css/skin.css" />
   <link rel="stylesheet" media="screen,projection" type="text/css" href="css/style.css">
   <script type="text/javascript" src="javascript/cufon-yui.js"></script>
   <script type="text/javascript" src="javascript/font.font.js"></script>
   <script type="text/javascript">
   /*Cufon.replace('h1, h2, h3, h4, h5, h6', {
       hover: true
   });*/
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
         <li><a href="/registration">Registration</a></li>
         <li><a href="/login">Login</a></li>
       </ul>
     </div>

     <div class="event">
        <div class="head" name="head">
           <div class="title" name="">
              <h1>${event.subject}</h1>
              <h4>${event.date}</h4>
           </div>
           <div class="logo" name="logo">
              <img class="logo" src="resources/images/logo.png" alt="logo">
           </div>
        </div>
        <div class="info" name="info">
            <p>
            ${event.description}</p>

        </div>
        <div class="reg" name="reg">
           <div class="amount">
             <h4>${event.space_amount} Left</h4>
           </div>
           <div class="registration">
             <a href="#">registration</a>
           </div>
        </div>
  </div>
  <footer>
     <div class="main box">
        <p class="f-right t-right">Design by <a href="http://www.templatesdock.com/">TemplatesDock</a></p>
        <p class="f-left">Copyright &copy;&nbsp;2010 <a href="#">SimpleMagazine</a></p>
     </div>
  </footer>
  <script type="text/javascript">Cufon.now();</script>
   <!-- END PAGE SOURCE -->
</body>
</html>
