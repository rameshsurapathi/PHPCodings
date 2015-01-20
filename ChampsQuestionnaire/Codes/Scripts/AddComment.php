<?php
session_start();
include_once('../Config/Config.php');
if($_GET['request']=="addcomment"){
$comment = str_replace("+"," ",mysql_real_escape_string($_GET['comment']));
$questionid = mysql_real_escape_string($_GET['questionid']);
$userid = mysql_real_escape_string($_GET['userid']);

$query = mysql_query("insert into comments(Comment,CUserId,QuestionId,Date) values('$comment','$userid','$questionid',now())") or die(mysql_error());
$query = mysql_query("select Points from users where UserId='$userid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("update users SET Points='".$row['Points']."'+3 where UserId='$userid'") or die(mysql_error());
}
$query = mysql_query("select * from comments where QuestionId='$questionid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("select FirstName,Points from users where UserId='".$row['CUserId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
$name = $row1['FirstName'];
}
if(isset($_SESSION['authenticateduser'])&&$_SESSION['authenticateduser']==$row['CUserId']){
if(isset($_GET['flag'])&&$_GET['flag']=="answer"){
$edit= '<a href="javascript:editanswercommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deleteanswercomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
else{
$edit= '<a href="javascript:editcommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deletecomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
}
else{$edit=''; $delete='';}
echo '<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr><td width="10%"><td width="7%" bgcolor="#fffffff"><img src="UserPhotos/'.$row['CUserId'].'.jpg" width="50" height="50"></td>
<td width="15%" style="color:#008aaf;" valign="top" bgcolor="#fffffff">&nbsp;'.$name.'</td><td width="63%" align="left" valign="top" bgcolor="#fffffff">
'.$row['Comment'].'&nbsp;<span style="color:#85a950;font-size:12px;"> asked '.$row['Date'].'</span>&nbsp;'.$edit.'&nbsp;'.$delete.'</td></tr>
<tr><td width="10%"><td colspan="3" id="editbox'.$row['Id'].'"></td></tr>
</table><br/>';
}
}

}
elseif($_GET['request']=="showeditbox"){
$commentid = mysql_real_escape_string($_GET['commentid']);
$questionid = mysql_real_escape_string($_GET['questionid']);
$userid = mysql_real_escape_string($_GET['userid']);
$flag = mysql_real_escape_string($_GET['flag']);
$query = mysql_query("select Comment from comments where Id='$commentid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$comment = $row['Comment'];
}
echo '<form action="javascript:editcomment('.$commentid.',\''.$userid.'\',\''.$questionid.'\','.$flag.');" method="post" id="editbox'.$commentid.'">
<table border="0"  width="100%">
<tr><td width="9%"></td>
<td><input type="text" name="ncomment" id="ncomment" style="color:#000000;height:60px;width:580px;" value="'.$comment.'"></td>
</tr>
<tr><td width="9%"></td><td><input type="submit" value="Update Comment" name="updatecomment" style="height:30px;">&nbsp;
<a href="javascript:closeeditbox('.$commentid.');" style="font-size:12px;color:#000000;">close</a></td></tr>
</table>
</form>';
}
elseif($_GET['request']=="editcomment"){
$commentid = mysql_real_escape_string($_GET['commentid']);
$comment = str_replace("+"," ",mysql_real_escape_string($_GET['comment']));
$questionid = mysql_real_escape_string($_GET['questionid']);
$userid = mysql_real_escape_string($_GET['userid']);
$query = mysql_query("update comments SET Comment='$comment' where Id='$commentid'") or die(mysql_error());
$query = mysql_query("select * from comments where QuestionId='$questionid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("select FirstName from users where UserId='".$row['CUserId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
$name = $row1['FirstName'];
}
if(isset($_SESSION['authenticateduser'])&&$_SESSION['authenticateduser']==$row['CUserId']){
if(isset($_GET['flag'])&&$_GET['flag']==1){
$edit= '<a href="javascript:editanswercommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deleteanswercomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
else{
$edit= '<a href="javascript:editcommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deletecomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
}
else{$edit=''; $delete='';}
echo '<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr><td width="10%"><td width="7%" bgcolor="#fffffff"><img src="UserPhotos/'.$row['CUserId'].'.jpg" width="50" height="50"></td>
<td width="15%" style="color:#008aaf;" valign="top" bgcolor="#fffffff">&nbsp;'.$name.'</td><td width="63%" align="left" valign="top" bgcolor="#fffffff">
'.$row['Comment'].'&nbsp;<span style="color:#85a950;font-size:12px;"> asked '.$row['Date'].'</span>&nbsp;'.$edit.'&nbsp;'.$delete.'</td></tr>
<tr><td width="10%"><td colspan="3" id="editbox'.$row['Id'].'"></td></tr>
</table><br/>';
}
}

}
elseif($_GET['request']=="deletecomment"){
$commentid = mysql_real_escape_string($_GET['commentid']);
$questionid = mysql_real_escape_string($_GET['questionid']);
$userid = mysql_real_escape_string($_GET['userid']);
$query = mysql_query("delete from comments where Id='$commentid'") or die(mysql_error());
$query = mysql_query("select Points from users where UserId='$userid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("update users SET Points='".$row['Points']."'-3 where UserId='$userid'") or die(mysql_error());
}
$query = mysql_query("select * from comments where QuestionId='$questionid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("select FirstName from users where UserId='".$row['CUserId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
$name = $row1['FirstName'];
}
if(isset($_SESSION['authenticateduser'])&&$_SESSION['authenticateduser']==$row['CUserId']){
if(isset($_GET['flag'])&&$_GET['flag']==1){
$edit= '<a href="javascript:editanswercommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deleteanswercomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
else{
$edit= '<a href="javascript:editcommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deletecomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$questionid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
}
else{$edit=''; $delete='';}
echo '<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr><td width="10%"><td width="7%" bgcolor="#fffffff"><img src="UserPhotos/'.$row['CUserId'].'.jpg" width="50" height="50"></td>
<td width="15%" style="color:#008aaf;" valign="top" bgcolor="#fffffff">&nbsp;'.$name.'</td><td width="63%" align="left" valign="top" bgcolor="#fffffff">
'.$row['Comment'].'&nbsp;<span style="color:#85a950;font-size:12px;"> asked '.$row['Date'].'</span>&nbsp;'.$edit.'&nbsp;'.$delete.'</td></tr>
<tr><td width="10%"><td colspan="3" id="editbox'.$row['Id'].'"></td></tr>
</table><br/>';
}
}
}
?>