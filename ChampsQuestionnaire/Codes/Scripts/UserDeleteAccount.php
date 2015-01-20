<?php
session_start();
include_once('../Config/Config.php');

if($_POST['request']=="deleteuseraccount"){
$userpass = mysql_real_escape_string($_POST['userpass']);
$userpass1 = md5($userpass);
$query = mysql_query("select FirstName from users where UserId='".$_SESSION['authenticateduser']."' and Password='$userpass1'") or die(mysql_error());
if(mysql_num_rows($query)>0){

// In future
$newquery = mysql_query("update users SET Activation='0' and Status='0' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

// present
$query1 = mysql_query("update users SET FirstName='',LastName='',Email='',Password='',City='',Country='' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
$query2 = mysql_query("update md5encrypts SET Text='',md5Value='' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

$file = '../UserPhotos/'.$_SESSION['authenticateduser'].'.jpg';
  if(is_file($file))
    unlink($file); // delete file
}
echo '1';
}
else{
echo '0';
}
}

