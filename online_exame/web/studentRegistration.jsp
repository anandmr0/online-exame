<html>

<head>
<title>HOME</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style2.css" />
<link rel="stylesheet" type="text/css" href="formcss.css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="modernizr-1.5.min.js"></script>
<script type="text/javascript">
window.onload = function () {
    document.getElementById("password").onchange = validatePassword;
    document.getElementById("password_confrim").onchange = validatePassword;
    document.getElementById("fullname").onchange = validateName;
}
function validatePassword(){
var pass1=document.getElementById("password").value;
var pass2=document.getElementById("password_confrim").value;
if(pass2==pass1)
    document.getElementById("password_confrim").setCustomValidity('');
else
     
    document.getElementById("password_confrim").setCustomValidity("Passwords Don't Match"); 
//empty string means no validation error
}

</script>
</head>

<body style="background-image: url('wilson.jpg')">
<div id="main">
<header>

<!-- class="logo_colour", allows you to change the colour of the text -->
<div id="headertitle">Online Test Engine</div>

<nav>
<ul class="sf-menu" id="nav">
<li><a href="home.html">Home</a></li>
<li><a href="#">Registration</a>
<ul>
<li><a href="studentRegistration.jsp">Student</a></li>
<li><a href="instituteRegistration.jsp">Institute</a></li>
<li><a href="organizationRegistration.jsp">Organization</a></li>
</ul>
</li>
<li><a href="page.html">Online Exam</a>
<ul>
<li><a href="practicetest.jsp">Practice Test</a></li>
<li><a href="finaltest.jsp">Final Test</a></li>  
</ul>

</li>
<li>
<a href="#">Conduct Exam</a>
<ul>
<li><a href="addpaper.jsp">Add Paper</a></li>
<li><a href="#">Modify Paper</a></li>
<li><a href="#">Delete Paper</a></li>
</ul>
</li>
<li>
<a href="#">Results</a>
<ul>
<li><a href="#">Practice Test Result</a></li>
<li><a href="finalresult.jsp">Final Test Result</a></li>  
</ul>
</li>

<li><a href="#">Contact Us</a>
</li>
<li><a href="index.html">Logout</a>
</li>
</ul>
</nav>
</header>
   
    <div id="site_content">
<div id="sidebar_container">
<div class="sidebar">
<h1>Latest News</h1>
<h1>New Website Launched</h1>
<p>We've designed our own website. Take a look around and let us know what you think.</p>
</div>
<div class="sidebar">
<h1>About Us</h1>
<h1>How is this site helpful to institutes/Organization?</h1>
<p>This site is a medium by which institutes/Organizations can conduct online exams.
They can register on the site and then can enter the exam details and questions.
The institutes also provide a list of students that are eligible for the exam.</p>
<p>.</p>
</div>
<div class="sidebar">
<h1>Contact Us</h1>
<p>We'd love to hear from you. Call us, <a href="#">email us</a> or complete our <a href="contact.php">contact form</a>.</p>
</div>
</div>
        <form id="signup" action="studentregistrationdata.jsp">
<h1>STUDENT REGISTRATION</h1>

<h1>Fields marked (*) are required</h1>

<fieldset>
<legend>Your details</legend>

<ol>
<li>
<label for="fullname">Full Name *</label> 
<input type="text" id="fullname" name="fullname" placeholder="Full name" pattern=".{7,}" required title="Please Enter Full Name" />
</li>
<li>
<label for="email">Email *</label> 
<input type="email" id="email" name="email" placeholder="e.g. ryan@example.net" title="Please enter a valid email" required />
<p class="validation01">
<span class="invalid">Please enter a valid email address e.g. ryan@example.com</span>
<span class="valid">Thank you for entering a valid email</span>
</p>
</li>
<li>
<label for="tel">Phone *</label> 
<input type="tel" id="tel" name="tel" pattern="\d{10}" placeholder="Please enter a ten digit phone number" required />
<p class="validation01">
<span class="invalid">No spaces or brackets e.g. 0390001234</span>
<span class="valid">That's what we wanted!</span>
</p>
</li>
</ol>
</fieldset>

<fieldset>
<legend>Address Information</legend>
<ol>
<li>
<label for="address">Address *</label>
<input id="address" name="address" type="text"  required="" />
</li>
<li>
<label for="city">City *</label>
<input id="city" name="city" type="text" required />
</li>
<li>
<label for="pincode">Pin code *</label>
<input id="pincode" name="pincode" type="number" min="1001" max="800000" maxlength="6" required />
<p class="validation01">
<span class="invalid">Your postcode must follow the pattern e.g 401105</span>
<span class="valid">Thank you your postcode is in the correct range</span>
</p>
</li>
<li>
<label for="state">State</label>
<select name="state" id="state">
    <option selected>Maharashtra</option>
<option>Delhi</option>
<option>Uttar Pradesh </option>
<option>Gujarat</option>
<option>Rajasthan</option>
<option>Bihar</option>
<option>madhya pradesh</option>

<option>uttarakhand</option>
<option>punjab</option>
</select>
</li>
</ol>
</fieldset>

<fieldset>
<legend>Membership information</legend>
<ol>		
<li>
<label for="loginname">Login Name *</label>
<input id="loginname" name="loginname" type="text" pattern="\w{4,}" placeholder="Atleast 4 alphanumeric characters" required />
</li>
<li>
<label for="password">Password *</label>
<input id="password" name="password" type="password" title="Minimum 8 characters, one number, one uppercase and one lowercase letter" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*" required /> 
<p class="validation01">
<span class="invalid">Minimum 8 characters, one number, one uppercase letter and one lowercase letter</span>
<span class="valid">Your password meets our requirements, thank you.</span>
</p>
<label for="password_confrim">Confirm Your Password *</label>
<input id="password_confrim" name="password_confrim" type="password" title="Minimum 8 characters, one number, one uppercase and one lowercase letter" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*" required /> 
<p class="validation01">
<span class="invalid">Minimum 8 characters, one number, one uppercase letter and one lowercase letter</span>
<span class="valid">Your password meets our requirements, thank you.</span>
</p>
</li>
<li>
    
</li>
</ol>

</fieldset>

<input type="submit" value="Register" style="background-color: #4b8df9; height: 30px; width: 65px;" />
<input type="reset" value="Clear" style="background-color: #4b8df9;height: 30px; width: 65px;"/>

</form>
        
</div>
</div>
</div>
<footer>
<p><a href="index.html">Home</a>  | <a href="about.html">About Us</a> | <a href="contact.html">Contact Us</a></p>
<p>Copyright &copy;Online Test Engine |Design by Anand maurya</p>
</footer>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
<!-- javascript at the bottom for fast page loading -->
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.easing-sooper.js"></script>
<script type="text/javascript" src="jquery.sooperfish.js"></script>
<script type="text/javascript" src="image_fade.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$('ul.sf-menu').sooperfish();
});
</script>
</body>
</html>
