<?php
session_start();
if(isset($_SESSION['authenticateduser'])){
header('location:http://www.PicsCave.com/InnerPages/UserHome.php');
}

?>

<html>
<head>
<link rel="shortcut icon" href="../Images/favicon.jpg" type="image/jpeg">
</head>
<body>
<table border="0" width="100%">
<tr><td>
<a href="index.php" style="cursor:pointer; text-decoration:none; color:#000000;">
<h1>&nbsp;&nbsp;<span style="color:#0099FF;">Pics</span>Cave.com</h1>
</a>
</td>
<td>
<form name="loginform" id="loginform" action="javascript:userlogin();" method="post">
<table width="502" border="0" align="right">
<tr>
<td width="197"><label style="color:#0099FF; font-size:13px;">Email</label></td>
<td width="147"><label style="color:#0099FF; font-size:13px;">Password</label></td>
<td width="109"></td>
</tr>
<tr>
<td><input type="text" name="username" id="username" size="30" style="height:20px;"></td>
<td><input type="password" name="userpass" id="userpass" size="20" style="height:20px;"></td>
<td><input type="submit" value="Log In" name="login">
</td>
</tr>
<tr><td></td></tr>
<tr><td colspan="2"><div id="loginerror" style="font-size:11px; color:red;"></div></td><td><a href="ForgetPassword.php">Forgot Password</a></td></tr>
</table>
</form>
</td>
<td>

</td>
</tr>
</table>
</body>
</html>
