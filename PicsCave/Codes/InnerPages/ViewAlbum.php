<?php ob_start();?>
<?php
include_once('../Config/Config.php');

if(isset($_GET['request'])&&$_GET['request']=="removewatermarking"){
$albumid = mysql_real_escape_string($_GET['albumid']);
$albumname = mysql_real_escape_string($_GET['albumname']);
$albumset = mysql_real_escape_string($_GET['albumset']);
$pid = mysql_real_escape_string($_GET['pid']);
if($albumset=="p"){
$albumfolder = 'Albums';
}
elseif($albumset=="fp"){
$albumfolder = 'FbAlbums';
}
$img1 = '../Photos/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'';
$img2 = '../Thumbs/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'';
unlink($img1);
unlink($img2);
$mpid = explode("Watermarked_",$pid);
$query = mysql_query("delete from watermarklogs where PhotoId='$mpid[1]'") or die(mysql_error());
header('location:ViewAlbum.php?request=viewphotos&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'');
}


if(isset($_GET['request'])&&$_GET['request']=="viewphotos"){

if(isset($_GET['albumid'])&&$_GET['albumid']!=""&&isset($_GET['albumname'])&&$_GET['albumname']!=""){

$albumid = mysql_real_escape_string($_GET['albumid']);
$albumname = mysql_real_escape_string($_GET['albumname']);
$albumset = mysql_real_escape_string($_GET['albumset']);

if($albumset=="p"){
$query = mysql_query("select Id,PhotoId,PhotoMessage from photos where AlbumId='$albumid' and AlbumName='$albumname' order by Id asc") or die(mysql_error());
$albumfolder = 'Albums';
}
elseif($albumset=="fp"){
$query = mysql_query("select Id,PhotoId,PhotoMessage from fbphotos where AlbumId='$albumid' and AlbumName='$albumname' order by Id asc") or die(mysql_error());
$albumfolder = 'FbAlbums';
}
$photos = '';
$backupphotos ='';
$photos.='<p align="center" style="font-size:16px;">'.$albumname.' Album</p><br/>
<div style="width:90%;" align="center">';
while($row = mysql_fetch_array($query)){
$pid = $row['PhotoId'];

if(file_exists('../Thumbs/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/Watermarked_'.$pid.'')){

list($width, $height) = getimagesize('../Thumbs/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'');
if($width<$height){$width = 100;	}
else{ $width = 150; }

$backupphotos.='<table border="0" style="display:inline-block;vertical-align: top;"><tr><td>
<img src="../Thumbs/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'" width="'.$width.'" height="100">
</td></tr></table>';

$pid = 'Watermarked_'.$pid.'';
$watermarksetting = '<tr>
<td rowspan="4"><a href="ViewAlbum.php?request=removewatermarking&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'&&pid='.$pid.'" style="text-decoration:none;font-size:11px;">R<br/>E<br/>M<br/>O<br/>V<br/>E</a></td>
<td rowspan="4"><a href="ViewAlbum.php?request=removewatermarking&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'&&pid='.$pid.'" style="text-decoration:none;font-size:11px;">W<br/>A<br/>T<br/>E<br/>R<br/>M<br/>A<br/>R<br/>K</a></td></tr>';
$delete = '<a href="ViewAlbum.php?request=removewatermarking&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'&&pid='.$pid.'" style="color:red;">Delete</a>';

}
else{
$pid = $pid;
$watermarksetting = '<tr><td rowspan="4"><a href="Watermark.php?request=imagewatermarking&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'&&pid='.$pid.'" style="text-decoration:none;font-size:11px;">W<br/>A<br/>T<br/>E<br/>R<br/>M<br/>A<br/>R<br/>K</a></td></tr>';
$delete = '<a href="javascript:deletephoto(\''.$albumid.'\',\''.$albumname.'\',\''.$albumset.'\',\''.$pid.'\');" style="color:red;">Delete</a>';
}

list($width, $height) = getimagesize('../Thumbs/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'');
if($width<$height){$width = 100;	}
else{ $width = 150; }

$photos.='<table border="0" style="display:inline-block;vertical-align: top;">
'.$watermarksetting.'
<tr>
<td><a href="AddEffects.php?request=addeffects&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'&&pid='.$pid.'" style="color:black;">Add Effects</a></td>
<td>&nbsp;</td></tr>
<tr><td>
<img src="../Thumbs/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'" width="'.$width.'" height="100" style="cursor:pointer;" onclick="javascript:bigimage(\''.$_SESSION['authenticateduser'].'\',\''.$albumfolder.'\',\''.$albumname.'\',\''.$pid.'\',\''.$row['PhotoMessage'].'\',\''.$row['Id'].'\',\''.$albumid.'\');">
</td><td>&nbsp;</td></tr>
<tr><td>
<a href="javascript:editphoto(\''.$albumset.'\',\''.$row['Id'].'\',\''.$row['PhotoMessage'].'\');" id="edit'.$row['Id'].'">Edit</a>
&nbsp;
<a href="javascript:postphoto(\''.$albumset.'\',\''.$pid.'\');" id="post'.$row['Id'].'" style="color:green;">Post</a>&nbsp;
'.$delete.'&nbsp;
</td>
<td>&nbsp;</td></tr>
<tr><td colspan="2" id="'.$row['Id'].'" name="'.$row['Id'].'"></td></tr>
<tr><td colspan="2"><br/><br/></td></tr>
</table>';
}
$photos.='</div>';
}

}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if(isset($_GET['request'])&&$_GET['request']=="deletephoto"){

if(isset($_GET['pid'])&&$_GET['pid']!=""){

$albumid = mysql_real_escape_string($_GET['albumid']);
$albumname = mysql_real_escape_string($_GET['albumname']);
$albumset = mysql_real_escape_string($_GET['albumset']);
$pid = mysql_real_escape_string($_GET['pid']);

if($albumset=="p"){
$query = mysql_query("delete from photos where PhotoId='$pid'") or die(mysql_error());
$query = mysql_query("select Count from albums where AlbumId='$albumid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$count = $row['Count']-1;
}
$query = mysql_query("update albums SET Count='$count' where AlbumId='$albumid'") or die(mysql_error());

$img1 = '../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$pid.'';
$img2 = '../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$pid.'';
unlink($img1);
unlink($img2);
}
elseif($albumset=="fp"){
$query = mysql_query("delete from fbphotos where PhotoId='$pid'") or die(mysql_error());

$query = mysql_query("select Count from fbalbums where AlbumId='$albumid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$count = $row['Count']-1;
}
$query = mysql_query("update fbalbums SET Count='$count' where AlbumId='$albumid'") or die(mysql_error());

$img1 = '../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$pid.'';
$img2 = '../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$pid.'';
unlink($img1);
unlink($img2);
}

header('location:ViewAlbum.php?request=viewphotos&&albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'');

}
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if(isset($_POST['request'])&&$_POST['request']=="addphotomessage"){

if(isset($_POST['photoid'])&&$_POST['photoid']!=""){

$albumset = mysql_real_escape_string($_POST['albumset']);
$photoid = mysql_real_escape_string($_POST['photoid']);
$oldphotomessage = mysql_real_escape_string($_POST['oldphotomessage']);
$photomessage = mysql_real_escape_string($_POST['photomessage']);

if($photomessage==$oldphotomessage){
echo '1';
}
else{

if($albumset=="p"){
$query = mysql_query("update photos SET PhotoMessage='$photomessage' where Id='$photoid'") or die(mysql_error());
$numofrows = mysql_affected_rows();
if($numofrows>0){
echo '1';
}
else{
echo '0';
}
}
elseif($albumset=="fp"){
$query = mysql_query("update fbphotos SET PhotoMessage='$photomessage' where Id='$photoid'") or die(mysql_error());
$numofrows = mysql_affected_rows();
if($numofrows>0){
echo '1';
}
else{
echo '0';
}
}

}//end of else

exit();

}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if(isset($_POST['request'])&&$_POST['request']=="prevphoto"){
if(isset($_POST['id'])&&$_POST['id']!=""){
$id = mysql_real_escape_string($_POST['id']);
$albumid = mysql_real_escape_string($_POST['albumid']);
$albumfolder = mysql_real_escape_string($_POST['albumfolder']);
if($albumfolder=="Albums"){
$query = mysql_query("select Id,PhotoId,PhotoMessage from photos where Id<'$id' and AlbumId='$albumid' ORDER BY Id DESC LIMIT 1") or die(mysql_error());
}
elseif($albumfolder=="FbAlbums"){
$query = mysql_query("select Id,PhotoId,PhotoMessage from fbphotos where Id<'$id' and AlbumId='$albumid' ORDER BY Id DESC LIMIT 1") or die(mysql_error());
}
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
echo '\''.$row['PhotoId'].'\',\''.$row['PhotoMessage'].'\',\''.$row['Id'].'\',\''.$albumid.'\'';
}
}
exit();
}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if(isset($_POST['request'])&&$_POST['request']=="nextphoto"){
if(isset($_POST['id'])&&$_POST['id']!=""){
$id = mysql_real_escape_string($_POST['id']);
$albumid = mysql_real_escape_string($_POST['albumid']);
$albumfolder = mysql_real_escape_string($_POST['albumfolder']);
if($albumfolder=="Albums"){
$query = mysql_query("select Id,PhotoId,PhotoMessage from photos where Id>'$id' and AlbumId='$albumid' ORDER BY Id ASC LIMIT 1") or die(mysql_error());
}
elseif($albumfolder=="FbAlbums"){
$query = mysql_query("select Id,PhotoId,PhotoMessage from fbphotos where Id>'$id' and AlbumId='$albumid' ORDER BY Id ASC LIMIT 1") or die(mysql_error());
}
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
echo '\''.$row['PhotoId'].'\',\''.$row['PhotoMessage'].'\',\''.$row['Id'].'\',\''.$albumid.'\'';
}
}
exit();
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
function bigimage(x,y,z,w,p,q,r){
$("#photos").hide();
$("#backupphotos").hide();
$("#backtoalbum").hide();
$("#photoenlarge").show();
var src = "../Photos/"+x+"/"+y+"/"+z+"/"+w+"";
$("#photoenlargeimage").attr("src", src);
$("#showpmess").html(""+p).show();
var url="ViewAlbum.php";
$.post(url,{request:"prevphoto",albumid:r,albumfolder:y,id:q,},function(data) {
if(data==""){
$("#prev").hide();
}
else{
$("#prev").show();
$("#prev").attr("href", "javascript:bigimage(\'"+x+"\',\'"+y+"\',\'"+z+"\',"+data+");");
}
});
$.post(url,{request:"nextphoto",albumid:r,albumfolder:y,id:q,},function(data) {
if(data==""){
$("#next").hide();
}
else{
$("#next").show();
$("#next").attr("href", "javascript:bigimage(\'"+x+"\',\'"+y+"\',\'"+z+"\',"+data+");");
}
});
}

function closeimage(){
$("#photoenlarge").hide();
$("#photoenlargeimage").attr("src", "");
$("#showpmess").html("").show();
$("#photos").show();
$("#backupphotos").show();
$("#backtoalbum").show();
}

function closemessage(x,y,z){
$("#edit"+y).html('<a href="javascript:editphoto(\''+x+'\',\''+y+'\',\''+z+'\');">Edit</a>').show();
$("#"+y).html('').show();
}

function editphoto(x,y,z){
$("#edit"+y).html('<a href="javascript:closemessage(\''+x+'\',\''+y+'\',\''+z+'\');">Close</a>').show();
$("#"+y).html('<form action="javascript:addphotomessage(\''+x+'\',\''+y+'\',\''+z+'\');" method="post" name="'+y+'" id="'+y+'"><table border="0"><tr><td>Add Photo Message</td></tr><tr><td><textarea name="photomessage'+y+'" id="photomessage'+y+'" rows="4" cols="15">'+z+'</textarea></td></tr><tr><td><input type="submit" value="Add" style="height:30px;"></td></tr></table></form>').show();
}

function postphoto(x,y){
window.location.href = "Friends.php?albumset="+x+"&&photoid="+y;
}


function deletephoto(x,y,z,w){
var r = confirm("Are you sure,you want to delete the photo");
if(r==true){
window.location.href = "ViewAlbum.php?request=deletephoto&&albumid="+x+"&&albumname="+y+"&&albumset="+z+"&&pid="+w;
}
}

function addphotomessage(x,y,z){
var servurl = "<?php echo $_SERVER['REQUEST_URI'];?>";
var photomessage = $("#photomessage"+y);
var url = "ViewAlbum.php";
if(photomessage.val()==""){
alert("Please Enter your Photo Message");
}
else{
$.post(url,{request:"addphotomessage",albumset:x,photoid:y,photomessage:photomessage.val(),oldphotomessage:z,},function(data) {
$("#"+y).html("Please wait....").show();

if(data==1){
$("#"+y).html("<span style='font-size:10px;color:blue;'>Your Message has been added successfully<span>").show();
window.location.href=servurl;
}
else if(data==0){
$("#"+y).html("<span style='font-size:10px;color:red;'>Error: Please Try again</span>").show();
$("#edit"+y).html('<a href="javascript:editphoto(\''+x+'\',\''+y+'\',\''+z+'\');">Edit</a>').show();
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
<div id="photos">
<?php echo '<div align="center">'.$photos.'</div>'; ?>
</div>
<br/>
<div id="backupphotos">
<div align="center" style="font-size:16px;">BACKUP PHOTOS</div>
<br/>
<?php 
if(isset($backupphotos)&&$backupphotos!=""){
echo '<p align="center" style="font-size:11px;">If the watermarked photo is deleted or if the watermark has been removed,then the backup photo will be restored to main photos.</p><br/>
<div align="center">'.$backupphotos.'</div><br/><br/>';
}
else{
echo '<div align="center" style="color:blue;">No backup photos are found</div><br/><br/>';
}
?>
</div>

<div id="photoenlarge" style="display:none; width:100%" align="center">
<div align="right"><a href="javascript:closeimage();">Close</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
<a href="#" style="position:absolute; top:70%; left:100px;" id="prev">Prev</a>
<a href="#" style="position:absolute; top:70%; left:880px;" id="next">Next</a>
<img id="photoenlargeimage" src="" />
<br/>
<p id="showpmess" align="center" style="font-size:14px;"></p>
</div>
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