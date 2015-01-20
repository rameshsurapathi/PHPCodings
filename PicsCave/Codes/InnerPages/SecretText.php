<?php ob_start();?>
<?php session_start();?>

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
function changesecrettext(){
var url = "../Scripts/UserSecretText.php";
var oldsecrettext = $("#oldsecrettext");
var newsecrettext = $("#newsecrettext");
var confirmnewsecrettext = $("#confirmnewsecrettext");
if(oldsecrettext.val()==""){
alert("Please Enter Your Old Secret Text");
}
if(newsecrettext.val()==""){
alert("Please Enter Your New Secret Text");
}
else if(newsecrettext.val().length<6){
alert("New Secret Text should be of Minimum 6 characters");
}
else if(newsecrettext.val().length>30){
alert("Maximum 30 characters are only allowed in New Secret Text");
}
else if(confirmnewsecrettext.val()==""){
alert("Please Re-Enter Your New Secret Text");
}
else if(newsecrettext.val()!=confirmnewsecrettext.val()){
alert("Your entered New Secret Text and Re-entered New Secret Text are not matching");
}
else{
$("#successresponse").show();	
$.post(url,{request:"changesecrettext",oldsecrettext:oldsecrettext.val(),newsecrettext:newsecrettext.val(),},function(data) {																																																					 																																																																																																																																																											
			//alert(data);																																																																																																																																																													
																																																																																																																																																															if(data==1){
	$('#changesecrettext').slideUp("fast");
	$("#successresponse").html("Your Secret Text has been Changed Successfully.").show();
																																																		}
																																																			else if(data==0){
																																																	   $("#successresponse").html("Your Old Secret Text is incorrect. Please Try Again.").show();
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

<div id="successresponse" style="font-size:12px; color:blue; display:none;" align="center">Please Wait...<br/></div>

<form action="javascript:changesecrettext();" method="post" name="changesecrettext" id="changesecrettext">
<table width="704" border="0" align="center">
  <tr><td colspan="3" style="font-size:18px;">Change My Secret Text</td></tr>
   <tr><td colspan="3"><br/></td></tr>
   <tr>
    <td><label>Old Secret Text</label></td>
    <td>&nbsp;</td>
    <td><input type="password" name="oldsecrettext" id="oldsecrettext" size="30" style="height:30px;" />&nbsp;<span style="font-size:10px;"></span></td>
  </tr>
  <tr>
    <td><label>New Secret Text</label></td>
    <td>&nbsp;</td>
    <td><input type="password" name="newsecrettext" id="newsecrettext" size="30" style="height:30px;" />&nbsp;<span style="font-size:10px;">Length should be Minimum 6 and Maximum 30</span></td>
  </tr>
  <tr>
    <td><label>Re-Enter New Secret Text</label></td>
    <td>&nbsp;</td>
    <td><input type="password" name="confirmnewsecrettext" id="confirmnewsecrettext" size="30" style="height:30px;" /></td>
  </tr>
  <tr><td colspan="3"><br/></td></tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input type="submit" value="Submit" name="changetext" /></td>
  </tr>
  <tr><td colspan="3"><br/></td></tr>
  <tr><td></td><td></td><td><a href="ForgetSecretText.php">Forget Secret Text</a></td></tr>
</table>

</form>

</td>
</tr>
<tr>
<td height="70" width="100%" id="footer" align="center" valign="middle" background="../Images/HeaderBg.png">
<br/><br/>
<?php include_once('AfterLoginFooter.php');?>
</td>
</tr>
</table>
</body>
</html>
<?php ob_flush();?>