<?php
include_once('../Config/Config.php');

if($_POST['request']=="newuserinsert"){

$email = mysql_real_escape_string($_POST['email']);
$query = mysql_query("select UserId from users where EmailId='$email' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
echo '2';
}
else{

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$userid='';
$size = strlen( $chars );
for( $i = 0; $i < 9; $i++ ) {
	$userid .= $chars[ rand( 0, $size - 1 ) ];
}

$firstname = mysql_real_escape_string($_POST['firstname']);
$lastname = mysql_real_escape_string($_POST['lastname']);
$pass = mysql_real_escape_string($_POST['pass']);
$password = md5($pass);

$query = mysql_query("insert into md5encrypts(UserId,Text,md5Value) values('$userid','$pass','$password')") or die(mysql_error());

$query = mysql_query("insert into users(UserId,FirstName,LastName,EmailId,Password,Questions,Answers,Points,Tags,Activation,Status,LastLogin,LastLogout,Notifications,Date,City,Country) 
values('$userid','$firstname','$lastname','$email','$password','0','0','100','0','0','0','','','0',now(),'','')") or die(mysql_error());
echo '1';

} // end of else 
exit();
}
?>