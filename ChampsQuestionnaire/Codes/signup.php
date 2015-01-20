<?php session_start();?>
<?php include_once('sessioncheck.php');?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To ChampsQuestionnaire.com</title>
<META name="description" content="ChampsQuestionnaire.com  is a question and answer site for professional and enthusiast students. It's 100% free, no registration required.">
<META name="keywords" content="ChampsQuestionnaire">
<META content="General" name="rating">
<META content="all" name="googlebot">
<meta name="robots" content="index, follow">
<meta name="author" content="info@ChampsQuestionnaire.com" />
<meta name="owner" content="http://ChampsQuestionnaire.com" />
<META content="Copyright © ChampsQuestionnaire.com, All Rights Reserved." name="copyright">
<META content="http://www.ChampsQuestionnaire.com" name="ChampsQuestionnaire">
<META content="ChampsQuestionnaire.com" name="organization">
<META content="global" name="distribution">
<META content="document" name="resource-type">
<META content="public" name="security">
<META content="7 days" name="revisit-after">
<META content="en-us" http-equiv="Content-Language">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script src="JavaScript/Main.js" type="text/javascript"></script>
</head>
<body>
<div id="header">
<iframe src="Header.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
</div>

<div id="center">
<table border="0" width="100%">
<tr>
<td id="leftspace" width="70%" align="center">
<div id="successresponse" style="display:none;color:green;font-size:14px;">Please Wait...<br/></div>
<form method="post" action="javascript:usersignup();" id="signupform">
<span style="font-size:20px;">Sign Up.Its Free</span>
<table border="0" width="60%">
<tr><td colspan="3"><br/></td></tr>
<tr><td width="35%">First Name</td>
<td>&nbsp;</td>
<td><input type="text" name="fname" id="fname" size="30" style="height:30px;"></td>
</tr>
<tr><td width="35%">Last Name</td>
<td>&nbsp;</td>
<td><input type="text" name="lname" id="lname" size="30" style="height:30px;"></td>
</tr>
</tr>
<tr><td width="35%">Email Id</td>
<td>&nbsp;</td>
<td><input type="text" name="email" id="email" size="30" style="height:30px;"></td>
</tr>
</tr>
<tr><td width="35%">Password</td>
<td>&nbsp;</td>
<td><input type="password" name="pass" id="pass" size="30" style="height:30px;"></td>
</tr>
</tr>
<tr><td width="35%">Confirm Password</td>
<td>&nbsp;</td>
<td><input type="password" name="cpass" id="cpass" size="30" style="height:30px;"></td>
</tr>
<tr><td colspan="3"><br/></td></tr>
<tr><td></td><td>&nbsp;</td>
<td><input type="submit" value="Submit" name="submit" style="height:30px;">&nbsp;
<input type="reset" value="Reset" name="reset" style="height:30px;"></td></tr>
<tr><td></td><td>&nbsp;</td><td style="font-size:12px;">By registering, you agree to the <a href="#" style="text-decoration:none;">privacy policy</a> and 
<a href="#" style="text-decoration:none;">terms of service</a>.</td></tr>
</table>
</form>
</td>
<td id="rightspace" width="30%"></td>
</tr>
</table>
</div>

<div style="height:96px;width:100%;"></div>

<div id="extraspace" style="height:245px;width:100%;display:none;"></div>

<div id="footer">
<?php include_once('Footer.php');?>
</div>
</body>
</html>