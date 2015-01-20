<?php
session_start();
include_once('../Config/Config.php');
if($_GET['request']=="addlike"){
$questionid = mysql_real_escape_string($_GET['questionid']);
$userid = mysql_real_escape_string($_GET['userid']);
$query = mysql_query("insert into likes(QuestionId,LUserId,Date) values('$questionid','$userid',now())") or die(mysql_error());
$query = mysql_query("select Points from users where UserId='$userid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("update users SET Points='".$row['Points']."'+2 where UserId='$userid'") or die(mysql_error());
}
$query = mysql_query("select Likes from questions where QuestionId='$questionid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("update questions SET Likes='".$row['Likes']."'+1 where QuestionId='$questionid'") or die(mysql_error());
}
echo '<span style="font-size:12px;color:black;">You Liked this.</span>';
}

?>