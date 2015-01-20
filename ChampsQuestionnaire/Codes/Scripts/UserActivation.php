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

include_once('../phpmailer/examples/test_amazonses.php');

$mail->Subject  = "Welcome To PicsCave";
$address = $email;
$mail->AddAddress($address, $firstname);
$mail->Body = '<a href="http://localhost/PicsCave.com/" style="cursor:pointer; text-decoration:none; color:#000000;">
<h1>&nbsp;&nbsp;<span style="color:#0099FF;">Pics</span>Cave.com</h1>
</a><br/>
<p>Your Profile has been Activated SuccessFully.</p>
<p>Go To PicsCave.com : http://localhost/PicsCave.com/</p>
<p>For More Support: Contact Us @ PicsCave@gmail.com</p>
';
$mail->Send();

header('location:../InnerPages/UserHome.php');

exit();

}
else{
header('location:../index.php');
}
}
?>