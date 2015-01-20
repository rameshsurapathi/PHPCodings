<?php ob_start();?>
<?php
include_once('../Config/Config.php');

if((isset($_GET['photoid'])&&$_GET['photoid'])||(isset($_GET['state'])&&$_GET['state'])){

ini_set('max_execution_time', 120); // 2 Minutes

include('../FacebookKit/facebook.php');
$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
));
$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();


$albumset = mysql_real_escape_string($_GET['albumset']);
$photoid = mysql_real_escape_string($_GET['photoid']);
$fids = mysql_real_escape_string($_GET['fids']);


if ($user) {

 try {
  
if($albumset=="fp"){

if (strpos($photoid,'Watermarked_') !== false) { 
$newphotoid = str_replace("Watermarked_","",$photoid);
$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from fbphotos where PhotoId='".$newphotoid."'") or die(mysql_error());
}
else{
$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from fbphotos where PhotoId='".$photoid."'") or die(mysql_error());
}
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$photomessage = $row['PhotoMessage'];

$img = realpath("../Photos/".$_SESSION['authenticateduser']."/FbAlbums/".$albumname."/".$photoid."");
// allow uploads
$facebook->setFileUploadSupport(true);

$count = 0;

$albums = $facebook->api('/me/albums');
foreach($albums['data'] as $album)
{
if($album['name']==$albumname){
$albumid = $album['id'];
$count = $count+1;
}
}


if($fids=="my"&&$count>0){
$photo = $facebook->api('/'.$albumid.'/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $photomessage
        )
);
}
else{

if($fids=="my"){
$photo = $facebook->api('/me/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $photomessage
        )
);
}
else{

$farray = explode("/",$fids);
$cou = count($farray);
for($i=0;$i<$cou;$i++){
if($farray[$i]!=""){
$photo = $facebook->api('/'.$farray[$i].'/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $photomessage
        )
);
}
}
}

}

}

}

} // if($albumset=="fp"){

elseif($albumset=="p"){

if (strpos($photoid,'Watermarked_') !== false) { 
$newphotoid = str_replace("Watermarked_","",$photoid);
$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from photos where PhotoId='".$newphotoid."'") or die(mysql_error());
}
else{
$query = mysql_query("select PhotoId,AlbumName,PhotoMessage from photos where PhotoId='".$photoid."'") or die(mysql_error());
}

while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$photomessage = $row['PhotoMessage'];

$img = realpath("../Photos/".$_SESSION['authenticateduser']."/Albums/".$albumname."/".$photoid."");
// allow uploads
$facebook->setFileUploadSupport(true);

$count = 0;

$albums = $facebook->api('/me/albums');
foreach($albums['data'] as $album)
{
if($album['name']==$albumname){
$albumid = $album['id'];
$count = $count+1;
}
}

if($fids=="my"&&$count>0){
$photo = $facebook->api('/me/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $photomessage
        )
);
}
else{
if($fids=="my"){
$photo = $facebook->api('/me/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $photomessage
        )
);
}
else{

$farray = explode("/",$fids);
$cou = count($farray);
for($i=0;$i<$cou;$i++){
if($farray[$i]!=""){
$photo = $facebook->api('/'.$farray[$i].'/photos', 'POST',
        array(
                'source' => '@' . $img,
                'message' => $photomessage
        )
);
}
}
}

}

}

} // if($albumset=="p"){

} // end of try{

catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
  
} // end of if ($user) {

if ($user) {
$presult='';
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/postlogout.php'));
$presult.='<p align="center" style="font-size:14px;color:blue;">Your Photo has been posted to Facebook successfully.</p><br/>';
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/postlogout.php'));
$presult.= '<br/><div align="center">Note : IF you are done with Posting Photos to Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
} 
else {
$loginUrl = $facebook->getLoginUrl(array('scope' => 'user_status,publish_stream,user_photos','redirect_uri'=>'http://www.PicsCave.com/InnerPages/PostPhotos.php?albumset='.$_GET['albumset'].'&&photoid='.mysql_real_escape_string($_GET['photoid']).''));
$presult = '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}

} // end of if(isset($_POST['postphoto'])&&$_POST['postphoto']){

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
?>


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