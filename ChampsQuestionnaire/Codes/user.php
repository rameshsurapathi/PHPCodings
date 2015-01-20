<?php session_start();?>
<html>
<head>
<title>ChampsQuestionnarie</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<script src="JavaScript/Home.js" type="text/javascript"></script>
<script src="JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
</head>
<body>
<div id="header">
<?php
if(!isset($_SESSION['authenticateduser'])){?>
<iframe src="Header.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
<?php } else {?>
<iframe src="Home/Header.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
<?php } ?>

</div>

<div id="center">

<div align="right">

<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td id="leftspace" width="67%">
<?php
include_once('Config/Config.php');
$uidarray = explode("?", $_SERVER['REQUEST_URI']);
$uid = $uidarray[1];
$query = mysql_query("select FirstName,LastName,EmailId,Questions,Answers,Points,Tags,City,Country from users where UserId='$uid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$lastname = $row['LastName'];
$email = $row['EmailId'];
$city = $row['City'];
$country = $row['Country'];
$points = $row['Points'];
$questions = $row['Questions'];
$utags = $row['Tags'];
$answers = $row['Answers'];
}
$query = mysql_query("select UserName from usertype where UserCode<=$points order by UserCode ASC limit 1") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$role = $row['UserName'];
}
$file = 'UserPhotos/profile'.$uid.'.jpg';
if(is_file($file)){
$photo = 'UserPhotos/profile'.$uid.'.jpg';
}
else{
$photo = 'UserPhotos/profilenoimage.png';
}
?>

<table border="0">
<tr><td><img src="<?php echo $photo;?>"></td>
<td>&nbsp;&nbsp;</td>
<td valign="top" style="font-size:20px;color:#666666;"><?php echo '<p>'.$firstname.' '.$lastname.'</p><p>'.$city.', '.$country.'</p><p>Email Id : '.$email.'</p>
<p>Role : '.$role.'</p>';?></td>
</tr>
<tr><td colspan="3"><br/></td></tr>
<tr>
<td valign="top" style="font-size:16px;color:#333333;" colspan="3">
<?php echo '<p>Points : '.$points.'&nbsp;&nbsp;&nbsp;Answers : '.$answers.'</p><p>Questions : '.$questions.'&nbsp;&nbsp;&nbsp;Tags : '.$utags.'</p>';?></td>
</tr>
<tr><td colspan="3"><div style="height:125px;"></div></td></tr>
</table>

</td>
<td id="rightspace" width="30%"></td>
</tr>
</table>
</div>

<div id="footer">
<?php include_once('Footer.php');?>
</div>
</body>
</html>