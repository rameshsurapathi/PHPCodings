<?php session_start();?>
<?php
$qidarray = explode("?", $_SERVER['REQUEST_URI']);
$qid = $qidarray[1];
include_once('Config/Config.php');
$query = mysql_query("select Title from questions where QuestionId='$qid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$title = $row['Title'];
}
?>
<html>
<head>
<title><?php echo $title;?> : ChampsQuestionnarie</title>
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
<script src="JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script src="JavaScript/Home.js" type="text/javascript"></script>
<script type="text/javascript" src="JavaScript/nicEdit1.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
</script>
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
if(isset($_SESSION['authenticateduser'])){
$query = mysql_query("select QuestionId from favourites where UserId='".$_SESSION['authenticateduser']."' and QuestionId='$qid'") or die(mysql_error());
if(mysql_num_rows($query)>0){?>
<input type="button" value="Remove from my favourites" style="height:30px;background-color:#ffffff;border:1px solid black;cursor:pointer;" 
onclick="javascript:removefromfavs('<?php echo $qid;?>','<?php echo $_SESSION['authenticateduser'];?>');">
<?php }
else{?>
<input type="button" value="Add to my favourites" style="height:30px;background-color:#ffffff;border:1px solid black;cursor:pointer;" 
onclick="javascript:addtomyfavs('<?php echo $qid;?>','<?php echo $_SESSION['authenticateduser'];?>');">
<?php } ?>
<?php } else {?>
<input type="button" value="Add to my favourites" style="height:30px;background-color:#ffffff;border:1px solid black;cursor:pointer;" onclick="window.open('login.php','_parent');">
<?php } ?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

<table border="0" width="100%">
<tr>
<td id="leftspace" width="70%">
<?php
$query = mysql_query("select * from questions where QuestionId='$qid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$title = $row['Title'];
$desc = $row['Description'];
$userid = $row['UserID'];
$catid = $row['CategoryId'];
$date = $row['Date'];
$views = $row['Views'];
$likes = $row['Likes'];
$qansws = $row['Answers'];
}
$query = mysql_query("update questions SET Views='$views'+1 where QuestionId='$qid'") or die(mysql_error());
if(isset($_SESSION['authenticateduser'])){
if($_SESSION['authenticateduser']==$userid){
$editquestion='<a href="javascript:editquestionbox(\''.$userid.'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">Edit your Question</a>';
}
elseif($_SESSION['authenticateduser']!=$userid){
$newquery = mysql_query("select UserId from admin where UserId='".$_SESSION['authenticateduser']."' and AdminCategory='$catid'") or die(mysql_error());
if(mysql_num_rows($newquery)>0){
$editquestion='<a href="javascript:editquestionbox(\''.$userid.'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">Edit the Question</a>';
}
else{$editquestion='';}
}
else{$editquestion='';}
}
else{$editquestion='';}
$query = mysql_query("select FirstName,Questions,Answers,Points,Tags from users where UserId='$userid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$points = $row['Points'];
$questions = $row['Questions'];
$utags = $row['Tags'];
$answers = $row['Answers'];
$newquery = mysql_query("select UserName from usertype where UserCode<=$points order by UserCode ASC limit 1") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
$role = $row1['UserName'];
}
}
$query = mysql_query("select CategoryName from categories where CategoryId='$catid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$catname = $row['CategoryName'];
}
?>
&nbsp;&nbsp;&nbsp;
<span align="center" style="background-color:#333333;height:28px;color:#FFFFFF;font-size:20px;cursor:pointer;" 
onclick="window.open('questions.php?<?php echo $catid;?>','_parent');">&nbsp;&nbsp;&nbsp;<?php echo $catname;?></span>
&nbsp;&nbsp;&nbsp;&nbsp;Related Tags :
<?php
$query = mysql_query("select TagId from questiontags where QuestionId='$qid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("select TagName from tags where TagId='".$row['TagId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
echo '<span style="background-color:#555555;height:28px;color:#FFFFFF;font-size:18px;cursor:pointer;" onclick="window.open(\'questions.php?'.$row['TagId'].'\',\'_parent\');">'.$row1['TagName'].'</span>&nbsp;';
}
}
}

$file = 'UserPhotos/'.$userid.'.jpg';
if(is_file($file)){
$photo = 'UserPhotos/'.$userid.'.jpg';
}
else{
$photo = 'UserPhotos/noimage.png';
}

?>

<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#85a950;font-size:13px;"><?php echo $qansws;?> Answers&nbsp;<b>|</b>&nbsp;
<?php echo $likes;?> Likes&nbsp;<b>|</b>&nbsp;asked <?php echo $date;?>&nbsp;&nbsp;<?php echo $editquestion;?>&nbsp;&nbsp;
<a href="javascript:closequestionbox('<?php echo $qid;?>');" style="display:none;color:black;font-size:12px;display:none;" id="close<?php echo $qid;?>">close</a></span>

<div id="questionbox<?php echo $qid;?>" style="display:none;"></div>

<h2>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $title;?></h2>
<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td width="7%" valign="top"><a href="user.php?<?php echo $userid;?>" style="text-decoration:none;">
<img src="<?php echo $photo;?>" width="50" height="50"></a></td>
<td width="22%" valign="top"><span><a href="user.php?<?php echo $userid;?>" style="color:#008aaf;text-decoration:none;"><?php echo $firstname;?></a></span>
<br/><span style="font-size:12px;">Role : <?php echo $role;?></span>
<br/><span style="font-size:12px;">Points : <?php echo $points;?>&nbsp;Answers : <?php echo $answers;?></span>
<br/><span style="font-size:12px;">Questions : <?php echo $questions;?>&nbsp;Tags : <?php echo $utags;?></span>
</td>
<td width="2%"></td>
<td width="68%" valign="top"><?php echo $desc;?></td>
</tr>
<tr><td width="3%"><td colspan="2">
<?php if(isset($_SESSION['authenticateduser'])){
$lquery = mysql_query("select LUserId from likes where QuestionId='$qid' and LUserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($lquery)>0){echo '<span style="font-size:12px;color:black;">You Liked this.</span>';}
else { ?>
<span id="like<?php echo $qid;?>">
<a href="javascript:like('<?php echo $qid;?>','<?php echo $_SESSION['authenticateduser'];?>');" style="text-decoration:none;font-size:13px;">Like</a>
</span>
<?php } ?>
&nbsp;&nbsp;
<a href="javascript:comment('<?php echo $qid;?>');" style="text-decoration:none;font-size:13px;">Add Comment</a>
<?php }  else { ?>
<a href="javascript:nolike('<?php echo $qid;?>');" style="text-decoration:none;font-size:13px;">Like</a>&nbsp;&nbsp;
<a href="javascript:nocomment('<?php echo $qid;?>');" style="text-decoration:none;font-size:13px;">Add Comment</a>
<?php } ?>
</td>
<td colspan="3" ></td>
</tr>
<tr id="commentbox<?php echo $qid;?>" style="display:none;"><td colspan="5">
<form action="javascript:addcomment('<?php echo $qid;?>');" method="post">
<table border="0"  width="100%">
<tr><td width="3%"></td>
<td><input type="text" name="comment" id="comment" style="color:#999999;height:60px;width:580px;" value="Write your Comment" 
onfocus="javascript:cleartext();"></td>
</tr>
<tr><td colspan ="2"><input type="hidden" id="uid" name="uid" value="<?php if(isset($_SESSION['authenticateduser'])){
echo $_SESSION['authenticateduser'];} else{}?>"></td></tr>
<tr><td width="3%"></td><td><input type="submit" value="Add Comment" name="addcomment" style="height:30px;">&nbsp;
<a href="javascript:closebox('<?php echo $qid;?>');" style="font-size:12px;color:#000000;">close</a></td></tr>
</table>
</form>
</td></tr>
<tr><td colspan="5" id="comments">
<?php
$query = mysql_query("select * from comments where QuestionId='$qid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
if(isset($_SESSION['authenticateduser'])&&$_SESSION['authenticateduser']==$row['CUserId']){
$edit= '<a href="javascript:editcommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deletecomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
elseif(isset($_SESSION['authenticateduser'])&&$_SESSION['authenticateduser']!=$row['CUserId']){
$newquery = mysql_query("select UserId from admin where UserId='".$_SESSION['authenticateduser']."' and AdminCategory='$catid'") or die(mysql_error());
if(mysql_num_rows($newquery)>0){
$edit= '<a href="javascript:editcommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deletecomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
else{$edit=''; $delete='';}
}
else{$edit=''; $delete='';}

$newquery = mysql_query("select FirstName from users where UserId='".$row['CUserId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
$name = $row1['FirstName'];
}

$file = 'UserPhotos/'.$row['CUserId'].'.jpg';
if(is_file($file)){
$photo = 'UserPhotos/'.$row['CUserId'].'.jpg';
}
else{
$photo = 'UserPhotos/noimage.png';
}

echo '<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr><td width="10%"><td width="7%" bgcolor="#fffffff"><a href="user.php?'.$row['CUserId'].'" style="text-decoration:none;"><img src="'.$photo.'" width="50" height="50"></a></td>
<td width="15%"  valign="top" bgcolor="#fffffff">&nbsp;<a href="user.php?'.$row['CUserId'].'" style="color:#008aaf;text-decoration:none;">'.$name.'</a>
</td><td width="63%" align="left" valign="top" bgcolor="#fffffff">'.$row['Comment'].'&nbsp;<span style="color:#85a950;font-size:12px;"> asked '.$row['Date'].'</span>&nbsp;'.$edit.'&nbsp;'.$delete.'</td></tr>
<tr><td width="10%"><td colspan="3" id="editbox'.$row['Id'].'"></td></tr>
</table><br/>';
}
}
?>
</td></tr>
</table>
<br/><br/>
<div style="background-image:url('Images/bg.jpg');background-repeat:repeat;height:1px;"></div>

<div id="speciallogin" align="center" style="display:none;">
<?php
if(!isset($_SESSION['authenticateduser'])){?>
<div id="specialloginerror" style="display:none;color:red;font-size:14px;">Please Wait...<br/></div>
<form method="post" action="javascript:specialuserlogin('<?php echo $qid;?>');">
<table border="0" width="50%" bgcolor="#E4E4E4">
<tr><td colspan="3" align="right" style="font-size:12px;color:#000000;"><a href="javascript:closelogin();">close</a></td></tr>
<tr><td colspan="3" style="font-size:20px;" align="center">Log In</td></tr>
<tr><td colspan="3"><br/></td></tr>
<tr><td>Email Id</td>
<td>&nbsp;</td>
<td><input type="text" name="email" id="email" size="30" style="height:30px;"></td>
</tr>
</tr>
<tr><td>Password</td>
<td>&nbsp;</td>
<td><input type="password" name="pass" id="pass" size="30" style="height:30px;"></td>
</tr>
</tr>
<tr><td colspan="3"><br/></td></tr>
<tr><td></td><td>&nbsp;</td>
<td><input type="submit" value="Log In" name="login" style="height:30px;"></td></tr>
<tr><td></td><td>&nbsp;</td><td style="font-size:13px;"><a href="signup.php" style="text-decoration:none;">Sign Up</a>&nbsp;&nbsp;
<a href="forgetpassword.php" style="text-decoration:none;">Forget Password</a></td></tr>
</table>
</form>
<?php
} 
?>
</div>

<?php
$mquery1 = mysql_query("select * from answers where QuestionId='$qid'") or die(mysql_error());
if(mysql_num_rows($mquery1)>0){
while($mrow1 = mysql_fetch_array($mquery1)){
$qid = $mrow1['QuestionId'];
$userid = $mrow1['UserId'];
$answer = $mrow1['Answer'];
$answerid = $mrow1['AnswerId'];
$date = $mrow1['Date'];

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

if(isset($_SESSION['authenticateduser'])){
if($_SESSION['authenticateduser']==$userid){
$editanswer='<a href="javascript:editanswerbox(\''.$userid.'\',\''.$answerid.'\');" style="font-size:12px;color:#000000;">Edit your Answer</a>';
}
elseif($_SESSION['authenticateduser']!=$userid){
$newquery = mysql_query("select UserId from admin where UserId='".$_SESSION['authenticateduser']."' and AdminCategory='$catid'") or die(mysql_error());
if(mysql_num_rows($newquery)>0){
$editanswer='<a href="javascript:editanswerbox(\''.$userid.'\',\''.$answerid.'\');" style="font-size:12px;color:#000000;">Edit the Answer</a>';
}
else{$editanswer='';}
}
else{$editanswer='';}
}
else{$editanswer='';}

$file = 'UserPhotos/'.$userid.'.jpg';
if(is_file($file)){
$photo = 'UserPhotos/'.$userid.'.jpg';
}
else{
$photo = 'UserPhotos/noimage.png';
}
?>

<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td width="7%" valign="top"><a href="user.php?<?php echo $userid;?>" style="text-decoration:none;">
<img src="<?php echo $photo;?>" width="50" height="50"></a></td>
<td width="22%" valign="top"><span><a href="user.php?<?php echo $userid;?>" style="color:#008aaf;text-decoration:none;"><?php echo $firstname;?></a></span>
<br/><span style="font-size:12px;">Role : <?php echo $role;?></span>
<br/><span style="font-size:12px;">Points : <?php echo $points;?>&nbsp;Answers : <?php echo $answers;?></span>
<br/><span style="font-size:12px;">Questions : <?php echo $questions;?>&nbsp;Tags : <?php echo $utags;?></span>
</td>
<td width="2%"></td>
<td width="68%" valign="top">
<div align="right"><?php echo $editanswer;?>&nbsp;&nbsp;
<a href="javascript:closeanswerbox('<?php echo $answerid;?>');" style="display:none;color:black;font-size:12px;display:none;" id="closeanswer<?php echo $answerid;?>">close</a></span>
</div>
<?php echo $answer;?></td>
</tr>
<tr><td width="3%"><td colspan="4"><div id="answerbox<?php echo $answerid;?>" style="display:none;"></div></td></tr>
<tr><td width="3%"><td colspan="2">
<?php
if(isset($_SESSION['authenticateduser'])){
$lquery = mysql_query("select LUserId from likes where QuestionId='$answerid' and LUserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($lquery)>0){echo '<span style="font-size:12px;color:black;">You Liked this.</span>';}
else { ?>
<span id="like<?php echo $answerid;?>">
<a href="javascript:like('<?php echo $answerid;?>','<?php echo $_SESSION['authenticateduser'];?>');" style="text-decoration:none;font-size:13px;">Like</a>
</span>
<?php } ?>
&nbsp;&nbsp;
<a href="javascript:answercomment('<?php echo $answerid;?>');" style="text-decoration:none;font-size:13px;">Add Comment</a>
<?php }  else { ?>
<a href="javascript:nolike('<?php echo $answerid;?>');" style="text-decoration:none;font-size:13px;">Like</a>&nbsp;&nbsp;
<a href="javascript:nocomment('<?php echo $answerid;?>');" style="text-decoration:none;font-size:13px;">Add Comment</a>
<?php } ?>
</td>
<td colspan="3" align="right" style="color:#85a950;font-size:12px;">asked <?php echo $date;?></td>
</tr>
<tr><td colspan="5">
<?php
$squery = mysql_query("select AnswerId from best where QuestionId='$qid' and AnswerId='$answerid'") or die(mysql_error());
if(mysql_num_rows($squery)>0){
echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="background-color:#fff123;height:30px;color:white;border:none;width:150px;">&nbsp;Solved&nbsp;</span>';
}
else{
if(isset($_SESSION['authenticateduser'])){
$qquery = mysql_query("select UserId from questions where QuestionId='$qid'") or die(mysql_error());
while($qrow = mysql_fetch_array($qquery)){$quserid = $qrow['UserId'];}
if($_SESSION['authenticateduser']==$quserid){
$ssquery = mysql_query("select AnswerId from best where QuestionId='$qid'") or die(mysql_error());
if(mysql_num_rows($ssquery)==0){
?>
<span style="font-size:12px;color:grey;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
If you think,the above answer has solved your problem,then click on solved button</span>
&nbsp;<input type="button" style="background-color:#4e4e4e;height:30px;color:white;border:none;" name="solved<?php echo $answerid;?>" 
value="Solved" onclick="javascript:solved('<?php echo $userid;?>','<?php echo $qid;?>','<?php echo $answerid;?>');">
<?php } } } }?>
</td>
</tr>
<tr id="answercommentbox<?php echo $answerid;?>" style="display:none;"><td colspan="5">
<form action="javascript:addanswercomment('<?php echo $answerid;?>');" method="post">
<table border="0"  width="100%">
<tr><td width="3%"></td>
<td><input type="text" name="answercomment<?php echo $answerid;?>" id="answercomment<?php echo $answerid;?>" style="color:#999999;height:60px;width:580px;" value="Write your Comment" 
onfocus="javascript:clearanswertext('<?php echo $answerid;?>');"></td>
</tr>
<tr><td colspan ="2"><input type="hidden" id="answeruid<?php echo $answerid;?>" name="answeruid<?php echo $answerid;?>" value="<?php if(isset($_SESSION['authenticateduser'])){
echo $_SESSION['authenticateduser'];} else{}?>"></td></tr>
<tr><td width="3%"></td><td><input type="submit" value="Add Comment" name="addcomment<?php echo $answerid;?>" style="height:30px;">&nbsp;
<a href="javascript:closeanswercommentbox('<?php echo $answerid;?>');" style="font-size:12px;color:#000000;">close</a></td></tr>
</table>
</form>
</td></tr>
<tr><td colspan="5" id="answercomments<?php echo $answerid;?>">
<?php
$query = mysql_query("select * from comments where QuestionId='$answerid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
if(isset($_SESSION['authenticateduser'])&&$_SESSION['authenticateduser']==$row['CUserId']){
$edit= '<a href="javascript:editanswercommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$answerid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deleteanswercomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$answerid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
elseif(isset($_SESSION['authenticateduser'])&&$_SESSION['authenticateduser']!=$row['CUserId']){
$newquery = mysql_query("select UserId from admin where UserId='".$_SESSION['authenticateduser']."' and AdminCategory='$catid'") or die(mysql_error());
if(mysql_num_rows($newquery)>0){
$edit= '<a href="javascript:editcommentbox('.$row['Id'].',\''.$row['CUserId'].'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">Edit</a>';
$delete = '<a href="javascript:deletecomment('.$row['Id'].',\''.$row['CUserId'].'\',\''.$qid.'\');" style="font-size:12px;color:#000000;">delete</a>';
}
else{$edit=''; $delete='';}
}
else{$edit=''; $delete='';}

$newquery = mysql_query("select FirstName from users where UserId='".$row['CUserId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
$name = $row1['FirstName'];
}

$file = 'UserPhotos/'.$row['CUserId'].'.jpg';
if(is_file($file)){
$photo = 'UserPhotos/'.$row['CUserId'].'.jpg';
}
else{
$photo = 'UserPhotos/noimage.png';
}

echo '<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr><td width="10%"><td width="7%" bgcolor="#fffffff"><a href="user.php?'.$row['CUserId'].'" style="text-decoration:none;"><img src="'.$photo.'" width="50" height="50"></a></td>
<td width="15%" style="color:#008aaf;" valign="top" bgcolor="#fffffff">&nbsp;<a href="user.php?'.$row['CUserId'].'" style="color:#008aaf;text-decoration:none;">'.$name.'</a></td><td width="63%" align="left" valign="top" bgcolor="#fffffff">
'.$row['Comment'].'&nbsp;<span style="color:#85a950;font-size:12px;"> asked '.$row['Date'].'</span>&nbsp;'.$edit.'&nbsp;'.$delete.'</td></tr>
<tr><td width="10%"><td colspan="3" id="editbox'.$row['Id'].'"></td></tr>
</table><br/>';
}
}
?>
</td></tr>
</table>
<br/><br/>
<div style="background-image:url('Images/bg.jpg');background-repeat:repeat;height:1px;"></div>;


<?php
}// end of main while
}// end of  if
?>


<table border="0" width="100%">
<tr><td width="3%"><td><p><b>Points Policy</b></p>
<p>When you submit an answer for any question,you will be rewarded by 10 points for every answer,and 
you will be awarded by 2 points extra for every like and 3 points extra for every comment  to your answer and if your answer is justified to be the correct answer, then you will be rewarded with extra
50 points.
</p></td></tr>
<tr><td width="3%"><td><h2>Your Answer</h2></td></tr>
<tr><td width="3%"></td><td><textarea id="answer" name="answer" rows="10" cols="70">
<?php if(!isset($_SESSION['authenticateduser'])){?>
You must log in to answer a question
<?php } ?>
</textarea></td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td width="3%"><td>
<?php if(isset($_SESSION['authenticateduser'])){?>
<div align="center" style="background-color:#333333;height:28px;width:160px;color:#FFFFFF;font-size:20px;cursor:pointer;" onclick="javascript:
addanswer('<?php echo $qid;?>','<?php echo  $_SESSION['authenticateduser'];?>');">Post your Answer</div>
<?php } else {?>
<div align="center" style="background-color:#333333;height:28px;width:160px;color:#FFFFFF;font-size:20px;cursor:pointer;" onclick="javascript:
noanswer();">Post your Answer</div>
<?php } ?>
</td></tr>
</table>


</td>
<td width="3%"></td>
<td id="rightspace" width="27%" valign="top">
<div id="adds" style="height:200px;" align="center"><br/><b>Advertisements</b></div>
<div id="related">
<span align="center" style="color:blue;"><b>Related</b></span>
<?php include('related.php');?>
</div>
</td>
</tr>
</table>
</div>

<div id="footer">
<?php include_once('Footer.php');?>
</div>
</body>
</html>