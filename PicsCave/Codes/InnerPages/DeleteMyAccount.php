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
function deleteuseraccount(){
	
var userpass = $("#userpass");	
var url = "../Scripts/UserDeleteAccount.php";

if(userpass.val()==""){
	alert("Please enter your Password");
}
else{
$("#deleteaccounterror").html("Please Wait..").show();

$.post(url,{request:"deleteuseraccount",userpass:userpass.val(),},function(data) {
					
		if(data==1){
			$('#deleteaccountform').slideUp("fast");
		$("#deleteaccounterror").html("Your Account has been deleted successfully.").show();
		window.location.href="http://www.PicsCave.com/";																																													 }
																																																 if(data==0){
	$("#deleteaccounterror").html("Error : Wrong Password.").show();	
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

<div id="deleteaccounterror" style="font-size:12px; color:blue;" align="center"></div>

<form action="javascript:deleteuseraccount();" method="post" name="deleteaccountform" id="deleteaccountform">
<table border="0" align="center">
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2">To Delete your Account, Enter your account password below</td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td>Password</td>
<td>&nbsp;<input type="password" name="userpass" id="userpass" size="30" style="height:30px;" /></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td></td>
<td>&nbsp;<input type="submit" value="Submit" name="deleteuseracc" id="deleteuseracc" style="height:30px;" /></td></tr>
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