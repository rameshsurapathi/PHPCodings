<?php session_start();?>
<?php
if(!isset($_SESSION['authenticateduser'])){
header('location:http://localhost/ChampsQuestionnaire/login.php');
}
?>
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
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<script src="../JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script src="../JavaScript/Home.js" type="text/javascript"></script>

<script type="text/javascript" src="../JavaScript/nicEdit.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
</script>
<script>
function cleartext(x){
if(x==1){
document.getElementById("title").style.color="#000000";
if(document.getElementById("title").value=="What's your question? Be specific and relevant to the selected category."){
document.getElementById("title").value="";
}
}
else if(x==2){
document.getElementById("tags").style.color="#000000";
if(document.getElementById("tags").value=="Example: gate cse gre verbal ability quant  etc."){
document.getElementById("tags").value="";
}
}
}
</script>
</head>
<body>

<div id="header">
<iframe src="questionHeader.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
</div>

<div id="center">
<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td id="leftspace" width="67%">
<p style="font-size:20px;font-weight:600;">Ask Question</p>
<p>We’d love to help you.</p>
<p style="font-size:20px;font-weight:600;">Research</p>
<p>Before posting a question,please ensure that you have done some research on your answer.This research helps others to understand your question in a better way and 
aslo it can give them the exact idea,where you got struck.It also helps you get a more specific and relevant answer!</p>
<p><b>Points Policy</b></p><p> When you post a question,then you will be rewarded by 10 points for each question and
20 points for each knowledge post.And you will be awarded by 2 points extra for every like to your question or to your post.</p>
<p>When you submit an answer for any question,you will be rewarded by 10 points for every answer,and 
you will be awarded by 2 points extra for every like and 3 points extra for every comment  to your answer and if your answer is justified to be the correct answer, then you will be rewarded with extra
50 points.
</p>
<form>
<table border="0" width="100%">
<tr><td colspan="3"><br/></td></tr>
<tr>
<tr>
<td style="font-size:16px;">Category</td>
<td>&nbsp;</td>
<td>
<?php
include_once('../Config/Config.php');
echo '<select style="width:200px;height:30px;" id="cate" name="cate">
<option value="0">Select a Category</option>';
$query = mysql_query("select CategoryId,CategoryName from categories where Status='1'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
echo '<option value="'.$row['CategoryId'].'">'.$row['CategoryName'].'</option>';
}
echo '</select>';
?>
</td>
</tr>
<td style="font-size:16px;">Title</td>
<td>&nbsp;</td>
<td><input type="text" name="title" id="title" style="color:#999999;height:30px;width:580px;" value="What's your question? Be specific 
and relevant to the selected category." onfocus="javascript:cleartext(1);">
</td>
</tr>
<tr>
<td style="font-size:16px;" valign="top">Description</td>
<td>&nbsp;</td>
<td><textarea id="description" name="description" rows="10" cols="70"></textarea></td>
</tr>
<tr>
<td style="font-size:16px;">Tags</td>
<td>&nbsp;</td>
<td><input type="text" name="tags" id="tags" style="color:#999999;height:30px;width:580px;" value="Example: gate cse gre verbal ability quant  etc." 
onfocus="javascript:cleartext(2);"></td>
</tr>
<tr><td colspan="3"><br/></td></tr>
<tr>
<td></td><td>&nbsp;</td>
<td><div align="center" style="background-color:#333333;height:28px;width:160px;color:#FFFFFF;font-size:20px;cursor:pointer;" onclick="javascript:
askquestion();">Post your Question</div></td></tr>
</table>
</form>
</td>
<td id="rightspace" width="30%" valign="top">
<p style="font-size:13px;"><b>Ranks Policy</p>
<p style="font-size:13px;">
<?php
$query = mysql_query("select * from usertype") or die(mysql_error());
echo '<table border="0" width="100%">';
while($row = mysql_fetch_array($query)){
echo '<tr><td width="66%" style="font-size:13px;">'.$row['UserName'].'</td><td width="34%" style="font-size:13px;">>= '.$row['UserCode'].' Points</td></tr>';
}
echo '</table>';
?>
</p>
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