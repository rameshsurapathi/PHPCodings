<?php
include_once('../Config/Config.php');

if(isset($_GET['request'])&&$_GET['request']=="addeffects"){
if(isset($_GET['pid'])&&$_GET['pid']!=""){
$albumid = mysql_real_escape_string($_GET['albumid']);
$albumname = mysql_real_escape_string($_GET['albumname']);
$albumset = mysql_real_escape_string($_GET['albumset']);
$pid = mysql_real_escape_string($_GET['pid']);
if($albumset=="p"){
$source = '../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$pid.'';
}
elseif($albumset=="fp"){
$source = '../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$pid.'';
}
}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////

if(isset($_POST['request'])&&$_POST['request']=="addeffecttomimage"){
if(isset($_POST['effect'])&&$_POST['effect']!=""){
$effect = mysql_real_escape_string($_POST['effect']);
$source = mysql_real_escape_string($_POST['source']);

if (strpos($source,'../Photos/') !== false) {
$im = imagecreatefromjpeg($source);
}
else{
$source = str_replace("data:image/jpeg;base64,","",$source);
$data = base64_decode($source);
$im = imagecreatefromstring($data);
}

if($im)
{
if($effect=="IMG_FILTER_GRAYSCALE"){
imagefilter($im, IMG_FILTER_GRAYSCALE);
}
elseif($effect=="IMG_FILTER_EMBOSS"){
imagefilter($im, IMG_FILTER_EMBOSS);
}
elseif($effect=="IMG_FILTER_NEGATE"){
imagefilter($im, IMG_FILTER_NEGATE);
}
elseif($effect=="IMG_FILTER_EDGEDETECT"){
imagefilter($im, IMG_FILTER_EDGEDETECT);
}
elseif($effect=="IMG_FILTER_GAUSSIAN_BLUR"){
imagefilter($im, IMG_FILTER_GAUSSIAN_BLUR);
}
elseif($effect=="IMG_FILTER_SELECTIVE_BLUR"){
imagefilter($im, IMG_FILTER_SELECTIVE_BLUR);
}
elseif($effect=="IMG_FILTER_MEAN_REMOVAL"){
imagefilter($im, IMG_FILTER_MEAN_REMOVAL);
}
elseif($effect=="IMG_FILTER_MEAN_REMOVAL"){
imagefilter($im, IMG_FILTER_MEAN_REMOVAL);
}
elseif($effect=="IMG_FILTER_BRIGHTNESS"){
imagefilter($im, IMG_FILTER_BRIGHTNESS,mysql_real_escape_string($_POST['level']));
}
elseif($effect=="IMG_FILTER_CONTRAST"){
imagefilter($im, IMG_FILTER_CONTRAST,mysql_real_escape_string($_POST['level']));
}
elseif($effect=="IMG_FILTER_CONTRAST"){
imagefilter($im, IMG_FILTER_CONTRAST,mysql_real_escape_string($_POST['level']));
}
elseif($effect=="IMG_FILTER_SMOOTH"){
imagefilter($im, IMG_FILTER_SMOOTH,mysql_real_escape_string($_POST['level']));
}
elseif($effect=="IMG_FILTER_COLORIZE"){
imagefilter($im, IMG_FILTER_COLORIZE,mysql_real_escape_string($_POST['red']),mysql_real_escape_string($_POST['green']),mysql_real_escape_string($_POST['blue']));
}

ob_start();
imagepng($im);
$contents =  ob_get_contents();
ob_end_clean();
echo "<img src='data:image/jpeg;base64,".base64_encode($contents)."' />";
}
else
{
    echo 'Conversion failed.';
}
imagedestroy($im);

exit();
}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////

if(isset($_POST['request'])&&$_POST['request']=="savethisimage"){
if(isset($_POST['source'])&&$_POST['source']!=""){
$source = mysql_real_escape_string($_POST['source']);

if (strpos($source,'../Photos/') !== false) {
$im = imagecreatefromjpeg($source);
}
else{
$source = str_replace("data:image/jpeg;base64,","",$source);
$data = base64_decode($source);
$im = imagecreatefromstring($data);
}

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$image_id='';
$size = strlen( $chars );
for( $j = 0; $j < 15; $j++ ) {
	$image_id .= $chars[ rand( 0, $size - 1 ) ];
}
$image_file = $image_id.'.jpg';

$albumid = mysql_real_escape_string($_POST['albumid']);
$albumname = mysql_real_escape_string($_POST['albumname']);
$albumset = mysql_real_escape_string($_POST['albumset']);

header( "Content-type: image/jpeg" );
ob_start();
imagejpeg($im);
$contents =  ob_get_contents();
ob_end_clean();

if($albumset=="p"){
$query = mysql_query("select Count from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='$albumid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$count = $row['Count']+1;
}
$query = mysql_query("insert into photos(AlbumId,AlbumName,PhotoId,PhotoMessage,Date) values('$albumid','$albumname','$image_file','',now())") or die(mysql_error());	
$query = mysql_query("update albums SET Count='$count' where AlbumId='$albumid' and UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

file_put_contents("../Photos/".$_SESSION['authenticateduser']."/Albums/".$albumname."/".$image_file."", $contents);
create_thumb('../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/', $image_file, '../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/',150);

}
elseif($albumset=="fp"){
$query = mysql_query("select Count from fbalbums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='$albumid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$count = $row['Count']+1;
}
$query = mysql_query("insert into fbphotos(AlbumId,AlbumName,PhotoId,PhotoMessage,Date) values('$albumid','$albumname','$image_file','',now())") or die(mysql_error());	
$query = mysql_query("update fbalbums SET Count='$count' where AlbumId='$albumid' and UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

file_put_contents("../Photos/".$_SESSION['authenticateduser']."/FbAlbums/".$albumname."/".$image_file."", $contents);
create_thumb('../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/', $image_file, '../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/',150);

}

echo 'albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'';
exit();
}
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function create_thumb($imagepath,$imagefile, $thumbpath, $thumbWidth){

// load image and get image size
$img = imagecreatefromjpeg( "{$imagepath}{$imagefile}" );
$width = imagesx( $img );
$height = imagesy( $img );

// calculate thumbnail size
$new_width = $thumbWidth;
$new_height = floor( $height * ( $thumbWidth / $width ) );

// create a new temporary image
$tmp_img = imagecreatetruecolor( $new_width, $new_height );

// copy and resize old image into new image
imagecopyresampled( $tmp_img, $img, 0, 0, 0, 0, $new_width, $new_height, $width, $height );

// save thumbnail into a file
imagejpeg( $tmp_img, "{$thumbpath}{$imagefile}",100 );

}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
function effects(){
if($("#removeeffect").children('span').text()!=""){
var effectsarray = $("#removeeffect").children('span').text().split('//++//');
i = effectsarray.length-1;
$("#removeeffect").children('a').attr('href', 'javascript:removeeffect(\''+effectsarray[i]+'\');');
}
}


function addeffect(x){
var url = "AddEffects.php";
if(x!=""){
$("#waiting").html("Please Wait...").show();

var y = $("#effectimage").children('img').attr('src');

$("#removeeffect").css("display","block");
$("#removeeffect").children('span').append("//++//"+y);

effects();

if(x=="IMG_FILTER_BRIGHTNESS"||x=="IMG_FILTER_CONTRAST"||x=="IMG_FILTER_SMOOTH"){
$("#arg2").css("display","none");
$("#arg1").css("display","block");
if(x=="IMG_FILTER_BRIGHTNESS"){
$("#arg1label").html("Level of Brightness");}
else if(x=="IMG_FILTER_CONTRAST"){
$("#arg1label").html("Level of Contrast");
}
else if(x=="IMG_FILTER_SMOOTH"){
$("#arg1label").html("Level of Smoothness");
}
var arg1text = $("#arg1text").val();

$('#arg1text').unbind('keyup');
$("#arg1text").keyup(function (){
    addeffect(x,y);
});

if(arg1text>100){
alert("Maximum Level of Brightness can be 100");
}
else if(arg1text==0){
}
else{
$.post(url,{request:"addeffecttomimage",effect:x,source:y,level:arg1text,},function(data) {
$("#effectimage").html(data).show();
$("#waiting").html("").show();
});
}
}
else if(x=="IMG_FILTER_COLORIZE"){

$("#arg1").css("display","none");
$("#arg2").css("display","block");
var red = $("#red").val();
var green = $("#green").val();
var blue = $("#blue").val();

if(red>255||green>255||blue>255){
alert("Maximum Level of any color can be 255");
}
else{
$.post(url,{request:"addeffecttomimage",effect:x,source:y,red:red,green:green,blue:blue,},function(data) {
$("#effectimage").html(data).show();
$("#waiting").html("").show();
});
}

}
else{
$("#arg1").css("display","none");
$("#arg2").css("display","none");
$.post(url,{request:"addeffecttomimage",effect:x,source:y,},function(data) {
$("#effectimage").html(data).show();
$("#waiting").html("").show();
});
}
}
else{
$("#removeeffect").css("display","none");
$("#removeeffect").children('span').html("");
$("#arg1").css("display","none");
$("#arg2").css("display","none");
var y = "<?php echo $source;?>";
$("#effectimage").html('<img src="'+y+'">').show();
$("#waiting").html("").show();
}
}

function removeeffect(y){
var text = $("#removeeffect").children('span').text().replace("//++//"+y,"");
$("#removeeffect").children('span').html(text);
effects();
if(text==""){
$("#removeeffect").css("display","none");
}
$("#effectimage").html('<img src="'+y+'">').show();
}

function savethisimage(){
$("#waiting").html("Please Wait...").show();
var url = "AddEffects.php";
var aid = "<?php echo $_GET['albumid'];?>";
var aname = "<?php echo $_GET['albumname'];?>";
var aset = "<?php echo $_GET['albumset'];?>";
var y = $("#effectimage").children('img').attr('src');
$.post(url,{request:"savethisimage",source:y,albumid:aid,albumname:aname,albumset:aset,},function(data) {
window.location.href = "ViewAlbum.php?request=viewphotos&&"+data;
});
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
<td valign="top" background="" height="500px;">
<?php include('AfterLoginNavigation.php');?>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<div align="center" style="width:16%;" id="backtoviewalbum"><a href="ViewAlbum.php?request=viewphotos&&albumid=<?php echo $_GET['albumid'];?>&&albumname=<?php echo $_GET['albumname'];?>&&albumset=<?php echo $_GET['albumset'];?>">Back</a></div>
<br/><br />

<p align="center" style="font-size:16px;">Add Special Effects to your Image</p>

<br/>

<table border="0" align="center">
<tr>
<td></td>
<td>
Effects
&nbsp;
<select id="effect" name="effect" style="width:200px;">
<option value="0" onclick="javascript:addeffect('');">No Effect</option>
<option value="IMG_FILTER_NEGATE" onclick="javascript:addeffect('IMG_FILTER_NEGATE');">NEGATIVE</option>
<option value="IMG_FILTER_GRAYSCALE" onclick="javascript:addeffect('IMG_FILTER_GRAYSCALE');">GRAYSCALE</option>
<option value="IMG_FILTER_BRIGHTNESS" onclick="javascript:addeffect('IMG_FILTER_BRIGHTNESS');">BRIGHTNESS</option>
<option value="IMG_FILTER_CONTRAST" onclick="javascript:addeffect('IMG_FILTER_CONTRAST');">CONTRAST</option>
<option value="IMG_FILTER_COLORIZE" onclick="javascript:addeffect('IMG_FILTER_COLORIZE');">COLORIZE</option>
<option value="IMG_FILTER_EDGEDETECT" onclick="javascript:addeffect('IMG_FILTER_EDGEDETECT');">EDGEDETECT</option>
<option value="IMG_FILTER_EMBOSS" onclick="javascript:addeffect('IMG_FILTER_EMBOSS');">EMBOSS</option>
<option value="IMG_FILTER_GAUSSIAN_BLUR" onclick="javascript:addeffect('IMG_FILTER_GAUSSIAN_BLUR');">GAUSSIAN BLUR</option>
<option value="IMG_FILTER_SELECTIVE_BLUR" onclick="javascript:addeffect('IMG_FILTER_SELECTIVE_BLUR');">SELECTIVE BLUR</option>
<option value="IMG_FILTER_MEAN_REMOVAL" onclick="javascript:addeffect('IMG_FILTER_MEAN_REMOVAL');">MEAN REMOVAL</option>
<option value="IMG_FILTER_SMOOTH" onclick="javascript:addeffect('IMG_FILTER_SMOOTH');">SMOOTH</option>
</select>&nbsp;&nbsp;
<span id="removeeffect" style="display:none; float:right;"><a href="javascript:removeeffect();">Remove Before Effect</a><span style="display:none;"></span></span>
</td>
<td></td>
</tr>
<tr>
<td></td><td style="display:none;" id="arg1"><span id="arg1label"></span>&nbsp;<input type="text" id="arg1text" name="arg1text" size="3" maxlength="3" style="height:20px;" value="0" /></td>
<td>&nbsp;</td>
</tr>
<tr>
<td></td><td style="display:none;" id="arg2">Red <input type="text" id="red" name="red" size="3" maxlength="3" style="height:20px;" value="0" onkeyup="javascript:addeffect('IMG_FILTER_COLORIZE');" /> Green <input type="text" id="green" name="green" size="3" maxlength="3" style="height:20px;" value="0" onkeyup="javascript:addeffect('IMG_FILTER_COLORIZE');" /> Blue <input type="text" id="blue" name="blue" size="3" maxlength="3" style="height:20px;" value="0" onkeyup="javascript:addeffect('IMG_FILTER_COLORIZE');" />
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan="3"><div id="waiting" align="center"></div></td>
</tr>
<tr>
<td colspan="3" id="effectimage"><img src="<?php echo $source;?>" /></td></tr>
<tr>
<td colspan="3"><br/></td></tr>
<tr>
<td><input type="button" value="Save Image" style="height:30px;" onclick="javascript:savethisimage();" /></td>
<td>&nbsp;</td>
<td></td></tr>
<td colspan="3"><br/></td></tr>
<td colspan="3"><br/></td></tr>
</table>


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