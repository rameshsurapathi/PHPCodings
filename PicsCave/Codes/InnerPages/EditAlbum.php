<?php ob_start();?>
<?php
include_once('../Config/Config.php');
include_once('../Scripts/NewUserPhotos.php');
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
function deletealbum(x,y,z){
var r = confirm("Are you Sure,you want to delete the album");
if(r==false){
return;
}
else if(r==true){
window.location.href="ViewAllAlbums.php?request=deletealbum&&albumid="+x+"&&albumname="+y+"&&albumset="+z;
}
}
</script>
<script>
function editalbum(){

var newalbumname = $("#newalbumname");
var albumname = $("#albumname");
var albumdesc = $("#albumdesc");
var albumloc = $("#albumloc");
var albumtime = $("#albumtime");
var editalbumid = $("#edit_album_id");
var editalbumset = $("#edit_album_set");
var url = "../Scripts/UserAlbum.php";

if(albumname.val()==""){ 
alert("Please Enter the Album Name");
}
else if(albumdesc.val()!=""&&albumdesc.val().length>255){
alert("Album Description Exceeds 255 charcters");
}
else{

$.post(url,{request:"editalbum",newalbumname:newalbumname.val(),albumdesc:albumdesc.val(),albumloc:albumloc.val(),albumtime:albumtime.val(),editalbumid:editalbumid.val(),editalbumset:editalbumset.val(),albumname:albumname.val(),},function(data) {																																																					 																																																			 $("#newsuccessresponse").show(); 


if(data==1){
	
	$("#newsuccessresponse").html("Album has been Updated Successfully.").show();
																																															}
																																																			else if(data==0){																																																	   $("#newsuccessresponse").html("An Error Occured. Please Try Again.").show();
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
<div align="center" style="width:16%;" id="backtoalbum"><a href="ViewAllAlbums.php">Back</a></div>
<div id="newerrorinphotos">
<?php
if (!empty($newerrors)) {
    foreach ($newerrors as $error) {
	echo '<p style="font-size:12px; color:red;">'.$error.'</p>';
    }
	
} 
elseif (isset($newerrors)&&empty($newerrors)) {
echo '<div align="center" style="color:blue:fonts-size:11px;color:blue;">All Photos got uploaded successfully. To view your photos, 
<a href="ViewAlbum.php?request=viewphotos&&albumid='.$_GET['albumid'].'&&albumname='.$_GET['albumname'].'&&albumset='.$_GET['albumset'].'">Click Here</a></div><br/>
<p align="center">To Add more photos to this album, Continue the photo uploading from below</p>';
}
?>
</div>

<p align="center" style="font-size:14px; width:50%;">Add New Photos to the Album</p>
<br/>

<form action="" method="post" enctype="multipart/form-data" name="newphotosupload" id="newphotosupload">
<table width="468" border="0" align="center">
  <tr>
    <td style="font-size:16px;"><?php echo $_GET['albumname'];?>
  </td>
  </tr>
  <tr>
   <td>Upload the Photos into the Album</td>
  </tr>
  <tr>
   <td><br/></td>
  </tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  <tr>
    <td><input type="file" name="newfiles[]" multiple="multiple"/></td>
  <td>Add Photo Message <textarea name="photomessage[]" id="photomessage[]" rows="1" cols="18"></textarea></td></tr>
  
  <tr>
  <td><input type="hidden" value="<?php echo $_GET['albumid'];?>" name="new_album_id" id="new_album_id" /></td>
  </tr>
  <tr>
  <td><input type="hidden" value="<?php echo $_GET['albumset'];?>" name="albumset" id="albumset" /></td>
  </tr>
  <tr>
   <td><br/></td>
  </tr>
  <tr>
   <td><input type="submit" value="Upload" name="addnewphotos" id="addnewphotos" /></td>
  </tr>
</table>
</form>


<br/>

<p align="center" style="font-size:14px; width:40%;">Edit Album Details</p>

<?php 
if($_GET['albumset']=="p"){
$query = mysql_query("select * from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_GET['albumid']."'") or die(mysql_error());
}
elseif($_GET['albumset']=="fp"){
$query = mysql_query("select * from fbalbums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_GET['albumid']."'") or die(mysql_error());
}
while($row = mysql_fetch_array($query)){
$albumdesc = $row['AlbumDescription'];
$albumloc = $row['AlbumLocation'];
$albumtime = $row['AlbumTime'];
if($albumdesc=="NULL"){$albumdesc='';}
if($albumloc=="NULL"){$albumloc='';}
}

?>
<div id="newsuccessresponse" style="font-size:14px; color:blue; display:none;" align="center">Please Wait...<br/></div>

<form action="javascript:editalbum();" method="post" name="editalbum" id="editalbum">
<table width="500" border="0" align="center">
 <tr>
    <td>Name *</td>
    <td>&nbsp;</td>
    <td><input type="text" name="newalbumname" id="newalbumname" size="30"  style="height:30px;" value="<?php echo $_GET['albumname'];?>" /></td>
  </tr>
  <tr>
    <td>Description</td>
    <td>&nbsp;</td>
    <td><textarea name="albumdesc" id="albumdesc" rows="3" cols="23"><?php echo $albumdesc;?></textarea>&nbsp;Maximum 255 characters</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>&nbsp;</td>
    <td><input type="text" name="albumloc" id="albumloc" size="30"  style="height:30px;" value="<?php echo $albumloc;?>" /></td>
  </tr>
  <tr>
    <td>Time</td>
    <td>&nbsp;</td>
	<td><input type="text" size="30" style="height:30px;" name="albumtime" id="albumtime" value="<?php echo $albumtime;?>"</td>
	</tr>
	<tr>
  <td colspan="3"><input type="hidden" value="<?php echo $_GET['albumid'];?>" name="edit_album_id" id="edit_album_id" /></td>
  </tr>
  <tr>
  <td colspan="3"><input type="hidden" value="<?php echo $_GET['albumset'];?>" name="edit_album_set" id="edit_album_set" /></td>
  </tr>
  <tr>
  <td colspan="3"><input type="hidden" value="<?php echo $_GET['albumname'];?>" name="albumname" id="albumname" /></td>
  </tr>
	<tr><td colspan="3"><br/></td></tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input type="submit" value="Submit" name="editalbum" /></td>
  </tr>
  </table>
  </form>


<br/>

<p align="center" style="font-size:14px; width:40%;"><a href="javascript:deletealbum('<?php echo $_GET['albumid'];?>','<?php echo $_GET['albumname'];?>','<?php echo $_GET['albumset'];?>');">Delete</a> the Album</p>

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