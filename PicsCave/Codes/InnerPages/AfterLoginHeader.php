<?php
include_once('../Config/Config.php');

if(!isset($_SESSION['authenticateduser'])){
header('location:http://www.PicsCave.com');
}
else{
$query = mysql_query("select FirstName from user where UserId='".$_SESSION['authenticateduser']."' and Activation='1' and Status='1'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
}
}
?>

<html>
<head>
<link rel="shortcut icon" href="../Images/favicon.jpg" type="image/jpeg">
</head>
<body>
<table border="0" width="100%">
<tr><td>
<a href="UserHome.php" style="cursor:pointer; text-decoration:none; color:#000000;">
<h1>&nbsp;&nbsp;<span style="color:#0099FF;">Pics</span>Cave.com</h1>
</a>
</td>
<td>
<div align="center" style="font-size:14px;">
  <div align="right">Welcome <span style="color:black;"><?php echo $firstname;?></span>, &nbsp;&nbsp;
      <a href="../InnerPages/UserLogout.php" style="text-decoration:none; cursor:pointer; color:black;">Sign Out</a>
  </div>
</div>
</td>
<td>

</td>
</tr>
</table>
</body>
</html>
