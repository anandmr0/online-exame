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
<li><a href="#">Online Exam</a>
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
<div id="content">
<ul class="slideshow">
<li class="show"><img width="706" height="270" src="study.jpg" alt="image one" /></li>
<li><img width="706" height="270" src="mathproblem_3.jpg" alt="image two" /></li>
<li><img width="706" height="270" src="pencils.jpg" alt="image three" /></li>
</ul>
<form id="signup" action="http://localhost:8080/online_exame/organization_question" method="post" >
<h1 align="center">SET EXAM PAPER</h1>

<h1>Fields marked (*) are required</h1>

<fieldset>
<legend></legend>

<ol>
<fieldset>
<legend>Question Details</legend>
<ol>
    <li>
<label for="rnumber">Registration No *</label> 
<input type="text" id="rnumber" name="rnumber" placeholder="Registration no" title="Please enter a valid Registration no" required />
</li>
<li>
<label for="examname">Exam Name *</label> 
<input type="text" id="examname" name="examname" placeholder="e.g: Java" required="" />
</li>
<li>
<label for="question_no">Question No *</label> 
<input type="text" id="question_no" name="question_no" placeholder="e.g: 1" required="" />
</li>
<li>
<label for="question">Question *</label> 
<textarea id="question" name="question" required="" placeholder="Question"></textarea>
</li>
</ol>

</fieldset>
<fieldset>
<legend>Answer Details</legend>
<ol>		
<li>
<label for="a">A *</label> 
<input type="text" id="a" name="a" required="" placeholder="First Answar" height="10"/>
</li>
<li>
<label for="b">B *</label> 
<input type="text" id="b" name="b" required="" placeholder="Second Answar" height="10"/>
<li>
<label for="c">C *</label> 
<input type="text" id="c" name="c" required="" placeholder="Third Answar" height="10"/>
</li>
<li>
<label for="d">D *</label> 
<input type="text" id="d" name="d" required="" placeholder="Forth Answar" height="10"/>
</li>
<li>
    <label for="correctanswer">Correct Answer *</label> 
<input type="text" id="correctanswer" name="correctanswer" required="" placeholder="Correct Answer" height="10"/>
</li>
</ol>

</fieldset>

<input type="submit" value="Add Question" style="background-color: #4b8df9; height: 30px; width: 90px;" />

<input type="submit" value="Save Exam " style="background-color: #4b8df9; height: 30px; width: 75px;" />
<input type="reset" value="Clear" style="background-color: #4b8df9;height: 30px; width: 65px;"/>

</form>
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
