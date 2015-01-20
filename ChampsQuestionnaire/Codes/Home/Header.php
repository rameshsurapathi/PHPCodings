<?php session_start();?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<script src="../JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script>
function changebgcolor(x){
if(x==1){
document.getElementById("question").style.backgroundColor = "#85a950";
}
}

function retainbgcolor(x){
if(x==1){
document.getElementById("question").style.backgroundColor = "#999999";
}
}
</script>
<script>
function changetextcolor(x){
document.getElementById("text"+x).style.color = "green";
}
function retaintextcolor(x){
document.getElementById("text"+x).style.color = "orange";
}
</script>
</head>
<body>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr style="background-image:url('../Images/bg.jpg');background-repeat:repeat;" height="30">
<td align="right"><span style="font-size:13px;">Welcome </span></td>
<td>
<?php
include_once('../Config/Config.php');
$query = mysql_query("select FirstName,LastName from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$name = $row['FirstName'].' '.$row['LastName'];
}
?>
<span style="font-size:13px;">&nbsp;<?php echo $name;?></span>

<?php
$query = mysql_query("select Questions,Answers,Points,Tags from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$questions = $row['Questions'];$answers = $row['Answers'];$points=$row['Points'];$tags=$row['Tags'];
}
$query = mysql_query("select QuestionId from favourites where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
$favs = mysql_num_rows($query);
$query = mysql_query("select QuestionId from comments where CUserId='".$_SESSION['authenticateduser']."' 
UNION select QuestionId from likes where LUserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
$tagqs = mysql_num_rows($query);
$query = mysql_query("select Notifications from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$notifications = $row['Notifications'];
}
?>
&nbsp;
<a href="notifications.php" style="font-size:12px;color:orange;text-decoration:none;font-weight:500;cursor:pointer;"  onmouseover="
javascript:changetextcolor(6);" onmouseout="javascript:retaintextcolor(6);" id="text6" target="_parent"><?php echo $notifications;?> Notifications</a>
&nbsp;
</td>
<td align="right">
<a href="postedquestions.php" style="font-size:12px;color:orange;text-decoration:none;font-weight:500;cursor:pointer;"  onmouseover="
javascript:changetextcolor(1);" onmouseout="javascript:retaintextcolor(1);" id="text1" target="_parent"><?php echo $questions;?> Questions</a>
&nbsp;
<a href="postedanswers.php" style="font-size:12px;color:orange;text-decoration:none;font-weight:500;cursor:pointer;"  onmouseover="
javascript:changetextcolor(2);" onmouseout="javascript:retaintextcolor(2);" id="text2" target="_parent"><?php echo $answers;?> Answers</a>
&nbsp;
<a href="taggedquestions.php" style="font-size:12px;color:orange;text-decoration:none;font-weight:500;cursor:pointer;"  onmouseover="
javascript:changetextcolor(3);" onmouseout="javascript:retaintextcolor(3);" id="text3" target="_parent"><?php echo $tagqs;?> Tagged Questions</a>
&nbsp;
<a href="favourites.php" style="font-size:12px;color:orange;text-decoration:none;font-weight:500;cursor:pointer;"  onmouseover="
javascript:changetextcolor(7);" onmouseout="javascript:retaintextcolor(7);" id="text7" target="_parent"><?php echo $favs;?> Favourites</a>
&nbsp;
<span style="font-size:12px;color:orange;text-decoration:none;font-weight:500;"  onmouseover="
javascript:changetextcolor(4);" onmouseout="javascript:retaintextcolor(4);" id="text4"><?php echo $points;?> Points</span>
&nbsp;
<a href="showtags.php" style="font-size:12px;color:orange;text-decoration:none;font-weight:500;cursor:pointer;"  onmouseover="
javascript:changetextcolor(5);" onmouseout="javascript:retaintextcolor(5);" id="text5" target="_parent"><?php echo $tags;?> Tags</a>
&nbsp;
&nbsp;
<a href="index.php" target="_parent" style="text-decoration:none;font-size:13px;">Home</a>&nbsp;&nbsp;
<a href="profile.php" target="_parent" style="text-decoration:none;font-size:13px;">My Profile</a>&nbsp;&nbsp;
<a href="../logout.php" target="_parent" style="text-decoration:none;font-size:13px;">Logout</a>&nbsp;&nbsp;
</td>
</tr>
<tr>
<td width="9%">&nbsp;&nbsp;<a href="index.php" target="_parent" style="text-decoration:none;">
<img src="../Images/logo.jpg" alt="ChampsQuestionnaire"></a></td>
<td width="26%"><a href="index.php" target="_parent" style="text-decoration:none;"><span style="color:#85a950;font-size:26px;">Champs</span>
<span style="color:#008aaf;font-size:28px;font-weight:500;">Questionnaire</span></td></a>
<td align="right">
<table border="0"><tr>
<td align="center"><div style="background-color:#999999;height:28px;width:140px;color:#FFFFFF;font-size:20px;cursor:pointer;" id="question" onmouseover="
javascript:changebgcolor(1);" onmouseout="javascript:retainbgcolor(1);" onclick="window.open('askquestion.php','_parent');">Ask Question</div></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td align="center"></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table>
</td>
</tr>
<tr style="background-image:url('../Images/bg.jpg');background-repeat:repeat;" height="1">
<td colspan="3"></td>
</tr>
</table>
</body>
</html>