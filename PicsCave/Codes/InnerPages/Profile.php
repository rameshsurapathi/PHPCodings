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
function edituserprofile(){
	var url = "../Scripts/EditUser.php";
var firstname = $("#firstname");
var lastname = $("#lastname");
if($('#gender1').is(':checked')){
	var gender = "female";
}
else if($('#gender2').is(':checked')){
	var gender = "male";
}
var dob = $("#dob");
if(firstname.val()==""){
alert("Please Enter Your FirstName");	
}
else if(firstname.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in FirstName");
}	
else if(lastname.val()==""){
alert("Please Enter Your LastName");	
}
else if(lastname.val().search("[^A-za-z ]")>-1){
alert("Only Alphabets are allowed in LastName");
}	
else if(!$('#gender1').is(':checked')&&!$('#gender2').is(':checked')){
	alert("Please select your Gender");
}
else if(dob.val()==0){
	alert("Please Enter your Date of Birth");
}
else{

$("#editusererror").show(); 

$.post(url,{request:"edituser",firstname:firstname.val(),lastname:lastname.val(),gender:gender,dob:dob.val(),},function(data) {	

if(data==1){
	$('#editprofile').slideUp("fast");
	$("#editusererror").html("Profile has been updated successfully.").show();
																																																		}
																																																			else if(data==0){
																																																	   $("#editusererror").html("Error. Please Try Again.").show();
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
<td valign="top" background="" height="500px;">
<?php include('AfterLoginNavigation.php');?>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<?php
$query = mysql_query("select * from user where UserId='".$_SESSION['authenticateduser']."' and Activation='1' and Status='1'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$firstname = $row['FirstName'];
$lastname = $row['LastName'];
$gender = $row['Gender'];
$dob = $row['DateofBirth'];
if($gender=="female"){$check1="checked";}
else{$check1='';}
if($gender=="male"){$check2="checked";}
else{$check2='';}
}
?>

<div id="editusererror" style="font-size:12px; color:blue; display:none;" align="center">Please Wait...</div>

<form name="editprofile" id="editprofile" action="javascript:edituserprofile();" method="post">
	<table border="0" align="center">
	<tr><td colspan="2"><br/></td></tr>
	<tr><td colspan="2" style="font-size:16px;" align="center">Edit Your Profile</td></tr>
	<tr><td colspan="2"><br/></td></tr>
<tr>
<td><label>
<div align="right">First Name :</div>
</label></td>
<td><input type="text" name="firstname" id="firstname" size="30" style="height:30px;" value="<?php echo $firstname;?>"></td>
</tr>
<tr>
<td><label>
<div align="right">Last Name :</div>
</label></td>
<td><input type="text" name="lastname" id="lastname" size="30" style="height:30px;" value="<?php echo $lastname;?>"></td>
</tr>
<tr>
<td><label>
<div align="right">Gender :</div>
</label></td>
<td><input type="radio" name="gender" id="gender1" value="Female" checked="<?php echo $check1;?>">Female<input type="radio" name="gender" id="gender2" value="Male" checked="<?php echo $check2;?>">Male</td></tr>
<tr>
<td><label>
<div align="right">Birthday :</div>
</label></td>
<td>
<input type="text" name="dob" id="dob" size="30" style="height:30px;" value="<?php echo $dob;?>">&nbsp;<span style="font-size:10px; color:#000000;">Ex: July 20,1987</span>
</td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
<td></td><td><input type="submit" value="Submit" name="edit" style="height:30px;"></td></tr>
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