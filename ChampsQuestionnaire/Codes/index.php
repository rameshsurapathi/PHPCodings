<?php session_start();?>
<?php include_once('sessioncheck.php');?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To ChampsQuestionnaire.com</title>
<META name="description" content="ChampsQuestionnaire.com  is a question and answer site for professional and enthusiast students. It's 100% free, no registration required. ">
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
<td id="leftspace" width="80%">
<?php
include_once('Config/Config.php');
$query = mysql_query("select CategoryId,CategoryName,Questions,Users,Tags,Views from categories where Status='1'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$width=strlen($row['CategoryName'])*15;
echo '<table border="0" width="100%">
<tr><td>&nbsp;&nbsp;</td>
<td width="30%"><div style="background-color:#333333;height:28px;width:'.$width.'px;color:#FFFFFF;font-size:20px;cursor:pointer;" 
onclick="window.open(\'questions.php?'.$row['CategoryId'].'\',\'_parent\');">&nbsp;'.$row['CategoryName'].'&nbsp;</div></td>
<td width="18%" style="font-size:18px;">'.$row['Questions'].' Questions</td>
<td width="13%" style="font-size:18px;">'.$row['Users'].' Users</td>
<td width="13%" style="font-size:18px;">'.$row['Tags'].' Tags</td>
<td width="13%" style="font-size:18px;">'.$row['Views'].' Views</td>
</td>
</tr>
</table><br/>';
}
?>
</td>
<td id="rightspace" width="20%"></td>
</tr>
</table>
</div>

<div id="footer">
<?php include_once('Footer.php');?>
</div>
</body>
</html>