<?php
session_start();
include_once('../Config/Config.php');
if($_POST['request']=="addfavourite"){
$questionid = mysql_real_escape_string($_POST['questionid']);
$userid = mysql_real_escape_string($_POST['userid']);
$query = mysql_query("insert into favourites(QuestionId,UserId,Date) values('$questionid','$userid',now())") or die(mysql_error());
if($query){
echo $questionid;
}
else{
echo '0';
}
}

if($_POST['request']=="removefavourite"){
$questionid = mysql_real_escape_string($_POST['questionid']);
$userid = mysql_real_escape_string($_POST['userid']);
$query = mysql_query("delete from favourites where QuestionId='$questionid' and UserId='$userid'") or die(mysql_error());
if($query){
echo $questionid;
}
else{
echo '0';
}
}
?>