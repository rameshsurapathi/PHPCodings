<?php ob_start();?>
<?php
include_once('../Config/Config.php');

$albumset = mysql_real_escape_string($_GET['albumset']);
$photoid = mysql_real_escape_string($_GET['photoid']);

include('../FacebookKit/facebook.php');
$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
));
$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();

if ($user) {

 try {

$friends = $facebook->api('/me/friends');
$i=0;
$allfriendslist.= '';
$allfriendslist.= '<table border="0" width="90%" align="center" id="allfriendscheckboxes" style="display:none;"><tr><td>&nbsp;</td><td><input type="checkbox" id="all" onclick="javascript:addids(0,0);">Select all Friends</td><td colspan="7"></td></tr><tr>';
foreach($friends['data'] as $friend)
{
$i=$i+1;
$allfriendslist.= '<td>&nbsp;</td><td><input type="checkbox" id="friendid'.$i.'" value="'.$friend['id'].'" onclick="javascript:addids('.$friend['id'].','.$i.');">'.$friend['name'].'</td>';
if($i%4==0){
$allfriendslist.='</tr><tr>';
}
}
$allfriendslist.= '<td colspan="8"></td></tr></table>';

$friendslist.='<table border="0" width="90%" align="center">
<tr><td width="42%"></td><td align="left"><input type="checkbox" value="my" onclick="javascript:selectbox(1);" id="my" checked="checked">On my Wall</td></tr>
<tr><td width="42%"></td><td align="left"><input type="checkbox" value="allfriends" onclick="javascript:selectbox(2);" id="allfriends">On my friends Wall</td></tr>
<tr><td colspan="2">'.$allfriendslist.'</td></tr>
</table>
<input type="hidden" name="totalids" id="totalids" value="'.$i.'">
<input type="hidden" id="fids" name="fids" value="my">
<p align="center"><input type="submit" value="Post" name="submit" style="height:30px;">
</p>';

} // end of try{

catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
  
} // end of if ($user) {

if ($user) {
}
else {
$loginUrl = $facebook->getLoginUrl(array('scope' => 'user_status,publish_stream,user_photos'));
$res =  '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PicsCave</title>
<META name="description" content="PicsCave.com protects the authenticity of your photos through watermarking algorithm.">
<META name="keywords" content="facebook,pics,facebook pics,fb,fbpics,digital watermarking,invisible watermarking,text watermarking,protect images,protect pics, picscave">
<META content="General" name="rating">
<META content="all" name="googlebot">
<meta name="robots" content="index, follow">
<meta name="author" content="info@picscave.com" />
<meta name="owner" content="http://picscave.com" />
<META content="Copyright � picscave.com, All Rights Reserved." name="copyright">
<META content="http://www.picscave.com" name="picscave">
<META content="picscave.com" name="organization">
<META content="global" name="distribution">
<META content="document" name="resource-type">
<META content="public" name="security">
<META content="7 days" name="revisit-after">
<META content="en-us" http-equiv="Content-Language">
<style type="text/css">
body {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

</style>
<script>
function selectbox(x){
var f = document.getElementById("fids").value;
var c1 = document.getElementById("my").checked;
var c2 = document.getElementById("allfriends").checked;
if(x==1&&c2==true||x==2&&c2==false){
document.getElementById("my").checked = true;
document.getElementById("fids").value = "my";
document.getElementById("allfriends").checked = false;
document.getElementById("allfriendscheckboxes").style.display="none";
}
else if(x==2&&c1==true||x==1&&c1==false){
document.getElementById("allfriends").checked = true;
document.getElementById("my").checked = false;
document.getElementById("fids").value = "";
document.getElementById("allfriendscheckboxes").style.display="block";
}
}

function addids(x,y){
var ff = document.getElementById("fids").value;
var tot = document.getElementById("totalids").value;
//alert(ff);
if(x==0&&y==0){
var c = document.getElementById("all").checked;
if(c==true){
for(var i=1;i<=tot;i++){
$("#friendid"+i).attr('checked','checked');
document.getElementById("fids").value = document.getElementById("fids").value+'/'+document.getElementById("friendid"+i).value;
}
}
else if(c==false){
for(var i=1;i<=tot;i++){
$("#friendid"+i).removeAttr('checked');
document.getElementById("fids").value = document.getElementById("fids").value.replace('/'+document.getElementById("friendid"+i).value, "");
}
}
}
else{
var c = document.getElementById("friendid"+y).checked;
if(c==true){
$("#friendid"+y).attr('checked','checked');
document.getElementById("fids").value = document.getElementById("fids").value+'/'+x;
}
else if(c==false){
$("#friendid"+y).removeAttr('checked');
document.getElementById("fids").value = document.getElementById("fids").value.replace('/'+x, "");
}
}
}

function postthephoto(){
var x = "<?php echo $_GET['albumset'];?>";
var y = "<?php echo $_GET['photoid'];?>";
var frids = document.getElementById("fids").value;
//alert(frids);
window.location.href = "PostPhotos.php?albumset="+x+"&&photoid="+y+"&&fids="+frids;
}
</script>
</head>
<body>
<table border="0" align="center" width="100%" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
<td align="left" valign="top" background="../Images/HeaderBg.png">
<?php include_once('AfterLoginHeader.php');?>
</td
></tr>
<tr>
<td valign="top" background="" height="500px">
<?php include('AfterLoginNavigation.php');?>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<form id="friends" method="post" action="javascript:postthephoto();">
<?php echo $friendslist;?>
</form>
<br/>
<div align="center"><?php echo $res;?></div>

</td>
</tr>
<tr>
<td height="70" align="center" valign="middle" background="../Images/HeaderBg.png">
<?php include_once('AfterLoginFooter.php');?>
</td>
</tr>
</table>
</body>
</html>
<?php ob_flush();?>