<?php ob_start();?>
<?php
include_once('../Config/Config.php');

if(isset($_POST['postalbum'])&&$_POST['postalbum']){
if(isset($_POST['postphotoscount'])&&$_POST['postphotoscount']>0){

include('../FacebookKit/facebook.php');

$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
  
));

$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();

if ($user) {
  try {
  
  ini_set('max_execution_time', 600); // 10 Minutes
  
  $presult='';
  $presult.='<p align="center" style="font-size:12px;color:blue;">Approximate Estimated Time '.($_POST['postphotoscount']*5).' Seconds.';
  
  $albumsetarray = explode("//",$_POST['postalbumset']);
  $albumidsarray = explode("//",$_POST['postalbumids']);

for($i=1;$i<count($albumsetarray);$i++){

if($albumsetarray[$i]=="fp"){

$query = mysql_query("select AlbumName,AlbumDescription,AlbumLocation,AlbumTime from FbAlbums where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$desc = $row['AlbumDescription'];
$loc = $row['AlbumLocation'];
$time = $row['AlbumTime'];
if($desc=="NULL"){$desc='';}
if($loc=="NULL"){$loc='';}
}

$count=0;
$albums = $facebook->api('/me/albums');
foreach($albums['data'] as $album)
{
if($album['name']=='PicsCave '.$albumname){
$albumid = $album['id'];
$count = $count+1;
}
}

if($count==0){
$newalbum = $facebook->api('/me/albums', 'POST',
  array('name' => 'PicsCave '.$albumname,
'message'=> $desc,
'location'=> $loc,
'created_time'=>$time
  )
);
$albumid = $newalbum['id'];
}


$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from fbphotos where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$img = realpath("../Photos/".$_SESSION['authenticateduser']."/FbAlbums/".$row['AlbumName']."/".$row['PhotoId']."");
// allow uploads
$facebook->setFileUploadSupport(true);

// add a status message
$photo = $facebook->api('/'.$albumid.'/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $row['PhotoMessage']
        )
);
}
}

else if($albumsetarray[$i]=="p"){

$query = mysql_query("select AlbumName,AlbumDescription,AlbumLocation,AlbumTime from Albums where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$desc = $row['AlbumDescription'];
$loc = $row['AlbumLocation'];
$time = $row['AlbumTime'];
if($desc=="NULL"){$desc='';}
if($loc=="NULL"){$loc='';}
}

$count=0;
$albums = $facebook->api('/me/albums');
foreach($albums['data'] as $album)
{
if($album['name']=='PicsCave '.$albumname){
$albumid = $album['id'];
$count = $count+1;
}
}

if($count==0){
$newalbum = $facebook->api('/me/albums', 'POST',
  array('name' => 'PicsCave '.$albumname,
'message'=> $desc,
'location'=> $loc,
'created_time'=>$time
  )
);
$albumid = $newalbum['id'];
}

$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from photos where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$img = realpath("../Photos/".$_SESSION['authenticateduser']."/Albums/".$row['AlbumName']."/".$row['PhotoId']."");
// allow uploads
$facebook->setFileUploadSupport(true);

// add a status message
$photo = $facebook->api('/'.$albumid.'/photos', 'POST',
        array(
		        'image' => '@'.$img,
				'message' => $row['PhotoMessage']
        )
);

}
}


} // end of for

   } catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
}

if ($user) {
$presult='';
 
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/postlogout.php'));
 $presult.='<p align="center" style="font-size:14px;color:blue;">Your Albums has been posted to Facebook successfully.</p><br/>';
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/postlogout.php'));
 $presult.= '<br/><div align="center">Note : IF you are done with Posting Albums to Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
} else {
  $loginUrl = $facebook->getLoginUrl(array('scope' => 'user_status,publish_stream,user_photos','redirect_uri'=>'http://www.PicsCave.com/InnerPages/PostAlbums.php?getalbumids='.$_POST['postalbumids'].'&&getphotoscount='.$_POST['postphotoscount'].'&&getalbumset='.$_POST['postalbumset'].''));
  $presult = '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}
}
}

elseif(isset($_GET['state'])&&$_GET['state']){
if(isset($_GET['getphotoscount'])&&$_GET['getphotoscount']>0){
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
  
  $presult='';
  $presult.='<p align="center" style="font-size:12px;color:blue;">Approximate Estimated Time '.($_GET['getphotoscount']*5).' Seconds.';
  
  $albumsetarray = explode("//",$_GET['getalbumset']);
  $albumidsarray = explode("//",$_GET['getalbumids']);

for($i=1;$i<count($albumsetarray);$i++){

if($albumsetarray[$i]=="fp"){

$query = mysql_query("select AlbumName,AlbumDescription,AlbumLocation,AlbumTime from FbAlbums where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$desc = $row['AlbumDescription'];
$loc = $row['AlbumLocation'];
$time = $row['AlbumTime'];
if($desc=="NULL"){$desc='';}
if($loc=="NULL"){$loc='';}
}

$count=0;
$albums = $facebook->api('/me/albums');
foreach($albums['data'] as $album)
{
if($album['name']=='PicsCave '.$albumname){
$albumid = $album['id'];
$count = $count+1;
}
}

if($count==0){
$newalbum = $facebook->api('/me/albums', 'POST',
  array('name' => 'PicsCave '.$albumname,
'message'=> $desc,
'location'=> $loc,
'created_time'=>$time
  )
);
$albumid = $newalbum['id'];
}


$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from fbphotos where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$img = realpath("../Photos/".$_SESSION['authenticateduser']."/FbAlbums/".$row['AlbumName']."/".$row['PhotoId']."");
// allow uploads
$facebook->setFileUploadSupport(true);

$photo = $facebook->api('/'.$albumid.'/photos', 'POST',
       array(
                'source' => '@' . $img,
                'message' => $row['PhotoMessage']
        )
);
}
}

else if($albumsetarray[$i]=="p"){

$query = mysql_query("select AlbumName,AlbumDescription,AlbumLocation,AlbumTime from Albums where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$desc = $row['AlbumDescription'];
$loc = $row['AlbumLocation'];
$time = $row['AlbumTime'];
if($desc=="NULL"){$desc='';}
if($loc=="NULL"){$loc='';}
}

$count=0;
$albums = $facebook->api('/me/albums');
foreach($albums['data'] as $album)
{
if($album['name']=='PicsCave '.$albumname){
$albumid = $album['id'];
$count = $count+1;
}
}

if($count==0){
$newalbum = $facebook->api('/me/albums', 'POST',
  array('name' => 'PicsCave '.$albumname,
'message'=> $desc,
'location'=> $loc,
'created_time'=>$time
  )
);
$albumid = $newalbum['id'];
}

$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from photos where AlbumId='".$albumidsarray[$i]."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$img = realpath("../Photos/".$_SESSION['authenticateduser']."/Albums/".$row['AlbumName']."/".$row['PhotoId']."");
// allow uploads
$facebook->setFileUploadSupport(true);

// add a status message
$photo = $facebook->api('/'.$albumid.'/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $row['PhotoMessage']
        )
);
}
}


} // end of for
  
 } catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
}

if ($user) {
$presult='';
 $presult.='<p align="center" style="font-size:14px;color:blue;">Your Albums has been posted successfully to Facebook</p><br/>';
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/postlogout.php'));
 $presult.= '<br/><div align="center">Note : IF you are done with Posting Albums to Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
} 
}
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
function postcheckalbumid(x,y,z){
if(document.getElementById(""+x).checked==true){
postappendalbumid(x,y,z);
}
else if(document.getElementById(""+x).checked==false){
postremovealbumid(x,y,z);
}
}

function postappendalbumid(x,y,z){
document.getElementById("postalbumids").value = document.getElementById("postalbumids").value+'//'+x;
document.getElementById("postalbumset").value = document.getElementById("postalbumset").value+'//'+z;
document.getElementById("postphotoscount").value = parseInt(document.getElementById("postphotoscount").value)+parseInt(y);
}

function postremovealbumid(x,y,z){
var rep = "//"+x;
document.getElementById("postalbumids").value = document.getElementById("postalbumids").value.replace(rep,"");
var rep1 = "//"+z;
document.getElementById("postalbumset").value = document.getElementById("postalbumset").value.replace(rep1,"");
document.getElementById("postphotoscount").value = parseInt(document.getElementById("postphotoscount").value)-parseInt(y);
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

<?php 
if(isset($presult)&&$presult!=""){ 
echo '<div align="center">'.$presult.'</div>';
} 
elseif(isset($_GET['facebookpostlogout'])&&$_GET['facebookpostlogout']==1){
echo '<div align="center" style="color:blue:font-size:14px;">Successfully logged out from Facebook.</div>';
}
else {?>

<p align="center" style="font-size:14px;">Click on Albums, You want to Post To your Facebook.</p>
<p align="center" style="font-size:10px;">This process may take some time,depending upon your internet speed.</p>
<br/>

<form action="" method="post" name="postalbums" id="postalbums">

<p align="center" style="font-size:14px; color:black;">My Albums</p>

<?php
$query = mysql_query("select * from albums where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
$myalbums ='';
$myalbums.='<div style="width:90%" align="center">';
while($row = mysql_fetch_array($query)){
$albumid = $row['AlbumId'];
$albumname = $row['AlbumName'];
$albumdesc = $row['AlbumDescription'];
$albumloc = $row['AlbumLocation'];
$albumtime = $row['AlbumTime'];
$createdon = $row['Date'];
$count = $row['Count'];

$newquery = mysql_query("select PhotoId from photos where AlbumId='$albumid' and AlbumName='$albumname' order by Id asc limit 1") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$pid = $nrow['PhotoId'];
}

list($width, $height) = getimagesize('../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$pid.'');
if($width<$height){$width = 100;	}
else{ $width = 150; }


$myalbums.='<table border="0" style="display:inline-block;vertical-align: top;"><tr><td>
<input type="checkbox" name="'.$albumid.'" id="'.$albumid.'" onclick="javascript:postcheckalbumid(\''.$albumid.'\',\''.$count.'\',\'p\');">&nbsp;
'.$albumname.'</td><td>&nbsp;</td></tr>
<tr><td><img src="../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$pid.'" height="100" width="'.$width.'">
</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;<span style="color:black;font-size:11px;">'.$count.' Photos</span></td><td>&nbsp;</td></tr>
<tr><td colspan="2" style="font-size:12px;">'.$albumdesc.'</td></tr>
<tr><td style="font-size:12px;">'.$albumloc.'</td><td>&nbsp;</td></tr>
<tr><td style="font-size:12px;">'.$albumtime.'</td><td>&nbsp;</td></tr>
<tr><td colspan="2"><br/><br/></td></tr>
</table>';
}
$myalbums.='<div>';
echo '<div align="center">'.$myalbums.'</div><br/>';
}
else{
echo '<div align="center" style="font-size:14px;color:blue;">There are no Albums. <a href="Albums.php">Add Album</a><div><br/>';
}

?>


<br/>
<p align="center" style="font-size:14px; color:black;">Facebook Albums</p>

<?php
$query = mysql_query("select * from fbalbums where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
$fbalbums='';
$fbalbums.='<div style="width:100%" align="center">';
while($row = mysql_fetch_array($query)){
$albumid = $row['AlbumId'];
$albumname = $row['AlbumName'];
$albumdesc = $row['AlbumDescription'];
$albumloc = $row['AlbumLocation'];
$albumtime = $row['AlbumTime'];
$createdon = $row['Date'];
$count = $row['Count'];

if($albumdesc=="NULL"){$albumdesc = 'No Description';}
if($albumloc=="NULL"){$albumloc = 'No Location';}

$newquery = mysql_query("select PhotoId from fbphotos where AlbumId='$albumid' and AlbumName='$albumname' order by Id asc limit 1") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$pid = $nrow['PhotoId'];
}

list($width, $height) = getimagesize('../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$pid.'');
if($width<$height){$width = 100;	}
else{ $width = 150; }

$fbalbums.='<table border="0" style="display:inline-block;vertical-align: top;"><tr><td style="font-size:12px;">
<input type="checkbox" name="'.$albumid.'" id="'.$albumid.'" onclick="javascript:postcheckalbumid(\''.$albumid.'\',\''.$count.'\',\'fp\');">&nbsp;
'.$albumname.' &nbsp;</td><td>&nbsp;</td></tr>
<tr><td><img src="../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$pid.'" height="100" width="'.$width.'">
</td><td>&nbsp;</td></tr>
<tr><td style="font-size:14px;">&nbsp;<span style="color:black;font-size:11px;">'.$count.' Photos</span></td><td>&nbsp;</td></tr>
<tr><td colspan="2" style="font-size:12px;">'.$albumdesc.'</td></tr>
<tr><td style="font-size:12px;">'.$albumloc.'</td><td>&nbsp;</td></tr>
<tr><td style="font-size:12px;">'.$albumtime.'</td><td>&nbsp;</td></tr>
<tr><td colspan="2"><br/><br/></td></tr>
</table>';
}
$fbalbums.='<div><br/>';
echo $fbalbums;
}
else{
echo '<div align="center" style="font-size:14px;color:blue;">There are no Albums. <a href="Albums.php">Add Album</a><div><br/>';
}

?>

<?php if((isset($myalbums)&&$myalbums!="")||(isset($fbalbums)&&$fbalbums!="")){?>
<div style="width:100%; float:left;">
<input type="hidden" id="postalbumids" name="postalbumids" value="0">
<input type="hidden" id="postphotoscount" name="postphotoscount" value="0">
<input type="hidden" id="postalbumset" name="postalbumset" value="0">
<input type="submit" value="Post" name="postalbum" id="postalbum" style="height:30px;">&nbsp;
<input type="reset" value="Reset" style="height:30px;">
<br/>
<br/>
</div>
</form>

<?php } ?>

<?php } ?>


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