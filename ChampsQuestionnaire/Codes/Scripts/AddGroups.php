<?php
session_start();
include_once('../Config/Config.php');
if($_POST['request']=="addgroup"){
$groupid = mysql_real_escape_string($_POST['groupid']);
$userid = mysql_real_escape_string($_POST['userid']);
$query = mysql_query("select Users from categories where CategoryId='$groupid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$updatequery = mysql_query("update categories SET Users='".$row['Users']."'+1 where CategoryId='$groupid'") or die(mysql_error());
}
$query = mysql_query("insert into grouptags(GroupId,UserId,Date) values('$groupid','$userid',now())") or die(mysql_error());
if($query){
echo $groupid;
}
else{
echo '0';
}
}

if($_POST['request']=="removegroup"){
$groupid = mysql_real_escape_string($_POST['groupid']);
$userid = mysql_real_escape_string($_POST['userid']);
$query = mysql_query("select Users from categories where CategoryId='$groupid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$updatequery = mysql_query("update categories SET Users='".$row['Users']."'-1 where CategoryId='$groupid'") or die(mysql_error());
}
$query = mysql_query("delete from grouptags where GroupId='$groupid' and UserId='$userid'") or die(mysql_error());
if($query){
echo $groupid;
}
else{
echo '0';
}
}
?>