<?php
include_once('../Config/Config.php');

if($_POST['request']=="insertfeedback"){

$name = mysql_real_escape_string($_POST['name']);
$email = mysql_real_escape_string($_POST['email']);
$feed = mysql_real_escape_string($_POST['feed']);

$query = mysql_query("insert into feedbacks(Name,Email,Feedback,Date) values('$name','$email','$feed',now())") or die(mysql_error());
$id = mysql_insert_id();
if($id>0){
echo '1';


$to = $email;
$subject = "Thank You for your Valuable Feedback";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Hi ".$name.", Thank you for your Valuable Feedback.Your feedback helps us a lot in improving PicsCave.</p>
<p>Go To PicsCave.com : http://www.PicsCave.com/</p>
<p>For More Support: Contact Us @ support@PicsCave.com</p>";
$headers.= 'MIME-Version: 1.0' . "\r\n";
$headers.= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers.= "From: PicsCave <support@picscave.com>\r\n" .
     "X-Mailer: php";
mail($to, $subject, $body, $headers);

}
else{
echo '0';
}
exit();
}
?>