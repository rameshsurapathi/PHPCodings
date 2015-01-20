<?php
session_start();

include('../FacebookKit/facebook.php');

$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
  
));
$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();

if ($user) {
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/logout.php?logoutrequest=fromuserlogout'));
 $logresult =  '<br/><div align="center">Oops,You havent Logged Off from your Facebook Account. Please <a href="'.$logoutUrl.'">Logout from your Facebook Account</a>
 <br/><br/><a href="NormalLogout.php">I will logout afterwards</a>
 </div>';
}
else{
session_destroy();
header('location:http://www.PicsCave.com');
exit();
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<META name="description" content="picscave.com provides *******">
<META name="keywords" content="facebook,pics,facebook pics,fb,fbpics,digital watermarking,invisible watermarking,text watermarking,protect images,protect pics, picscave">
<META content="General" name="rating">
<META content="all" name="googlebot">
<meta name="robots" content="index, follow">
<meta name="author" content="info@picscave.com" />
<meta name="owner" content="http://picscave.com" />
<META content="Copyright ? picscave.com, All Rights Reserved." name="copyright">
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
<?php include_once('../InnerPages/AfterLoginHeader.php');?>
</td
></tr>
<tr>
<td valign="top" background="" height="500px;">
<?php include('../InnerPages/AfterLoginNavigation.php');?>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<?php
if($logresult!=""){echo $logresult;}
?>

</td>
</tr>
<tr>
<td height="70" align="center" valign="middle" background="../Images/HeaderBg.png">
<?php include_once('../InnerPages/AfterLoginFooter.php');?>
</td>
</tr>
</table>
</body>
</html>