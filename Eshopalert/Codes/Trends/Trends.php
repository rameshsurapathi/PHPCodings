<?php
session_start();

include_once('../Config/Config.php');
$parserquery = mysql_real_escape_string($_GET['query']);
include_once('../GetLink/GetLink.php');
$extra_link = getlink($parserquery);

////////////////////////Trends Code/////////////////////////////

$idquery = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
if(mysql_num_rows($idquery)>0){
while($irow = mysql_fetch_array($idquery)){
$prodid = $irow['ProductId'].',';
}
}

$starttime = date('Y-m-d H:i:s',$_GET['usertime']);

if($_GET['timestatus']=="insert"){
$trendinsertquery = mysql_query("insert into trends(Trend,Starttime,Ip) values('
$prodid','$starttime','".$_GET['ip']."')") or die(mysql_error());

if($_GET['oldusertime']){
$oldusertime = date('Y-m-d H:i:s',$_GET['oldusertime']);
$trendselectquery = mysql_query("select Trend from trends where Starttime='$oldusertime' and Ip='".$_GET['ip']."'") or die(mysql_error());
if(mysql_num_rows($trendselectquery)>0){
while($trrow = mysql_fetch_array($trendselectquery)){
$trend = $trrow['Trend'];
}
}
/* Check whether this trend exists in producttrends table or not.if not
then insert..and if then increase the vote by 1 */

$i=0;
$parts = explode(",",$trend);
while($parts[$i+1]!=""){

$subtrend =$parts[$i].','.$parts[$i+1];

$maintrend = mysql_query("select Votes from producttrends where Trend='$subtrend'") or die(mysql_error());
if(mysql_num_rows($maintrend)>0){
while($mtrow = mysql_fetch_array($maintrend)){
$votes = $mtrow['Votes']+1;
}
$updatetrend = mysql_query("update producttrends SET Votes='$votes' where Trend='$subtrend'") or die(mysql_error());
}
else{ // Trend is not present
$maintrend = mysql_query("insert into producttrends(Trend,Votes) values('$subtrend','1')") or die(mysql_error());
}

$i=$i+1;
} // end of while

} // end of if oldusertime exists

}

elseif($_GET['timestatus']=="update"){ // this code is used to get the time difference to store the trends

$trend='';
$trendselectquery = mysql_query("select Trend from trends where Starttime='$starttime' and Ip='".$_GET['ip']."'") or die(mysql_error());
if(mysql_num_rows($trendselectquery)>0){
while($trrow = mysql_fetch_array($trendselectquery)){
$trend.= $trrow['Trend'];
}
}

$pos = strpos($trend,$prodid);
if ($pos == false) {
$trend.=$prodid;
$trendupdatequery = mysql_query("update trends SET Trend='$trend' where Starttime='$starttime' and Ip='".$_GET['ip']."'") or die(mysql_error());
}

}// end of else if

////////////////////////////////////////////////////////////////////

?>