<?php
session_start();
include_once('../Config/Config.php');
if($_POST['request']=="addbestanswer"){
$questionid = mysql_real_escape_string($_POST['questionid']);
$userid = mysql_real_escape_string($_POST['userid']);
$answerid = mysql_real_escape_string($_POST['answerid']);
$query = mysql_query("insert into best(QuestionId,AnswerId) values('$questionid','$answerid')") or die(mysql_error());
$query = mysql_query("select Points from users where UserId='$userid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("update users SET Points='".$row['Points']."'+50 where UserId='$userid'") or die(mysql_error());
}
}

?>