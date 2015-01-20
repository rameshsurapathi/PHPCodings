<?php
include_once('../Config/Config.php');

if($_POST['request']=="newuserinsert"){

$email = mysql_real_escape_string($_POST['email']);
$query = mysql_query("select UserID from user where Email='$email' and Activation='1' and Status='1'") or die(mysql_error());
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
$gender = mysql_real_escape_string($_POST['gender']);
$day = mysql_real_escape_string($_POST['day']);
$month = mysql_real_escape_string($_POST['month']);
$year = mysql_real_escape_string($_POST['year']);
$dateofbirth = $month.' '.$day.','.$year;
$password = md5($pass);

$query = mysql_query("insert into md5passwords(UserId,md5Value,Text) values('$userid','$password','$pass')") or die(mysql_error());

$query = mysql_query("insert into user(UserId,FirstName,LastName,Email,Password,Gender,DateofBirth,Status,Date) values('$userid','$firstname','$lastname','$email','$password','$gender','$dateofbirth','1',now())") or die(mysql_error());
$id = mysql_insert_id();

if($id>0){


$to = $email;
$subject = "Complete your registration";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Hi ".$firstname."</p>
<p>Welcome To PicsCave.com. You are just one step away from connecting to our Website.</p>
<p>Click the link below to complete your registration :
http://www.PicsCave.com/Scripts/UserActivation.php?request=useractivation&&userid=".$userid."</p>
<p>For More Support: Contact Us @ support@PicsCave.com</p>";
$headers.= 'MIME-Version: 1.0' . "\r\n";
$headers.= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers.= "From: PicsCave <support@picscave.com>\r\n" .
     "X-Mailer: php";
mail($to, $subject, $body, $headers);

echo '1';
}
else{
echo '0';
}

} // end of else 
exit();
}
?>