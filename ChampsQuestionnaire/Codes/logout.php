<?php
session_start();
include_once('Config/Config.php');
$updatequery = mysql_query("update users SET LastLogout=now(),Notifications='0' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
session_destroy();
header('location:http://localhost/ChampsQuestionnaire/');
?>

