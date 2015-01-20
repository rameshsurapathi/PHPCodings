<?php
include_once('../Config/Config.php');

if($_POST['request']=="resendlink"){
$email = mysql_real_escape_string($_POST['email']);
$query = mysql_query("select UserId,FirstName from users where EmailId='$email' and Activation='0' and Status='0'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$userid = $row['UserId'];
$firstname = $row['FirstName'];
}

echo '1';

exit();
}
?>