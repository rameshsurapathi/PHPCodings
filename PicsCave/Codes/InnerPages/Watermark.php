<?php ob_start();?>
<?php
include_once('../Config/Config.php');
if(isset($_GET['request'])&&$_GET['request']=="imagewatermarking"){
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
$im = imagecreatefromjpeg('../Photos/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'');
$xcoor = imagesx($im);
$ycoor = imagesy($im);
}
?>
<?php
if(isset($_POST['request'])&&$_POST['request']=="watermarker"){

$width = mysql_real_escape_string($_POST['width']);
$height = mysql_real_escape_string($_POST['height']);
$bgcol = '0x'.str_replace('#','',mysql_real_escape_string($_POST['bgcol']));
$txt = stripslashes(mysql_real_escape_string($_POST['txt']));
$txtcol = '0x'.str_replace('#','',mysql_real_escape_string($_POST['txtcol']));
$fsize = mysql_real_escape_string($_POST['fsize']);
$x1 = mysql_real_escape_string($_POST['x1']);
$y1 = mysql_real_escape_string($_POST['y1']);
$x = mysql_real_escape_string($_POST['x']);
$y = mysql_real_escape_string($_POST['y']);
$op = mysql_real_escape_string($_POST['op']);
$albumname = mysql_real_escape_string($_POST['albumname']);
$albumfolder = mysql_real_escape_string($_POST['albumfolder']);
$pid = mysql_real_escape_string($_POST['pid']);
$check = mysql_real_escape_string($_POST['check']);

$im = imagecreatefromjpeg('../Photos/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'');

if($width>0&&$height>0&&$bgcol!=""&&$fsize>0&&$x!=""&&$y!=""&&$txt!=""&&$txtcol!=""&&$x1!=""&&$y1!=""&&$op!=""){
$stamp = imagecreatetruecolor($width, $height);
imagefilledrectangle($stamp, 0, 0, $width, $height, $bgcol);
if($check=="no"){
imagestring($stamp, $fsize, $x, $y, $txt, $txtcol);
imagecopymerge($im, $stamp, $x1, $y1, 0, 0, $width, $height, $op);
}
elseif($check=="yes"){
imagestring($im, $fsize, $x, $y, $txt, $txtcol);
}
}

$saveimage = mysql_real_escape_string($_POST['saveimage']);
if($saveimage=="savetrue"){

$xcoor = imagesx($im);
$ycoor = imagesy($im);
$keyx = rand(10,100);
$keyy = rand(10,100);
$query = mysql_query("select md5Value from md5secrettexts where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$text = substr($row['md5Value'],2,8);
}

for($i=1;$i<9;$i++){
$oldx = abs(($xcoor/10)*$i)+$keyx;
if($oldx>$xcoor){$oldx=$xcoor;}
$oldy = abs(($ycoor/10)*$i)+$keyy;
if($oldy>$ycoor){$oldy=$ycoor;}
$oldstamp = imagecreatetruecolor(80, 20);
imagefilledrectangle($oldstamp, 0, 0, 80, 20, '0xFFFFFF');
imagestring($oldstamp, '5', 5,0, $text, '0x000000');
imagecopymerge($im, $oldstamp, $oldx, $oldy, 0, 0, 80, 20, '5');
}

if($albumfolder=="Albums"){
$query = mysql_query("select AlbumId from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumName='".$albumname."'") or die(mysql_error());
$albumset="p";
}
elseif($albumfolder=="FbAlbums"){
$query = mysql_query("select AlbumId from fbalbums where UserId='".$_SESSION['authenticateduser']."' and AlbumName='".$albumname."'") or die(mysql_error());
$albumset="fp";
}
while($row = mysql_fetch_array($query)){
$albumid = $row['AlbumId'];
}

$image_file = 'Watermarked_'.$pid;

$query = mysql_query("insert into watermarklogs(PhotoId,VisibleText,InvisibleText,Xkey,Ykey,Time) values('$pid','$txt','$text','$keyx','$keyy',now())") or
die(mysql_query());


header( "Content-type: image/jpeg" );
ob_start();
imagejpeg($im);
$contents =  ob_get_contents();
ob_end_clean();

file_put_contents("../Photos/".$_SESSION['authenticateduser']."/".$albumfolder."/".$albumname."/".$image_file."", $contents);
create_thumb('../Photos/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/', $image_file, '../Thumbs/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/',150);
echo 'albumid='.$albumid.'&&albumname='.$albumname.'&&albumset='.$albumset.'';

}
else{
header( "Content-type: image/jpeg" );
ob_start();
imagejpeg($im);
$contents =  ob_get_contents();
ob_end_clean();
echo "<img src='data:image/jpeg;base64,".base64_encode($contents)."' />";
imagedestroy($im);
}

exit();
}

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
<link rel="stylesheet" href="../Effects/mooRainbow/mooRainbow.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/mootools/1.3.0/mootools-yui-compressed.js" type="text/javascript"></script>
<script src="../Effects/mooRainbow/mootools-more.js" type="text/javascript"></script>
<script src="../Effects/mooRainbow/mooRainbow.js" type="text/javascript"></script>
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
function imagemaker(p){
$("#errordiv").html("Please Wait.....").show();
var url = "Watermark.php";
var width = document.getElementById("width").value;
var height = document.getElementById("height").value;
var bgcol = document.getElementById("bgcol").value;
var txt = document.getElementById("txt").value;
var txtcol = document.getElementById("txtcol").value;
var fsize = document.getElementById("fsize").value;
var x1 = document.getElementById("top1").value;
var y1 = document.getElementById("left1").value;
var x = document.getElementById("top").value;
var y = document.getElementById("left").value;
var op = document.getElementById("op").value;
var albumname = "<?php echo $albumname;?>";
var albumfolder = "<?php echo $albumfolder;?>";
var pid = "<?php echo $pid;?>";

var c3 = watermarkform.checkbox3.checked;
var c4 = watermarkform.checkbox4.checked;
if(c4==true&&c3==false){
var checkvalue = "no";
$("#field1").show();
$("#field2").show();
$("#field3").show();
$("#field4").show();
$("#field5").show();
}
else if(c3==true&&c4==false){
var checkvalue = "yes";
$("#field1").hide();
$("#field2").hide();
$("#field3").hide();
$("#field4").hide();
$("#field5").hide();
}

if(p==1){
var saveimage = "";
$.post(url,{request:"watermarker",width:width,height:height,bgcol:bgcol,txt:txt,txtcol:txtcol,fsize:fsize,x1:x1,y1:y1,x:x,y:y,op:op,albumname:albumname,albumfolder:albumfolder,pid:pid,saveimage:saveimage,check:checkvalue,},function(data) {
if(data==""){$("#errordiv").html("Please Enter some value in the field").show();}
else{
$("#errordiv").html("").show();
$("#imagediv").html(data).show();}
});
}
else if(p==2){
var saveimage = "savetrue";
$.post(url,{request:"watermarker",width:width,height:height,bgcol:bgcol,txt:txt,txtcol:txtcol,fsize:fsize,x1:x1,y1:y1,x:x,y:y,op:op,albumname:albumname,albumfolder:albumfolder,pid:pid,saveimage:saveimage,check:checkvalue,},function(data) {

window.location.href = "ViewAlbum.php?request=viewphotos&&"+data;
});
}
}

function showbox(x){
var c1 = watermarkform.checkbox1.checked;
var c2 = watermarkform.checkbox2.checked;
if(x==""&&c2==true){
watermarkform.checkbox1.checked =  false;
document.getElementById("txt").value = "PicsCave";
document.getElementById("txt").readOnly=false;
imagemaker(1);
}
else if(x!=""&&c1==true){
watermarkform.checkbox2.checked =  false;
document.getElementById("txt").value = x;
document.getElementById("txt").readOnly=true;
imagemaker(1);
}
}

function showbox1(x){
var c3 = watermarkform.checkbox3.checked;
var c4 = watermarkform.checkbox4.checked;

if(x==1&&c4==true){
watermarkform.checkbox4.checked = false;
imagemaker(1);
}
else if(x==2&&c3==true){
watermarkform.checkbox3.checked = false;
imagemaker(1);
}
}
</script>
</head>
<body onload="javascript:imagemaker(1);">
<table border="0" align="center" width="100%" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
<td align="left" valign="top" background="../Images/HeaderBg.png">
<?php include_once('AfterLoginHeader.php');?>
</td
></tr>
<tr>
<td valign="top" background="" height="500px;">
<?php include('AfterLoginNavigation.php');?>
<br/><br/><br/><br/><br/><br/><br/>

<div align="center" style="width:16%;" id="backtoviewalbum"><a href="ViewAlbum.php?request=viewphotos&&albumid=<?php 
echo $_GET['albumid'];?>&&albumname=<?php echo $_GET['albumname'];?>&&albumset=<?php echo $_GET['albumset'];?>">Back</a></div>
<br/><br/>

<p align="center" style="font-size:16px;">Watermark Settings</p>
<p align="center">A backup of the photo will be stored in the backup files of the album.</p>
<br/>

<form name="watermarkform" id="watermarkform">
<table border="0" align="center">
<tr id="field1">
<td>Block Dimensions</td>
<td>&nbsp;</td>
<td>Width <input type="text" id="width" name="width" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);" value="100"/>&nbsp;
Height <input type="text" id="height" name="height" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);" value="30" />&nbsp;
Max. Width : <?php echo $xcoor;?>&nbsp;<b>|</b>&nbsp;Max.Height : <?php echo $ycoor;?></td></tr>
<tr id="field2">
<td>Block Background Color</td>
<td>&nbsp;</td>
<td><input type="text" id="bgcol" name="bgcol" size="30" style="height:30px;" /></td>
</tr>
<script type="text/javascript">
			var r = new MooRainbow('bgcol', {
					startColor: [255, 255, 255],
					imgPath: '../Effects/mooRainbow/images/',
					onChange: function(color) {
						this.element.value = color.hex;
					}
				});
				$('#mooRainbow').mouseup(function(){
  imagemaker(1);
}); 
</script>
<tr>
<td>Remove the block</td>
<td>&nbsp;</td>
<td><input type="checkbox" name="checkbox3" onclick="javascript:showbox1(1);"> Yes &nbsp;<input type="checkbox" name="checkbox4"
onclick="javascript:showbox1(2);" checked="checked" > No</td>
</td>
</tr>
<tr>
<td>Watermark Text</td>
<td>&nbsp;</td>
<?php
$query = mysql_query("select md5Value from md5secrettexts where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$text = substr($row['md5Value'],4,10);
}
?>
<td>
<input type="checkbox" checked="checked" name="checkbox1" onclick="javascript:showbox('<?php echo $text;?>');" /> Add My Secret Text
<input type="checkbox" onclick="javascript:showbox('');" name="checkbox2" /> Add a New Text
</td></tr>
<tr>
<td></td>
<td>&nbsp;</td>
<td>
<input type="text" id="txt" name="txt"  readonly="readonly" style="height:30px;" size="30" onchange="javascript:imagemaker(1);" value="<?php echo $text;?>"></td>
</tr>
<tr>
<td>Text Color</td>
<td>&nbsp;</td>
<td><?php include_once('colorpicker.html');?></td></tr>
<tr>
<td>Text Size</td>
<td>&nbsp;</td>
<td><select id="fsize" name="fsize" style="width:50px;" onchange="javascript:imagemaker(1);">
<option value="4">4</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="5">5</option>
</select>
</td>
</tr>
<tr id="field4">
<td>Block Position</td>
<td>&nbsp;</td>
<td>X <input type="text" id="top1" name="top1" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);" value="0"/>&nbsp;
Y <input type="text" id="left1" name="left1" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);" value="0" />&nbsp;
</td></tr>
<tr>
<td>Text Position</td>
<td>&nbsp;</td>
<td>X <input type="text" id="top" name="top" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);" value="10"/>&nbsp;
Y <input type="text" id="left" name="left" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);" value="10" />&nbsp;
</td></tr>
<tr id="field5">
<td>Text Opacity</td>
<td>&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;<input type="text" id="op" name="op" maxlength="30" style="height:30px;" value="50" size="3" onchange="javascript:imagemaker(1);"></td></tr>
<tr><td colspan="3"><br/></td></tr>
<tr>
<td colspan="3"><input type="button" value="Save Image" onclick="javascript:imagemaker(2);" style="height:30px;" /></td></tr>
</table>
</form>

<br/>
<div align="center" id="errordiv"></div>
<br/>
<div align="center" id="imagediv">
<?php echo '<img src="../Photos/'.$_SESSION['authenticateduser'].'/'.$albumfolder.'/'.$albumname.'/'.$pid.'">';?>
</div>
<br/><br/>
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