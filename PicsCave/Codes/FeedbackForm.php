<?php ob_start();?>
<?php session_start();?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="../Images/favicon.jpg" type="image/jpeg">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To PicsCave.com</title>
<META name="description" content="PicsCave.com protects the authenticity of your photos through watermarking algorithm.">
<META name="keywords" content="facebook,pics,facebook pics,fb,fbpics,digital watermarking,invisible watermarking,text watermarking,protect images,protect pics, picscave">
<META content="General" name="rating">
<META content="all" name="googlebot">
<meta name="robots" content="index, follow">
<meta name="author" content="info@picscave.com" />
<meta name="owner" content="http://picscave.com" />
<META content="Copyright © picscave.com, All Rights Reserved." name="copyright">
<META content="http://www.picscave.com" name="picscave">
<META content="picscave.com" name="organization">
<META content="global" name="distribution">
<META content="document" name="resource-type">
<META content="public" name="security">
<META content="7 days" name="revisit-after">
<META content="en-us" http-equiv="Content-Language">
<style type="text/css">
body {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style>
<script src="JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script src="JavaScript/Main.js" type="text/javascript"></script>
</head>
<body>
<table border="0" align="center" width="100%" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
<td align="left" valign="top" background="Images/HeaderBg.png">
<?php include_once('InnerPages/Header.php');?>
</td
></tr>
<tr>
<td valign="top" background="" style="height:490px;">

<br/>
<br/>
<div id="feedbackformresponse" style="font-size:12px; color:blue;" align="center"></div>

<form action="javascript:givefeedback();" method="post" name="feedbackform" id="feedbackform">
<table border="0" align="center">
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2">Your Feedback is very valuable to us</td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td>Name</td>
<td>&nbsp;<input type="text" name="name" id="name" size="30" style="height:30px;" /></td>
</tr>
<tr>
<td>Email Address</td>
<td>&nbsp;<input type="text" name="email" id="email" size="30" style="height:30px;" /></td>
</tr>
<tr>
<td>Feedback</td>
<td>&nbsp;<textarea id="feed" name="feed" rows="3" cols="23"></textarea>&nbsp;<span style="font-size:10px; color:#000000;">Maximum 255 characters</span></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td></td>
<td>&nbsp;<input type="submit" value="Submit" name="feedback" id="feedback" style="height:30px;" /></td></tr>
</table>
</form>

</td>
</tr>
<tr>
<td height="70" align="center" valign="middle" id="footer" width="100%" background="Images/HeaderBg.png">
<br/><br/>
<?php include_once('InnerPages/Footer.php');?>
</td>
</tr>
</table>
</body>
</html>
<?php ob_flush();?>