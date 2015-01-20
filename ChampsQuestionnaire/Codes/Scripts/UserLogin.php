<?php
session_start();
include_once('../Config/Config.php');

if($_POST['request']=="newuserlogin"){
$username = mysql_real_escape_string($_POST['username']);
$userpass = mysql_real_escape_string($_POST['userpass']);
$pass = md5($userpass);
$query = mysql_query("select UserId from users where EmailId='$username' and Password='$pass' and Activation='1' and Status='1'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$userid = $row['UserId'];
}
$_SESSION['authenticateduser'] = $userid;
$updatequery = mysql_query("update users SET LastLogin=now() where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

$aquery = mysql_query("select AdminCategory from admin where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($aquery)>0){
while($arow = mysql_fetch_array($aquery)){
$admincategory = $arow['AdminCategory'];
}
$query = mysql_query("select LastLogin,LastLogout from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$lastlogin = $row['LastLogin'];
$lastlogout = $row['LastLogout'];
}
$query1 = mysql_query("select QuestionId from comments where QuestionId IN (select QuestionId from comments where CUserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res1 = mysql_num_rows($query1);
$query2 = mysql_query("select QuestionId from likes where QuestionId IN (select QuestionId from likes where LUserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res2 = mysql_num_rows($query2);
$query3 = mysql_query("select QuestionId from answers where QuestionId IN (select QuestionId from answers where UserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res3 = mysql_num_rows($query3);
$query4 = mysql_query("select QuestionId from comments where QuestionId IN (select QuestionId from questions where CategoryId='$admincategory') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res4 = mysql_num_rows($query4);
$query5 = mysql_query("select QuestionId from answers where QuestionId IN (select QuestionId from questions where CategoryId='$admincategory') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res5 = mysql_num_rows($query5);
$notifications = $res1+$res2+$res3+$res4+$res5;
}
else{
$query = mysql_query("select LastLogin,LastLogout from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$lastlogin = $row['LastLogin'];
$lastlogout = $row['LastLogout'];
}
$query1 = mysql_query("select QuestionId from comments where QuestionId IN (select QuestionId from comments where CUserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res1 = mysql_num_rows($query1);
$query2 = mysql_query("select QuestionId from likes where QuestionId IN (select QuestionId from likes where LUserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res2 = mysql_num_rows($query2);
$query3 = mysql_query("select QuestionId from answers where QuestionId IN (select QuestionId from answers where UserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
$res3 = mysql_num_rows($query3);
$notifications = $res1+$res2+$res3;
}

$updatequery = mysql_query("update users SET Notifications='$notifications' where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
echo '1';
}
else{
echo '0';
}
exit();
}
?>