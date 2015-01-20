<?php session_start();?>
<?php
if(!isset($_SESSION['authenticateduser'])){
header('location:http://localhost/ChampsQuestionnaire/login.php');
}
?>
<?php
if(isset($_POST['upload'])){
if (isset($_FILES['file'])) {
if(is_uploaded_file($_FILES['file']['tmp_name'])){
$image_temp = $_FILES['file']['tmp_name'];
$image_size = $_FILES['file']['size'];
if ($image_size < (2*524288)){
move_uploaded_file($_FILES['file']['tmp_name'], '../UserPhotos/'.$_SESSION['authenticateduser'].'.jpg');
create_thumb('../UserPhotos/',''.$_SESSION['authenticateduser'].'.jpg','../UserPhotos/','200','200',"../UserPhotos/profile".$_SESSION['authenticateduser'].".jpg");
create_thumb('../UserPhotos/','profile'.$_SESSION['authenticateduser'].'.jpg','../UserPhotos/','50','50',"../UserPhotos/".$_SESSION['authenticateduser'].".jpg");
}
else{
echo '<script>alert("Image Size should be less than 1MB");</script>';
}
}
}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function create_thumb($imagepath,$imagefile, $thumbpath,$thumbWidth,$thumbHeight,$thumbfile){
$img = imagecreatefromjpeg( "{$imagepath}{$imagefile}" );
$width = imagesx( $img );
$height = imagesy( $img );
$new_width = $thumbWidth;
$new_height = $thumbHeight;
$tmp_img = imagecreatetruecolor( $new_width, $new_height );
imagecopyresampled( $tmp_img, $img, 0, 0, 0, 0, $new_width, $new_height, $width, $height );
imagejpeg( $tmp_img,$thumbfile,90 );
}
?>
<html>
<head>
<title>ChampsQuestionnarie</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<META name="description" content="ChampsQuestionnaire.com  is a question and answer site for professional and enthusiast students. It's 100% free, no registration required. ">
<META name="keywords" content="ChampsQuestionnaire">
<META content="General" name="rating">
<META content="all" name="googlebot">
<meta name="robots" content="index, follow">
<meta name="author" content="info@ChampsQuestionnaire.com" />
<meta name="owner" content="http://ChampsQuestionnaire.com" />
<META content="Copyright © ChampsQuestionnaire.com, All Rights Reserved." name="copyright">
<META content="http://www.ChampsQuestionnaire.com" name="ChampsQuestionnaire">
<META content="ChampsQuestionnaire.com" name="organization">
<META content="global" name="distribution">
<META content="document" name="resource-type">
<META content="public" name="security">
<META content="7 days" name="revisit-after">
<META content="en-us" http-equiv="Content-Language">
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<script src="../JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script src="../JavaScript/Home.js" type="text/javascript"></script>
</head>
<body>

<div id="header">
<iframe src="Header.php" scrolling="no" FrameBorder="0" width="100%"></iframe>
</div>

<div id="center">
<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td id="leftspace" width="67%">
<?php
include_once('../Config/Config.php');
$query = mysql_query("select FirstName,LastName,City,Country from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$lastname = $row['LastName'];
$city = $row['City'];
$country = $row['Country'];
}
?>

<br/><div style="font-size:24px;color:grey;">Update my profile</div><br/>

<form action="javascript:editprofile();" method="post">
<table border="0">
<tr>
<td>First Name</td>
<td><input type="text" name="fname" id="fname" style="height:30px;width:200px;" value="<?php echo $firstname;?>"></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lname" id="lname" style="height:30px;width:200px;" value="<?php echo $lastname;?>"></td>
</tr>
<tr>
<td>City</td>
<td><input type="text" name="city" id="city" style="height:30px;width:200px;" value="<?php echo $city;?>"></td>
</tr>
<tr>
<td>Country</td>
<td><input type="text" name="country" id="country" style="height:30px;width:200px;" value="<?php echo $country;?>"></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td></td>
<td><input type="submit" name="update" value="Update" style="height:30px;"></td>
</tr>
</form>

<?php
$file = '../UserPhotos/'.$_SESSION['authenticateduser'].'.jpg';
if(is_file($file)){
$photo = '../UserPhotos/'.$_SESSION['authenticateduser'].'.jpg';
}
else{
$photo = '../UserPhotos/noimage.png';
}
?>

<form action="profile.php" method="post" enctype="multipart/form-data">
<table border="0">
<tr><td colspan="2" style="font-size:24px;color:grey;"><br/><div style="height:1px;background-image:url('../Images/bg.jpg');background-repeat:repeat;">
</div><br/>Upload my profile photo</td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td><img src="<?php echo $photo;?>" width="50" height="50"></td>
<td><input type="file" name="file"></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td></td>
<td><input type="submit" name="upload" value="Upload" style="height:30px;"></td>
</tr>
</table>
</form>


<form action="javascript:changepassword();" method="post">
<table border="0">
<tr><td colspan="2" style="font-size:24px;color:grey;"><br/><div style="height:1px;background-image:url('../Images/bg.jpg');background-repeat:repeat;">
</div><br/>Change my password</td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td>Old Password</td>
<td><input type="password" name="oldpass" id="oldpass" style="height:30px;width:200px;"></td>
</tr>
<tr>
<td>New Password</td>
<td><input type="password" name="newpass" id="newpass" style="height:30px;width:200px;"></td>
</tr>
<tr>
<td>Confirm New Password</td>
<td><input type="password" name="cnewpass" id="cnewpass" style="height:30px;width:200px;"></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td></td>
<td><input type="submit" name="changemypassword" value="Submit" style="height:30px;"></td>
</tr>
</table>
</form>

<form action="javascript:deleteuseraccount();" method="post">
<table border="0">
<tr><td colspan="2" style="font-size:24px;color:grey;"><br/><div style="height:1px;background-image:url('../Images/bg.jpg');background-repeat:repeat;">
</div><br/>Delete my account</td></tr>
<tr>
<td>To delete your account,enter your password</td>
<td>&nbsp;<input type="password" name="pass" id="pass" style="height:30px;width:200px;"></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td></td>
<td><input type="submit" name="submit" value="Submit" style="height:30px;"></td>
</tr>
</table>
</form>

</td>
<td id="rightspace" width="30%"></td>
</tr>
</table>
</div>

<div id="footer">
<?php include_once('Footer.php');?>
</div>


</body>
</html>