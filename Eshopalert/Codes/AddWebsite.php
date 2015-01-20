<?php
/* Author : Surapathi Ramesh Kumar */

include_once('Config/Config.php');

if(isset($_POST['request'])&&$_POST['request']=="addyourwebsite"){
$email = mysql_real_escape_string($_POST['email']);
$websitename = mysql_real_escape_string($_POST['websitename']);
$mobile = mysql_real_escape_string($_POST['mobile']);
$query = mysql_query("insert into websiterequest(Email,WebsiteName,Contact,Time) values('$email','$websitename','$mobile',now())") or die(mysql_error());
$id = mysql_insert_id();
if($id>0){
echo '1';
}
else{
echo '0';
}
exit();
}
?>

<html>
<head>
<link rel="shortcut icon" href="Images/favicon.jpg" type="image/jpeg">

<title style="font-family: 'Courier New', Courier, monospace;">Welcome to EShopAlert.com</title>

<!-- Javascript-->
<script src="Jquery-1.4.2/Jquery-1.4.2.js"></script>
<script>
function addyourwebsite(){
var email = $("#email");
var websitename = $("#websitename");
var mobile = $("#contact");
var url = "AddWebsite.php"
if(email.val()==""){
	alert("Please enter your Email Address");
}
else if(email.val().indexOf("@")<1 || email.val().lastIndexOf(".")<email.val().indexOf("@")+2 || email.val().lastIndexOf(".")+2>=email.val().length){
alert("Invalid Email Address");
}
else if(websitename.val()==""){
alert("Please enter the Website Name");
}
else if(mobile.val()==""){
alert("Please enter your contact number");
}
else if(mobile.val()!=""&&isNaN(mobile.val())||mobile.val().indexOf(" ")!=-1){
alert("Only numbers are allowed in Contact number");
}
else{
$.post(url,{request:"addyourwebsite",email:email.val(),websitename:websitename.val(),mobile:mobile.val(),},function(data) {

if(data==1){
$("#status").html("Please Wait..").show();
$("#websiteform").hide();
$("#adjustspace").show();
$("#status").html("Thank You.Our support team will contact you soon.").show();
}
else if(data==0){
$("#status").html("Error:Please Try again").show();
}
});

}
}
</script>
<style>

#header {
    background: linear-gradient(rgb(255, 255, 255), rgb(255, 255, 255)) repeat scroll 0% 0% transparent;
    border-bottom: 1px solid rgb(255, 255, 255);
    box-shadow: 0px 1px 0px rgba(255, 255, 255, 0.4), 0px 0px 10px rgba(0, 0, 0, 0.1);
	height:90px;
}
</style>
</head>
<body>

<!--- Header Section------------------------->
<div style="width:100%; height:4%; background-color:#ffffff; color:#000000;">
<div align="right" style="font-size: 16px;">Beta.&nbsp;&nbsp;&nbsp;</div>
</div>

<div id="header">
<br/>
<a style="color:#CC3366; font-size:24px; font-family: 'Courier New', Courier, monospace; font-weight:500; cursor:pointer;text-decoration: none;" href="http://www.eShopAlert.com">&nbsp;EShopAlert</a>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span style="color: #333333;font-family: 'Courier New', Courier, monospace;">Get the Best Alert to Save your money</span>
<br/><br/><br/>

</div>
<br/>

<div id="status" style="font-size:20px;color:blue;" align="center"></div>

<form id="websiteform" action="javascript:addyourwebsite();" method="post">
<h2 align="center">Add your Online Shopping Website</h2>
<p align="center">Just send us a add request.That's it.Your website will be added in few minutes.</p>
<p align="center">No need of any products excel sheets.No need of any access to your database.</p>
<br/>
<table border="0" align="center">
<tr>
<td>Email Id</td>
<td>&nbsp;</td>
<td><input type="text" name="email" id="email" size="30" style="height:30px;"></td>
</tr>
<tr>
<td>Website Name</td>
<td>&nbsp;</td>
<td><input type="text" name="websitename" id="websitename" size="30" style="height:30px;"></td>
</tr>
<tr>
<td>Contact Number</td>
<td>&nbsp;</td>
<td><input type="text" name="contact" id="contact" size="30" style="height:30px;"></td>
</tr>
<tr><td colspan="3"><br/></td></tr>
<tr><td></td><td>&nbsp;</td>
<td><input type="submit" value="Submit" name="Submit" style="height:30px;">&nbsp;
<input type="reset" name="Reset" value="Reset" style="height:30px;">&nbsp;</td>
</tr>
</table>
</form>

<div style="height:250px;display:none;" id="adjustspace"></div>
<div style="height:100px;"></div>

<hr style="height: 2px; border: none; background: #ada95b; width:100%;float:left;"/>

<div align="center" style="float:left;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Error.php" style="font-size:13px;color:red;text-decoration:none;font-family: 'Courier New', Courier, monospace;">Report an Error</a>
&nbsp;&nbsp;&nbsp;
<a href="Feedback.php" style="font-size:13px;color:green;text-decoration:none;font-family: 'Courier New', Courier, monospace;">Feedback</a>
&nbsp;&nbsp;&nbsp;
<a href="AddWebsite.php" style="font-size:13px;text-decoration:none;font-family: 'Courier New', Courier, monospace;">Add your Website</a>
&nbsp;&nbsp;&nbsp;
<span style="font-size:12px;font-family: 'Courier New', Courier, monospace;">Copyright @ EShopAlert.com, All Rights Reserved 2013.</span>
<br/><br/>
</div>
</body>
</html>
