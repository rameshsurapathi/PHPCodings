<?php  session_start();

include_once('Config/Config.php');

if($_POST['request']=="sitelogin"){

if($_POST['loginid']!=""){
if($_POST['loginPassword']!=""){

$loginid = mysql_real_escape_string(stripslashes($_POST['loginid']));
$loginPassword = mysql_real_escape_string(stripslashes($_POST['loginPassword']));


if($loginid=="eshopalert"&&$loginPassword=="onitsway"){

$_SESSION['login'] = 1;

exit();
}
else{
$msgtouser = "No matches are found. Please correct your StoreID or password.";
echo $msgtouser;
exit();
}
}
else{
$msgtouser = "Invalid password";
echo $msgtouser;
exit();
}
}

else{
$msgtouser = "Invalid LoginID";
echo $msgtouser;
exit();
}


}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>eShopAlert.com</title>

<script src="Jquery-1.4.2/Jquery-1.4.2.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
function sitelogin(){
var loginid = $("#loginid");
var loginPassword = $("#loginPassword");
var url = "MainLogin.php";
$.post(url,{request:"sitelogin", loginid: loginid.val(), loginPassword: loginPassword.val(),} ,function(data) {
$("#display1").html(data).show();  
if(data==""){window.parent.location="http://www.eShopAlert.com/index.php";}
});
}
</script>
</head>


<body>
<br/>

<h1 align="center" style="color:green;">Welcome to eShopAlert.com</h1>

<table border="0" width="337" align="center">

<form name="form1" id="form1" action="javascript:sitelogin();" method="post" enctype="multipart/form-data">
<tr><td colspan="3" align="center" style=" font-size:22px;color:lightblue; font-weight:500;font-family:"Courier New", Courier, monospace;">eShopAlert.com Site Login</td></tr>
<tr><td colspan="3">&nbsp;</td></tr>

<tr><td>&nbsp;&nbsp;&nbsp;</td><td align="center" style="font-size:12px"><div align="left" class="style1">
<div align="right" style="color:red;">* Manadatory</div>
</div></td><td></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;</td>
<td  style="color:#000000; font-family:'Times New Roman', Times, serif; font-size:14px;"><div align="right">Login Id<span class="style1">*</span></div></td>
<td width="183"><input type="text" name="loginid" id="loginid" size="30" /></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;</td>
<td  style="color:#000000; font-family:'Times New Roman', Times, serif; font-size:14px;"><div align="right">Password<span class="style1">*</span></div></td>
<td><input type="password" id="loginPassword" name="loginPassword" size="30" /></td></tr>
<tr><td colspan="2"></td><td><input type="submit"  name="Submit" value="Login" /></td></tr>
</form>   
</table>

<div id="display1" align="center" style="font-size:12px;color:red;"></div>
 

</body>
</html>
