<?php
session_start();
include_once('../Config/Config.php');
if(isset($_POST['request'])&&$_POST['request']=="addanswer"){
$questionid = mysql_real_escape_string($_POST['questionid']);
$userid = mysql_real_escape_string($_POST['userid']);
$answer = mysql_real_escape_string($_POST['answer']);

$query = mysql_query("select Answers,Points from users where UserId='$userid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("update users SET Answers='".$row['Answers']."'+1,Points='".$row['Points']."'+10 where UserId='$userid'") or die(mysql_error());
}
$query = mysql_query("select Answers from questions where QuestionId='$questionid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("update questions SET Answers='".$row['Answers']."'+1 where QuestionId='$questionid'") or die(mysql_error());
}

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$answerid='';
$size = strlen( $chars );
for( $i = 0; $i < 9; $i++ ) {
	$answerid .= $chars[ rand( 0, $size - 1 ) ];
}

$query = mysql_query("insert into answers(AnswerId,QuestionId,UserId,Answer,Date) values('$answerid','$questionid','$userid','$answer',now())") or die(mysql_error());
if($query){
echo $questionid;
}
else{
echo '0';
}
}
elseif(isset($_GET['request'])&&$_GET['request']=="showanswerbox"){
$answerid = mysql_real_escape_string($_GET['answerid']);
$userid = mysql_real_escape_string($_GET['userid']);
$query = mysql_query("select Answer from answers where UserId='$userid' and AnswerId='$answerid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$answer = $row['Answer'];
}

echo '<table border="0" width="100%">
<tr><td width="3%"><td><h3>Edit Your Answer</h3></td></tr>
<tr><td width="3%"></td><td><textarea id="uanswer'.$answerid.'" name="uanswer'.$answerid.'" rows="10" cols="70">'.$answer.'</textarea></td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td width="3%"><td>
<div align="center" style="background-color:#333333;height:28px;width:80px;color:#FFFFFF;font-size:16px;cursor:pointer;" onclick="javascript:
updateanswer(\''.$answerid.'\',\''.$userid.'\');">Update</div>
</td></tr>
</table>';

echo '
<script type="text/javascript">
	 new nicEditor().panelInstance("uanswer'.$answerid.'");
</script>';
}

elseif(isset($_POST['request'])&&$_POST['request']=="updateanswer"){
$answerid = mysql_real_escape_string($_POST['answerid']);
$userid = mysql_real_escape_string($_POST['userid']);
$answer = mysql_real_escape_string($_POST['answer']);
$query = mysql_query("select QuestionId from answers where UserId='$userid' and AnswerId='$answerid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){$qid = $row['QuestionId'];}

$query = mysql_query("update answers SET Answer='$answer' where UserId='$userid' and AnswerId='$answerid'") or die(mysql_error());
if($query){
echo $qid;
}
else{
echo '0';
}
}
?>