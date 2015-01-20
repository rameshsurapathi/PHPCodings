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
<td id="leftspace" width="67%">
<?php
include_once('../Config/Config.php');

$aquery = mysql_query("select AdminCategory from admin where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($aquery)>0){
while($arow = mysql_fetch_array($aquery)){
$admincategory = $arow['AdminCategory'];
}
echo '<div align="center" style="font-size:20px;color:green;">Admin Notifications</div>';
include('adminnotifications.php');
echo '<div align="center" style="font-size:20px;color:red;">User Notifications</div>';
include('usernotifications.php');
}
else{
include('usernotifications.php');
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