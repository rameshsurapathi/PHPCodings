<?php
include_once('../Config/Config.php');

if($_POST['request']=="addsecrettext"){
$secrettext1 = mysql_real_escape_string($_POST['secrettext']);
$secrettext = md5($secrettext1);

$query = mysql_query("insert into md5secrettexts(UserId,md5Value,Text) values('".$_SESSION['authenticateduser']."','$secrettext','$secrettext1')") or die(mysql_error());

$query = mysql_query("insert into textwatermark(UserId,SecretText,Date) values('".$_SESSION['authenticateduser']."','$secrettext',now())") or die(mysql_error());
$id = mysql_insert_id();
if($id>0){
echo '1';

$query = mysql_query("select FirstName,Email from user where UserId='".$_SESSION['authenticateduser']."' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$email = $row['Email'];
}
}

$to = $email;
$subject = "Secret Text";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Your SecretText has been added Successfully.</p>
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

if($_POST['request']=="changesecrettext"){
$oldsecrettext = mysql_real_escape_string($_POST['oldsecrettext']);
$newsecrettext1 = mysql_real_escape_string($_POST['newsecrettext']);
$oldsecrettext = md5($oldsecrettext);
$query = mysql_query("Select Id from textwatermark where UserId='".$_SESSION['authenticateduser']."' and SecretText='$oldsecrettext'") or die(mysql_error());
if(mysql_num_rows($query)>0){
$newsecrettext = md5($newsecrettext1);
$newsecrettext1;

$newquery1 = mysql_query("update md5secrettexts SET md5Value='$newsecrettext',Text='$newsecrettext1' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

$newquery = mysql_query("update textwatermark SET SecretText='$newsecrettext' where UserId='".$_SESSION['authenticateduser']."' and SecretText='$oldsecrettext'") or die(mysql_error());

echo '1';

$query = mysql_query("select FirstName,Email from user where UserId='".$_SESSION['authenticateduser']."' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$email = $row['Email'];
}
}

$to = $email;
$subject = "Secret Text";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Your SecretText has been changed Successfully.</p>
<p>If you are unaware of your secret text change,then immediately report to us.</p>
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