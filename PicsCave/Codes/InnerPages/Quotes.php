<?php ob_start();?>
<?php session_start();?>﻿

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
function imagemaker(x){
$("#waiting").html("please wait...").show();
var url = "../Scripts/QuoteCode.php";
var imwidth = document.getElementById("imwidth").value;
var imheight = document.getElementById("imheight").value;
if(imwidth!=""&&imheight!=""&&imwidth>0&&imheight>0){
var bgcol = document.getElementById("bgcol").value;
var txt = document.getElementById("txt").value.replace(/\n/g, "|");
var txtcol = document.getElementById("txtcol").value;
var fsize = document.getElementById("fsize").value;
var ffamily = document.getElementById("ffamily").value;
var angle = document.getElementById("angle").value;
var top = document.getElementById("top").value;
var left = document.getElementById("left").value;
if(top==""){
top = imheight/10;
}
if(left==""){
left = 0;
}
if(x==1){
var saveimage = "";
$.post(url,{request:"imagemaker",imwidth:imwidth,imheight:imheight,bgcol:bgcol,txt:txt,txtcol:txtcol,fsize:fsize,ffamily:ffamily,top:top,left:left,angle:angle,saveimage:saveimage,},function(data) {
$("#imagediv").html(data).show();
$("#waiting").html("").show();
});
}
else if(x==2){
var saveimage = "savetrue";
$.post(url,{request:"imagemaker",imwidth:imwidth,imheight:imheight,bgcol:bgcol,txt:txt,txtcol:txtcol,fsize:fsize,ffamily:ffamily,top:top,left:left,angle:angle,saveimage:saveimage,},function(data) {
window.location.href = "ViewAlbum.php?request=viewphotos&&"+data;
});
}
}
else{
$("#imagediv").html("").show();
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
<td valign="top" background="" height="500px;">
<?php include('AfterLoginNavigation.php');?>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

<p align="center" style="font-size:12px;">Make your Own Image.Copyright your Image with your secret Mark.Post it to Facebook</p>
<br/>

<form>
<table border="0" align="center">
<tr>
<td>Image Width</td>
<td>&nbsp;</td>
<td><input type="text" name="imwidth" id="imwidth" size="3" style="height:30px;" maxlength="3" onchange="javascript:imagemaker(1);"/></td>
</tr>
<tr>
<td>Image Height</td>
<td>&nbsp;</td>
<td><input type="text" name="imheight" id="imheight" size="3" style="height:30px;" maxlength="3" onchange="javascript:imagemaker(1);"/></td>
</tr>
<tr>
<td>Image Background Color</td>
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
<td>Text</td>
<td>&nbsp;</td>
<td><textarea id="txt" name="txt" rows="3" cols="23" onchange="javascript:imagemaker(1);">Sample Text</textarea></td></tr>
<tr>
<td>Text Color</td>
<td>&nbsp;</td>
<td><?php include_once('colorpicker.html');?></td></tr>
<tr>
<td>Text Size</td>
<td>&nbsp;</td>
<td><input type="text" name="fsize" id="fsize" size="2" maxlength="2" style="height:30px;" value="12" onchange="javascript:imagemaker(1);"/></td>
</tr>
<tr><td>Text Family</td><td>&nbsp;</td>
<td><select name="ffamily" id="ffamily" style="width:210px; height:30px;" onchange="javascript:imagemaker(1);">
<option value="Antiqua">Antiqua</option>
<option value="Arial">Arial</option><option value="Avqest">Avqest</option><option value="Calibri">Calibri</option><option value="Comic Sans">Comic Sans</option><option value="Times New Roman">Times New Roman</option><option value="Verdana">Verdana</option></select></td></tr>
<tr>
<td>Text Position</td>
<td>&nbsp;</td>
<td>Top <input type="text" id="top" name="top" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);"/>&nbsp;
Left <input type="text" id="left" name="left" maxlength="3" size="3" style="height:30px;" onchange="javascript:imagemaker(1);" />&nbsp;
Angle <input type="text" id="angle" name="angle" maxlength="3" size="3" style="height:30px;" value="0" onchange="javascript:imagemaker(1);" />&nbsp;
</td></tr>
<tr><td colspan="3"><br/></td></tr>
<tr>
<td colspan="3"><input type="button" value="Save Image" onclick="javascript:imagemaker(2);" style="height:30px;" /></td></tr>
</table>
</form>
<div id="waiting" align="center"></div>
<br/><br/>
<div align="center" id="imagediv"></div>
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