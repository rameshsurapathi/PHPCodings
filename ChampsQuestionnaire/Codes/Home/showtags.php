<?php session_start();?>
<?php
if(!isset($_SESSION['authenticateduser'])){
header('location:http://localhost/ChampsQuestionnaire/login.php');
}
?>
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
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<script src="../JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script src="../JavaScript/Home.js" type="text/javascript"></script>
</head>
<body>

<div id="header">
<iframe src="Header.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
</div>

<div id="center">
<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td id="leftspace" width="67%" height="400" valign="top">
Groups you are following<br/>
<?php
include_once('../Config/Config.php');
$query = mysql_query("select GroupId from grouptags where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("select CategoryName from categories where CategoryId='".$row['GroupId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
echo '<span style="background-color:#555555;height:28px;color:#FFFFFF;font-size:18px;cursor:pointer;" onclick="window.open(\'../questions.php?'.$row['GroupId'].'\',\'_parent\');">'.$row1['TagName'].'</span>&nbsp;';
}
}
}
else{
echo '<div align="center" style="font-size:24px;color:red;">No groups are found</div>';
}
?>
<br/>
User created tags.<br/>
<?php
$query = mysql_query("select TagId from usertags where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("select TagName from tags where TagId='".$row['TagId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
echo '<span style="background-color:#555555;height:28px;color:#FFFFFF;font-size:18px;cursor:pointer;" onclick="window.open(\'../questions.php?'.$row['TagId'].'\',\'_parent\');">'.$row1['TagName'].'</span>&nbsp;';
}
}
}
else{
echo '<div align="center" style="font-size:24px;color:red;">No tags are found</div>';
}
?>

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