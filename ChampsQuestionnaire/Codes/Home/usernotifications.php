<?php
$query = mysql_query("select LastLogin,LastLogout from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$lastlogin = $row['LastLogin'];
$lastlogout = $row['LastLogout'];
}


$query1 = mysql_query("select QuestionId from comments where QuestionId IN (select QuestionId from comments where CUserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
if(mysql_num_rows($query1)>0){
while($row1 = mysql_fetch_array($query1)){
$query = mysql_query("select * from questions where QuestionId='".$row1['QuestionId']."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
echo '<div style="font-size:16px;color:grey;">New Comments</div>';
include('commoncode.php');
}
$query = mysql_query("select * from questions where QuestionId IN (select QuestionId from answers where AnswerId='".$row1['QuestionId']."')") or die(mysql_error());
if(mysql_num_rows($query)>0){
echo '<div style="font-size:16px;color:grey;">New Comments</div>';
include('commoncode.php');
}
}
}

$query2 = mysql_query("select QuestionId from likes where QuestionId IN (select QuestionId from likes where LUserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
if(mysql_num_rows($query2)>0){
while($row2 = mysql_fetch_array($query2)){
$query = mysql_query("select * from questions where QuestionId='".$row2['QuestionId']."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
echo '<div style="font-size:16px;color:grey;">New Likes</div>';
include('commoncode.php');
}
$query = mysql_query("select * from questions where QuestionId IN (select QuestionId from answers where AnswerId='".$row2['QuestionId']."')") or die(mysql_error());
if(mysql_num_rows($query)>0){
echo '<div style="font-size:16px;color:grey;">New Likes</div>';
include('commoncode.php');
}
}
}

$query3 = mysql_query("select QuestionId from answers where QuestionId IN (select QuestionId from answers where UserId='".$_SESSION['authenticateduser']."') 
and Date<='$lastlogin' and Date>='$lastlogout'") or die(mysql_error());
if(mysql_num_rows($query3)>0){
while($row3 = mysql_fetch_array($query3)){
$query = mysql_query("select * from questions where QuestionId='".$row3['QuestionId']."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
echo '<div style="font-size:16px;color:grey;">New Answers</div>';
include('commoncode.php');
}
}
}


if(mysql_num_rows($query1)==0&&mysql_num_rows($query2)==0&&mysql_num_rows($query3)==0){
echo '<div align="center" style="font-size:20px;color:red;">No Notifications are found</div><div style="height:400px;"></div>';
}
?>
