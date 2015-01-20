<?php
include_once('../Config/Config.php');

if($_POST['request']=="userforgetpassword"){
$femail = mysql_real_escape_string($_POST['femail']);
$query = mysql_query("select UserId,FirstName,Password from users where EmailId='$femail' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$userid = $row['UserId'];
$firstname = $row['FirstName'];
$password = $row['Password'];
}

$newquery = mysql_query("select Text from md5passwords where UserId='$userid' and md5Value='$password'") or die(mysql_error());
if(mysql_num_rows($newquery)>0){
while($nrow = mysql_fetch_array($newquery)){
$passwordtext = $nrow['Text'];
}
}


echo '1';


}
else{
echo '0';
}
exit();
}

