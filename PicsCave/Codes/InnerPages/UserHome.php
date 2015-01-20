<?php ob_start();?>
<?php
session_start();
if((isset($_GET['request'])&&$_GET['request']=="addfacebookstatus")||(isset($_GET['state'])&&$_GET['state'])){

$fbstatus = mysql_real_escape_string($_GET['status']);

include('../FacebookKit/facebook.php');
$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
));
$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();
if ($user) {

 try {
 
$status = $facebook->api('/me/feed', 'POST', array('message' => $fbstatus));

if(isset($_GET['state'])&&$_GET['state']){
$finalstatus='Your Status has been updated successfully';
}
else{
echo 'Your Status has been updated successfully';
}

 
 } // end of try{

catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
  
} // end of if ($user) {

if ($user) {
 
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/logout.php'));

if(isset($_GET['state'])&&$_GET['state']){
$downresult = '<br/><div align="center">Note : IF you are done with Posting Albums to Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
}
else{
echo $result = '<br/><div align="center">Note : IF you are done with Posting Albums to Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
}

} else {
$loginUrl = $facebook->getLoginUrl(array('scope' => 'user_status,publish_stream,user_photos','redirect_uri'=>'http://www.PicsCave.com/InnerPages/UserHome.php?status='.$_GET['status'].''));
  
if(isset($_GET['state'])&&$_GET['state']){
$downresult = '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}
else{
echo $result = '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}


}

if(isset($_GET['state'])&&$_GET['state']){}
else{
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
function addsecrettext(){
var url = "../Scripts/UserSecretText.php";
var secrettext = $("#secrettext");
if(secrettext.val()==""){
alert("Please Enter Your Secret Text");
}
else if(secrettext.val().length<6){
alert("Secret Text should be of Minimum 6 characters");
}
else if(secrettext.val().length>30){
alert("Maximum 30 characters are only allowed in Secret Text");
}
else{
$("#entertextresponse").show();	
$.post(url,{request:"addsecrettext",secrettext:secrettext.val(),},function(data) {																																																					 	
if(data==1){
	$('#addsecrettext').slideUp("fast");
	$("#entertextresponse").html("Your Secret Text has been Added Successfully.").show();
																																																		}
																																																			else if(data==0){
																																																	   $("#entertextresponse").html("Error. Please Try Again.").show();
																																																	   }																																																		});
}
}

function addfacebookstatus(){
var status = $("#status").val();
if(status==""){
alert("Please Enter any Text");
}
else{
$("#statusresult").show();
$("#statusresult").html('Please Wait...Loading');
$("#statusresult").load('UserHome.php?request=addfacebookstatus&&status='+status);
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
<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<?php 
$query = mysql_query("select Id from textwatermark where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
if(mysql_num_rows($query)==0){

?>

<div id="entertextresponse" style="font-size:14px; color:blue; display:none;" align="center">Please Wait...<br/></div>

<form action="javascript:addsecrettext();" method="post" name="addsecrettext" id="addsecrettext">
<table width="500" border="0" align="center">
  <tr><td colspan="3" style="font-size:18px;">Add Your Secret Text</td></tr>
   <tr><td colspan="3"><br/></td></tr>
   <tr><td colspan="3" style="font-size:12px; color:black;">This Secret Text is used to protect all your Images.</td></tr>
   <tr><td colspan="3"><br/></td></tr>
  <tr>
    <td><label>Secret Text</label></td>
    <td>&nbsp;</td>
    <td><input type="password" name="secrettext" id="secrettext" size="30" style="height:30px;" />&nbsp;<span style="font-size:10px;">Minimum 6 characters</span></td>
  </tr>
  <tr><td colspan="3"><br/></td></tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input type="submit" value="Submit" name="addtext" /></td>
  </tr>
</table>
</form>

<?php }else{ ?>

<br/>
<h2 align="center">Post your New Facebook Status</h2>

<div id="statusresult" style=" color:#0033FF;" align="center">
<?php
if(isset($downresult)&&$downresult!=""){
echo $finalstatus.$downresult;
}
?>
</div><br/>


<div align="center">
<form id="facebookstatus" method="post" action="javascript:addfacebookstatus();">
<textarea cols="60" rows="5" id="status" name="status"></textarea>
<br/><br />
<input type="submit" value="Add" style="height:30px;" />
</form>
</div>

<?php } ?>

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
