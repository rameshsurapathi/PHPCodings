<?php session_start();?>
<html>
<head>
<title>ChampsQuestionnarie</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<META name="description" content="ChampsQuestionnaire.com  is a question and answer site for professional and enthusiast students. It's 100% free, no registration required. ">
<META name="keywords" content="ChampsQuestionnaire">
<META content="General" name="rating">
<META content="all" name="googlebot">
<meta name="robots" content="index, follow">
<meta name="author" content="info@ChampsQuestionnaire.com" />
<meta name="owner" content="http://ChampsQuestionnaire.com" />
<META content="Copyright © ChampsQuestionnaire.com, All Rights Reserved." name="copyright">
<META content="http://www.ChampsQuestionnaire.com" name="ChampsQuestionnaire">
<META content="ChampsQuestionnaire.com" name="organization">
<META content="global" name="distribution">
<META content="document" name="resource-type">
<META content="public" name="security">
<META content="7 days" name="revisit-after">
<META content="en-us" http-equiv="Content-Language">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="JavaScript/Home.js" type="text/javascript"></script>
<script src="JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
</head>
<body>
<div id="header">
<?php
if(!isset($_SESSION['authenticateduser'])){?>
<iframe src="Header.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
<?php } else {?>
<iframe src="Home/Header.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
<?php } ?>

</div>

<div id="center">

<div align="right">
<?php 
$cidarray = explode("?", $_SERVER['REQUEST_URI']);
$cid = $cidarray[1];
include_once('Config/Config.php');
if(isset($_SESSION['authenticateduser'])){
$query = mysql_query("select GroupId from grouptags where UserId='".$_SESSION['authenticateduser']."' and GroupId='$cid'") or die(mysql_error());
if(mysql_num_rows($query)>0){?>
<input type="button" value="Unjoin the group" style="height:30px;background-color:#ffffff;border:1px solid black;cursor:pointer;" 
onclick="javascript:removefromgroup('<?php echo $cid;?>','<?php echo $_SESSION['authenticateduser'];?>');">
<?php }
else{?>
<input type="button" value="Join the group" style="height:30px;background-color:#ffffff;border:1px solid black;cursor:pointer;" 
onclick="javascript:addtogroup('<?php echo $cid;?>','<?php echo $_SESSION['authenticateduser'];?>');">
<?php } ?>
<?php } else {?>
<input type="button" value="Join the group" style="height:30px;background-color:#ffffff;border:1px solid black;cursor:pointer;" onclick="window.open('login.php','_parent');">
<?php } ?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

<table border="0" width="100%">
<tr>
<td id="leftspace" width="70%">
<?php
$query = mysql_query("select CategoryName,Views from categories where CategoryId='$cid'") or die(mysql_error());
$query1 = mysql_query("select QuestionId from questiontags where TagId='$cid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$catname = $row['CategoryName'];
$query4 = mysql_query("update categories SET Views='".$row['Views']."'+1 where CategoryId='$cid'") or die(mysql_error());
}
}
elseif(mysql_num_rows($query1)>0){
$query5 = mysql_query("select Views from tags where TagId='$cid'") or die(mysql_error());
while($row5 = mysql_fetch_array($query5)){
$query6 = mysql_query("update tags SET Views='".$row5['Views']."'+1 where TagId='$cid'") or die(mysql_error());
}

$query2 = mysql_query("select CategoryId from categorytags where TagId='$cid'") or die(mysql_error());
while($row2 = mysql_fetch_array($query2)){
$cid= $row2['CategoryId'];
}
$query3 = mysql_query("select CategoryName,Views from categories where CategoryId='$cid'") or die(mysql_error());
while($row3 = mysql_fetch_array($query3)){
$catname = $row3['CategoryName'];
$query4 = mysql_query("update categories SET Views='".$row3['Views']."'+1 where CategoryId='$cid'") or die(mysql_error());
}
}
?>

&nbsp;&nbsp;&nbsp;
<span align="center" style="background-color:#333333;height:28px;color:#FFFFFF;font-size:20px;cursor:pointer;" 
onclick="window.open('questions.php?<?php echo $cid;?>','_parent');">&nbsp;&nbsp;&nbsp;<?php echo $catname;?></span>
<?php
$tquery = mysql_query("select TagId from categorytags where CategoryId='$cid'") or die(mysql_error());
if(mysql_num_rows($tquery)>0){
echo '&nbsp;&nbsp;&nbsp;Related Tags : ';
while($row=mysql_fetch_array($tquery)){
$newquery = mysql_query("select TagName,Views from tags where TagId='".$row['TagId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
echo '<span align="center" style="background-color:#333333;height:28px;color:#FFFFFF;font-size:20px;cursor:pointer;"
onclick="window.open(\'questions.php?'.$row['TagId'].'\',\'_parent\');">'.$row1['TagName'].'</span>&nbsp;';
}
}

}
else{
echo 'No tags are found';
}


if(mysql_num_rows($query)>0){
$query = mysql_query("select * from questions where CategoryId='$cid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$qid = $row['QuestionId'];
$title = $row['Title'];
$desc = $row['Description'];
if(strlen($desc)>200){$desc = substr($desc,0,200).'..';}
$userid = $row['UserID'];
$date = $row['Date'];
$views = $row['Views'];
$likes = $row['Likes'];
$qansws = $row['Answers'];

$newquery1 = mysql_query("select FirstName,Questions,Answers,Points,Tags from users where UserId='$userid'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery1)){
$firstname = $row1['FirstName'];
$points = $row1['Points'];
$questions = $row1['Questions'];
$utags = $row1['Tags'];
$answers = $row1['Answers'];
$newquery2 = mysql_query("select UserName from usertype where UserCode<=$points order by UserCode ASC limit 1") or die(mysql_error());
while($row2 = mysql_fetch_array($newquery2)){
$role = $row2['UserName'];
}
}

$file = 'UserPhotos/'.$userid.'.jpg';
if(is_file($file)){
$photo = 'UserPhotos/'.$userid.'.jpg';
}
else{
$photo = 'UserPhotos/noimage.png';
}

echo '<br/><br/>';
echo '<div>&nbsp;&nbsp;&nbsp;&nbsp;<a href="question.php?'.$qid.'" style="font-size:20px;">'. $title.'</a></div>
<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td width="7%" valign="top"><a href="user.php?'.$userid.'" style="text-decoration:none;">
<img src="'.$photo.'" width="50" height="50"></a></td>
<td width="22%" valign="top"><span><a href="user.php?'.$userid.'" style="color:#008aaf;text-decoration:none;">'.$firstname.'</a></span>
<br/><span style="font-size:12px;">Role : '.$role.'</span>
<br/><span style="font-size:12px;">Points : '.$points.'&nbsp;Answers : '.$answers.'</span>
<br/><span style="font-size:12px;">Questions : '.$questions.'&nbsp;Tags : '.$utags.'</span>
</td>
<td width="2%"></td>
<td width="68%" valign="top">'.$desc.'</td>
</tr>
<tr>
<td width="3%"></td>
<td width="7%"></td><td width="22%"></td><td width="2%"></td>
<td width="68%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#85a950;font-size:13px;">'.$qansws.' Answers&nbsp;<b>|</b>&nbsp;
'.$views.' Views&nbsp;<b>|</b>&nbsp;'.$likes.' Likes&nbsp;<b>|</b>&nbsp;asked '.$date.'</span></td>
</tr>
</table>
<br/><br/>
';

}
}
}
elseif(mysql_num_rows($query1)>0){

while($row1 = mysql_fetch_array($query1)){

$query = mysql_query("select * from questions where QuestionId='".$row1['QuestionId']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$title = $row['Title'];
$desc = $row['Description'];
if(strlen($desc)>200){$desc = substr($desc,0,200).'..';}
$userid = $row['UserID'];
$catid = $row['CategoryId'];
$date = $row['Date'];
$views = $row['Views'];
$likes = $row['Likes'];
$qansws = $row['Answers'];
}

$query = mysql_query("select FirstName,Questions,Answers,Points,Tags from users where UserId='$userid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$points = $row['Points'];
$questions = $row['Questions'];
$utags = $row['Tags'];
$answers = $row['Answers'];
$newquery = mysql_query("select UserName from usertype where UserCode<=$points order by UserCode ASC limit 1") or die(mysql_error());
while($row2 = mysql_fetch_array($newquery)){
$role = $row2['UserName'];
}
}
$query = mysql_query("select CategoryName from categories where CategoryId='$catid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$catname = $row['CategoryName'];
}

$file = 'UserPhotos/'.$userid.'.jpg';
if(is_file($file)){
$photo = 'UserPhotos/'.$userid.'.jpg';
}
else{
$photo = 'UserPhotos/noimage.png';
}


echo '<br/><br/>';
echo '<div>&nbsp;&nbsp;&nbsp;&nbsp;<a href="question.php?'.$row1['QuestionId'].'" style="font-size:20px;">'. $title.'</a></div>
<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td width="7%" valign="top"><a href="user.php?'.$userid.'" style="text-decoration:none;">
<img src="'.$photo.'" width="50" height="50"></a></td>
<td width="22%" valign="top"><span><a href="user.php?'.$userid.'" style="color:#008aaf;text-decoration:none;">'.$firstname.'</a></span>
<br/><span style="font-size:12px;">Role : '.$role.'</span>
<br/><span style="font-size:12px;">Points : '.$points.'&nbsp;Answers : '.$answers.'</span>
<br/><span style="font-size:12px;">Questions : '.$questions.'&nbsp;Tags : '.$utags.'</span>
</td>
<td width="2%"></td>
<td width="68%" valign="top">'.$desc.'</td>
</tr>
<tr>
<td width="3%"></td>
<td width="7%"></td><td width="22%"></td><td width="2%"></td>
<td width="68%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#85a950;font-size:13px;">'.$qansws.' Answers&nbsp;<b>|</b>&nbsp;
'.$views.' Views&nbsp;<b>|</b>&nbsp;'.$likes.' Likes&nbsp;<b>|</b>&nbsp;asked '.$date.'</span></td>
</tr>
</table>
<br/><br/>
';

} // end of while
} // end of else
else{
echo 'No questions are found';
}
?>




</td>
<td id="rightspace" width="30%"></td>
</tr>
</table>
</div>

<div id="footer">
<?php include_once('Footer.php');?>
</div>
</body>
</html>