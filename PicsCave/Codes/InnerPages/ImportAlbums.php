<?php ob_start();?>
<?php
session_start();

if((isset($_POST['Import'])&&$_POST['Import'])||(isset($_GET['state'])&&$_GET['state'])){

ini_set('max_execution_time', 600); // 10 Minutes

include('../FacebookKit/facebook.php');

$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
  
));

$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();

if ($user) {
  try {
$user_profile = $facebook->api('/me');

$albums = $facebook->api('/me/albums');

$result=''; // the result variable is to show all comments and results
$result = '<form action="javascript:importalbumids();" name="albumidsimport" id="albumidsimport" method="post"><div align="center" style="width:90%"><p style="font-size:16px;">Click on All Albums,you want to Import</p><br/>
<p><input type="checkbox" name="selectall" id="selectall" onclick="javascript:selectallalbums();">&nbsp;Select All</p><br/>';

foreach($albums['data'] as $album)
{
if(!isset($album['count'])){$album['count']=0;}

$result.= '<table border="0" style="float:left"><tr><td>
<input type="checkbox" name="'.$album['id'].'" id="'.$album['id'].'" onclick="javascript:checkalbumid('.$album['id'].','.$album['count'].');">&nbsp;
'.$album['name'].'</td><td>&nbsp;</td></tr>
<tr><td><img src="https://graph.facebook.com/'.$album['id'].'/picture?type=album&access_token='.$access_token.'" height="150" width="150">
</td><td>&nbsp;</td></tr>
<tr><td><a href="'.$album['link'].'" target="_blank">View All Photos</a>&nbsp;<span style="color:black;font-size:11px;" name="photocount">'.$album['count'].'</span> <span style="color:black;font-size:11px;">Photos</span></td><td>&nbsp;</td></tr>
<tr><td colspan="2"><br/><br/></td></tr>
</table>';

}

$result.= '</div>
<div align="center" style="width:20%" style="float:left">
<input type="hidden" id="albumids" name="albumids" value="0">
<input type="hidden" id="photoscount" name="photoscount" value="0">
<input type="submit" value="Submit" style="height:30px;">&nbsp;
<input type="reset" value="Reset" style="height:30px;"></div>
</form>
';

    } catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
}

if ($user) {
 
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/logout.php'));
 $result.= '<br/><div align="center">Note : IF you are done with importing Albums from Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
} else {
  $loginUrl = $facebook->getLoginUrl(array('scope' => 'user_status,publish_stream,user_photos'));
  $result = '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}

}
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="../Images/favicon.jpg" type="image/jpeg">
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
function selectallalbums(){
if(document.getElementById("selectall").checked==true){
var photoscount = document.getElementsByName("photocount");
var inputs = document.getElementsByTagName("input");
for(var i = 0; i <= photoscount.length; i++){
    if(inputs[i].type == "checkbox"){
	if(i>=1){
	        inputs[i].checked = true;
			checkalbumid(inputs[i].name,photoscount[i-1].innerHTML);
			}
		
		}
	}
}
else if(document.getElementById(""+x).checked==false){
var photoscount = document.getElementsByName("photocount");
var inputs = document.getElementsByTagName("input");
for(var i = 0; i <= photoscount.length; i++){
    if(inputs[i].type == "checkbox"){
	if(i>=1){
	        inputs[i].checked = false;
			checkalbumid(inputs[i].name,photoscount[i-1].innerHTML);
			}
		
		}
	}

}
	
}

function checkalbumid(x,y){
if(document.getElementById(""+x).checked==true){
appendalbumid(x,y);
}
else if(document.getElementById(""+x).checked==false){
removealbumid(x,y);
}
}

function appendalbumid(x,y){
document.getElementById("albumids").value = document.getElementById("albumids").value+'//'+x;
document.getElementById("photoscount").value = parseInt(document.getElementById("photoscount").value)+parseInt(y);
}

function removealbumid(x,y){
var rep = "//"+x;
document.getElementById("albumids").value = document.getElementById("albumids").value.replace(rep,"");
document.getElementById("photoscount").value = parseInt(document.getElementById("photoscount").value)-parseInt(y);
}

function importalbumids(){
var albumids = $("#albumids");
var photoscount = $("#photoscount");
var time = (photoscount.val())*5;
var url = "SaveFbAlbums.php";
if(photoscount.val()==0){
alert("Please Select any Album");
}
else{
$('#result').slideUp("fast");																																									 	$("#time").html("<div align='center' style='font-size:14px;color:blue;'>Please Wait...Your photos are getting Uploaded.<span style='color:red;'>Approximate Estimated Time "+time+" Seconds").show();
$.post(url,{request:"importalbumids",albumids:albumids.val(),time:time,},function(data) {	

								
							if(data!=""){	
							$('#time').hide();
							$('#result').show();																												
																																											
                       $('#result').html(data).show();
                         }
});	
}
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

<div id="time" style="font-size:12px;"></div>

<div id="result">
<?php if(isset($result)&&$result!=""){ 
echo '<div align="center">'.$result.'</div>';
} 
elseif(isset($_GET['facebooklogout'])&&$_GET['facebooklogout']==1){
echo '<div align="center" style="color:blue:font-size:16px;">Successfully logged out from Facebook.To view all your Albums <a href="ViewAllAlbums.php">Click Here</a></div>';
}
else {?>
<form action="" method="post" name="albumsimport" id="albumsimport">
<table border="0" align="center">
<tr>
<td style="font-size:14px;" align="center"><label>To Import All your Albums from <span style="color:#0099FF">Facebook.com</span>, Click on Import</label></td>
<td>&nbsp;&nbsp;<input type="submit" value="Import" name="Import" style="height:30px;" /></td>
</tr></table>
</form>
<?php } ?>
</div>
<br/>



</td>
</tr>
<tr>
<td height="70" width="100%" align="center" valign="middle" background="../Images/HeaderBg.png">
<br/><br/>
<?php include_once('AfterLoginFooter.php');?>
</td>
</tr>
</table>
</body>
</html>
<?php ob_flush();?>