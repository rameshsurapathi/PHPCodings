<?php
session_start();

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$string='';
$size = strlen( $chars );
for( $i = 0; $i < 5; $i++ ) {
	$string .= $chars[ rand( 0, $size - 1 ) ];
}

if($_POST['request']=="getquery"){

include_once('../Config/Config.php');

$ip = mysql_real_escape_string($_POST['ip']);
$query = mysql_query("select query,time from transactions where ipaddress='$ip' order by time DESC limit 1") or die(mysql_error());
if(mysql_num_rows($query)>0){

while($row = mysql_fetch_array($query)){

$time = date('Y-m-d H:i:s',(strtotime($row['time'])+20));
$updatequery = mysql_query("update transactions SET time='$time' where ipaddress='$ip' and time='".$row['time']."'") or die(mysql_error());
echo $row['query'];
exit();
}

}

}
?>


<html>
<head>
<script src="../Jquery-1.4.2/Jquery-1.4.2.js"></script>

<script>
function tryagain(){
var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    for( var i=0; i < 5; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));
document.getElementById("captchaimage").value = ""+text;
}
</script>

<script>
function captchaverify(){
var captchatext = $("#captchatext");
var captchastring = document.getElementById("captchaimage").value;
if(captchatext.val()==captchastring){
var ip = "<?php echo $_SESSION['ip']; ?>";
var url = "http://www.eShopAlert.com/CaptchaForm/CaptchaForm.php";
$.post(url,{request:"getquery",ip:ip},function(data){
window.location.href="http://www.eShopAlert.com/index.php?searchquery="+data;
});
}
else{
alert("Text Mismatch. Try Again");
tryagain();
document.getElementById("captchatext").value="";
}
}
</script>
</head>

<body>
<form name="captchaform" id="captchaform" method="post" action="javascript:captchaverify();">
<table align="center" border="1" cellspacing="0" cellpadding="0" width="260px" height="70px">
<tr>
<td width="30%" bgcolor="#E4E4E4" colspan="3" style="font-size:12px;font-family:verdana" height="20px">Verify Captcha &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:tryagain();">Try another</a>
</td>
</tr>
<tr>
<td width="35%" style="border-right:none;"><input type="text" name="captchaimage" id="captchaimage" value="<?php echo $string;?>" style="font-size:20px;color:blue;font-weight:600;border:none;" readonly="" size="5"/>
</td>
<td width="35%" style="border-left:none;border-right:none;"><input type="text" name="captchatext" maxlength="5" id="captchatext" size="5">
</td>
<td><input type="Submit" value="Verify"></td>
</tr>
</table>
</form>

</body>
</html>


