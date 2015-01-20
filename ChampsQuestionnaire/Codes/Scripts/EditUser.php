<?php
session_start();
include_once('../Config/Config.php');

if($_POST['request']=="edituser"){

$firstname = mysql_real_escape_string($_POST['firstname']);
$lastname = mysql_real_escape_string($_POST['lastname']);
$city = mysql_real_escape_string($_POST['city']);
$country = mysql_real_escape_string($_POST['country']);

$query = mysql_query("update users SET FirstName='$firstname',LastName='$lastname',City='$city',Country='$country' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

$numofrows = mysql_affected_rows();
if($numofrows>0){
echo '1';
}
else{
echo '0';
}
}
?>