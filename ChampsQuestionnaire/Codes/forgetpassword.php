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
<iframe src="Header.php" scrolling="no" width="100%" frameBorder="0"></iframe>
</div>

<div id="center">
<table border="0" width="100%">
<tr>
<td id="leftspace" width="70%" align="center">
<div id="forgetpassworderror" style="display:none;color:green;font-size:14px;">Please Wait...<br/></div>
<form id="forgetpasswordform" method="post" action="javascript:forgetuserpassword();">
<span style="font-size:20px;">To recover your password, enter your Email Id.</span>
<table border="0" width="50%">
<tr><td colspan="3"><br/></td></tr>
<tr><td>Email Id</td>
<td>&nbsp;</td>
<td><input type="text" name="femail" id="femail" size="30" style="height:30px;"></td>
</tr>
</tr>
<tr><td colspan="3"><br/></td></tr>
<tr><td></td><td>&nbsp;</td>
<td><input type="submit" value="Submit" name="submit" style="height:30px;"></td></tr>
</table>
</form>
</td>
<td id="rightspace" width="30%"></td>
</tr>
</table>
</div>

<div style="height:260px;width:100%;"></div>

<div id="footer">
<?php include_once('Footer.php');?>
</div>
</body>
</html>