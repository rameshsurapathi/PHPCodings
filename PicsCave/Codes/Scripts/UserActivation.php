<?php ob_start();?>
<?php
include_once('../Config/Config.php');

if($_GET['request']=="useractivation"){

echo $userid = mysql_real_escape_string($_GET['userid']);

$newquery = mysql_query("select Id from user where UserId='$userid' and Activation='0' and Status='1'") or die(mysql_error());
if(mysql_num_rows($newquery)>0){

$query = mysql_query("Update user SET Activation='1' where UserId='$userid' and Status='1'") or die(mysql_error());

$_SESSION['authenticateduser'] = $userid;

$query = mysql_query("select FirstName,Email from user where UserId='$userid' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$email = $row['Email'];
}
}

mkdir("../Photos/".$_SESSION['authenticateduser']."",0755,true);
mkdir("../Photos/".$_SESSION['authenticateduser']."/Albums",0755,true);
mkdir("../Photos/".$_SESSION['authenticateduser']."/FbAlbums",0755,true);
mkdir("../Thumbs/".$_SESSION['authenticateduser']."",0755,true);
mkdir("../Thumbs/".$_SESSION['authenticateduser']."/Albums",0755,true);
mkdir("../Thumbs/".$_SESSION['authenticateduser']."/FbAlbums",0755,true);

$to = $email;
$subject = "Welcome To PicsCave";
$body = "<a href=\"http://www.PicsCave.com/\" style=\"cursor:pointer; text-decoration:none; color:#000000;\">
<h1><span style=\"color:#0099FF;\">Pics</span><span style=\"color:#000022;\">Cave.com</span></h1>
</a>
<p>Your Profile has been Activated SuccessFully.</p>
<p>Go To PicsCave.com : http://www.PicsCave.com/</p>
<p>For More Support: Contact Us @ support@PicsCave.com</p>";
$headers.= 'MIME-Version: 1.0' . "\r\n";
$headers.= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers.= "From: PicsCave <support@picscave.com>\r\n" .
     "X-Mailer: php";
mail($to, $subject, $body, $headers);

header('location:../InnerPages/UserHome.php');

exit();

}
else{
header('location:../index.php');
}
}
?>
<?php ob_flush();?>