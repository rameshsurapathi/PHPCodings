<?php
include_once('../Config/Config.php');

if($_POST['request']=="edituser"){

$firstname = mysql_real_escape_string($_POST['firstname']);
$lastname = mysql_real_escape_string($_POST['lastname']);
$gender = mysql_real_escape_string($_POST['gender']);
$dob = mysql_real_escape_string($_POST['dob']);

$query = mysql_query("update user SET FirstName='$firstname',LastName='$lastname',Gender='$gender',DateofBirth='$dob' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

$numofrows = mysql_affected_rows();
if($numofrows>0){
echo '1';
}
else{
echo '0';
}
exit();
}
?>