<?php ob_start();?>
<?php
include_once('../Config/Config.php');
include_once('../Scripts/UserPhotos.php');
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

<div id="errorinphotos">
<?php
if (!empty($errors)) {
    foreach ($errors as $error) {
	echo '<p style="font-size:12px; color:red;">'.$error.'</p>';
    }
	
} 
elseif (isset($errors)&&empty($errors)) {
echo '<div align="center" style="color:blue:fonts-size:12px;">All Photos got uploaded successfully. To view your photos, 
<a href="ViewAllAlbums.php">Click Here</a></div>
<p align="center">To Add more photos to this album, Continue the photo uploading from below</p>';
}
?>
</div>

<form action="" method="post" enctype="multipart/form-data" name="photosupload" id="photosupload">
<table width="500" border="0" align="center">
  <tr>
    <td style="font-size:16px;"><?php
	$query = mysql_query("select AlbumId,AlbumName from albums where UserId='".$_SESSION['authenticateduser']."' order by Id desc limit 1") or die(mysql_error());
	while($row = mysql_fetch_array($query)){
	echo $albumname = $row['AlbumName'].' Album';
	$albumid = $row['AlbumId'];
	}	
	?>
  </td>
  </tr>
  <tr>
   <td>Upload the Photos into the Album</td>
  </tr>
  <tr>
   <td><br/></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
    <td><input type="file" name="files[]" multiple="multiple"/></td>
	<td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td>
  </tr>
  <tr>
  <td><input type="hidden" value="<?php echo $albumid;?>" name="album_id" id="album_id" /></td>
  </tr>
  <tr>
   <td><br/></td>
  </tr>
  <tr>
   <td><br/></td>
  </tr>
  <tr>
   <td><input type="submit" value="Upload" name="addphotos" id="addphotos" /></td>
  </tr>
</table>
</form>

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