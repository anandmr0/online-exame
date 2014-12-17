<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
<title>Online Test Engine</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
<meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="demo.css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="animate-custom.css" />
<script type="text/javascript">
window.onload = function () {
    document.getElementById("passwordsignup").onchange = validatePassword;
    document.getElementById("passwordsignup_confirm").onchange = validatePassword;
    document.getElementById("fullname").onchange = validateName;
}
function validatePassword(){
var pass1=document.getElementById("passwordsignup").value;
var pass2=document.getElementById("passwordsignup_confirm").value;
if(pass2==pass1)
    document.getElementById("passwordsignup_confirm").setCustomValidity('');
else
     
    document.getElementById("passwordsignup_confirm").setCustomValidity("Passwords Don't Match"); 
//empty string means no validation error
}

</script>
</head>
<body style="background-image: url('wilson.jpg');">
<div class="container">
<!-- Codrops top bar -->
<div class="codrops-top">


</span>
<div class="clr"></div>
</div><!--/ Codrops top bar -->
<header>
    <h2><font color="black"><u>ONLINE TEST ENGINE</u></font></h2>

</header>
<section>				
<div id="container_demo" >

<a class="hiddenanchor" id="toregister"></a>
<a class="hiddenanchor" id="tologin"></a>
<div id="wrapper">
<div id="login" class="animate form">
    <form  action="home.html" autocomplete="on" method="post"> 
<p> 
<label for="fullname" class="uname" data-icon="" >Enter Full Name </label>
<input id="fullname" name="fullname" required="" type="text" placeholder="Full Name"/>
</p>
<p> 
<label for="username" class="uname" data-icon="" > Your Email ID </label>
<input id="username" name="username" required="" type="email" placeholder="mymail@mail.com"/>
</p>
<p class="login button"> 
<input type="submit" value="Submit" /> 
</p>
</form>

</div>



</div>

</div>  
</section>

</div>

</body>
</html>