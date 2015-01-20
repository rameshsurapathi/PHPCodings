<?php ob_start();?>
<?php
include_once('../Config/Config.php');

if(isset($_GET['request'])&&$_GET['request']=="deletealbum"){

$albumid = mysql_real_escape_string($_GET['albumid']);
$albumname = mysql_real_escape_string($_GET['albumname']);
$albumset = mysql_real_escape_string($_GET['albumset']);
if($albumset=="p"){
$query = mysql_query("delete from albums where Userid='".$_SESSION['authenticateduser']."' and AlbumId='$albumid'") or die(mysql_error()); 
$query = mysql_query("delete from photos where AlbumId='$albumid'") or die(mysql_error());
$dir1 = '../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'';
$dir2 = '../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'';
deletefolder($dir1);
deletefolder($dir2);
}
elseif($albumset=="fp"){
$query = mysql_query("delete from fbalbums where Userid='".$_SESSION['authenticateduser']."' and AlbumId='$albumid'") or die(mysql_error());
$query = mysql_query("delete from fbphotos where AlbumId='$albumid'") or die(mysql_error());
$dir1 = '../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'';
$dir2 = '../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'';
deletefolder($dir1);
deletefolder($dir2);
}
}

function deletefolder($dir){
$files = glob( $dir . '/*', GLOB_MARK ); // get all file names
foreach($files as $file){ // iterate files
  if(is_file($file))
    unlink($file); // delete file
}
if(is_dir($dir)){
rmdir($dir);
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

<p align="center" style="font-size:16px;">My Albums</p><br/>
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

if(mysql_num_rows($newquery)>0){

while($nrow = mysql_fetch_array($newquery)){
$pid = $nrow['PhotoId'];
}

list($width, $height) = getimagesize('../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$pid.'');
if($width<$height){$width = 100;	}
else{ $width = 150; }

$myalbums.='<table border="0" style="display:inline-block;vertical-align: top;"><tr><td>
'.$albumname.' &nbsp;<a href="EditAlbum.php?albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=p">Edit</a></td><td>&nbsp;</td></tr>
<tr><td><a href="ViewAlbum.php?request=viewphotos&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=p" style="text-decoration:none;cursor:pointer;"><img src="../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$pid.'" height="100" width="'.$width.'"><a/>
</td><td>&nbsp;</td></tr>
<tr><td><a href="ViewAlbum.php?request=viewphotos&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=p" >View All Photos</a>&nbsp;<span style="color:black;font-size:11px;">'.$count.' Photos</span></td><td>&nbsp;</td></tr>
<tr><td colspan="2" style="font-size:12px;">'.$albumdesc.'</td></tr>
<tr><td style="font-size:12px;">'.$albumloc.'</td><td>&nbsp;</td></tr>
<tr><td style="font-size:12px;">'.$albumtime.'</td><td>&nbsp;</td></tr>
<tr><td colspan="2"><br/><br/></td></tr>
</table>';

}
else{
$myalbums.='<table border="0" style="display:inline-block;vertical-align: top;"><tr><td>
'.$albumname.' &nbsp;<a href="EditAlbum.php?albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=p">Edit</a></td><td>&nbsp;</td></tr><tr><td><img src="../Images/noimage.jpg"></td><td>&nbsp;</td></tr></table>';
}

}
$myalbums.='<div>';
echo '<div align="center">'.$myalbums.'</div><div style="clear:both;"></div><br/>';

}
else{
echo '<div align="center" style="font-size:14px;color:blue;">There are no Albums. <a href="Albums.php">Add Album</a><div><br/>';
}

?>

<p align="center" style="font-size:16px; color:#000000;">Facebook Albums</p><br/>
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


if(mysql_num_rows($newquery)>0){

while($nrow = mysql_fetch_array($newquery)){
$pid = $nrow['PhotoId'];
}


list($width, $height) = getimagesize('../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$pid.'');
if($width<$height){$width = 100;	}
else{ $width = 150; }


$fbalbums.='<table border="0" style="display:inline-block;vertical-align: top;"><tr><td style="font-size:12px;">
'.$albumname.' &nbsp;<a href="EditAlbum.php?albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=fp">Edit</a></td><td>&nbsp;</td></tr>
<tr><td><a href="ViewAlbum.php?request=viewphotos&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=fp" style="text-decoration:none;cursor:pointer;"><img src="../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$pid.'" height="100" width="'.$width.'"></a>
</td><td>&nbsp;</td></tr>
<tr><td style="font-size:12px;"><a href="ViewAlbum.php?request=viewphotos&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=fp" >View All Photos</a>&nbsp;<span style="color:black;font-size:11px;">'.$count.' Photos</span></td><td>&nbsp;</td></tr>
<tr><td colspan="2" style="font-size:12px;">'.$albumdesc.'</td></tr>
<tr><td style="font-size:12px;">'.$albumloc.'</td><td>&nbsp;</td></tr>
<tr><td style="font-size:12px;">'.$albumtime.'</td><td>&nbsp;</td></tr>
<tr><td colspan="2"><br/><br/></td></tr>
</table>';


}
else{
$fbalbums.='<table border="0" style="display:inline-block;vertical-align: top;"><tr><td style="font-size:12px;">
'.$albumname.' &nbsp;<a href="EditAlbum.php?albumid='.$albumid.'&&albumname='.$albumname.'&&albumset=fp">Edit</a></td><td>&nbsp;</td></tr><tr><td><img src="../Images/noimage.jpg"></td><td>&nbsp;</td></tr></table>';
}

}
$fbalbums.='<div><div style="clear:both;"></div><br/>';
echo $fbalbums;
}
else{
echo '<div align="center" style="font-size:14px;color:blue;">There are no Albums. <a href="Albums.php">Add Album</a><div><br/>';
}

?>
</td>
</tr>
<tr>
<td height="70" width="100%" align="center" valign="middle" background="../Images/HeaderBg.png">
<?php include_once('AfterLoginFooter.php');?>
</td>
</tr>
</table>
</body>
</html>
<?php ob_flush();?>