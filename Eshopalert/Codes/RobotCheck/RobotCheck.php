<?php
session_start();

$r = 1;

$timequery = mysql_query("select time from transactions where ipaddress='".$_SESSION['ip']."' order by time DESC limit 4" ) or die(mysql_error());

if(mysql_num_rows($timequery)>0){

while($row = mysql_fetch_array($timequery)){
if($r==1){$starttime = strtotime($row['time']);$r=$r+1;}
else{$endtime = strtotime($row['time']);$r=$r+1;}
}


$diff = abs($starttime- $endtime);

if($diff<20){ //if 4 transactions went in last 20 secs, then its a bot
include_once('CaptchaForm/CaptchaForm.php');
echo '<div style="height:250px;"></div>';
exit();
}
else{
// its not a bot..it is a human
}

}
	
?>
