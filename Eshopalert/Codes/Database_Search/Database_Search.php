<?php

$start = 'Database Starting Time '.microtime(true).'<br>';

include_once('../Config/Config.php');
include_once('../DatabaseCurl/DatabaseCurl.php');
$parserquery = mysql_real_escape_string($_GET['query']);
include_once('../GetLink/GetLink.php');

$extra_link = getlink($parserquery);

/* If product is present in database */

if($_GET['request']=="retreiveImage"){
// Retreive the Product Image
$extra_link = getlink($_GET['databasequery']);

$sqlquery = mysql_query("select Data,ImageUrl,Description,Features from products where ProductName='$extra_link'") or die(mysql_error());
while($row = mysql_fetch_array($sqlquery)){
$img = $row['ImageUrl'];
$data = $row['Data'];
$description_length = strlen($row['Description']);
if($description_length>800){
$description = substr($row['Description'],0,800).'..<a href="javascript:moredescription();">More</a>';
$moredescription = $row['Description'];
}
else{
$description = $row['Description'];
}
$allfeatures = $row['Features'];
}

$nquery = preg_replace ( '#([+])#', ' ', trim($extra_link));

if($img!=""&&$data!=""){

echo '<p style="color:#000000;">Results for '.$nquery.'</p>';
echo str_pad('',4096)."\n";   
flush();

echo '<table border="0">
<tr><td width="20%"><img src="'.$img.'"></td><td width="80%" align="left">'.$data.'</td></tr>
<tr><td colspan="2" id="lessdescription">'.$description.'</td></tr>
<tr><td colspan="2" id="moredescription" style="display:none;">'.$moredescription.'..<a href="javascript:lessdescription();">Less</a></td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2">'.$allfeatures.'</td></tr>
</table>';
echo str_pad('',4096)."\n";   
flush();

echo '<table border="0" width="100%" height="20px" bgcolor="#E4E4E4">
<tr>
<td width="20%">Vendors</td>
<td width="20%" align="center">Amount</td>
<td width="20%" align="center">Delivery Time</td>
<td width="20%" align="center">EMI Payments</td>
<td width="20%" align="center">Vendor Store</td>
</tr>
</table>';

}

exit();
}



if($_GET['request']=="retreiveDetails"){
// Retreive the Product Details into table Product
$extra_link = getlink($_GET['databasequery']);

$sqlquery = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
while($row = mysql_fetch_array($sqlquery)){
$productid = $row['ProductId'];
}

$sqlquery = mysql_query("Select Sequence from bestprice where ProductId = '$productid'") or die(mysql_error());
while($row = mysql_fetch_array($sqlquery)){
$seq = $row['Sequence'];
}

$seqexpl = explode(",",$seq);
$g=0;
while($seqexpl[$g]!=""){

if($g==0){$bgcolor = "#FFCCFF";}
else{$bgcolor = "#FFFFFF";}
////
$sqlquery = mysql_query("select WebsiteName from websites where WebsiteId='$seqexpl[$g]'") or die(mysql_error());
while($row = mysql_fetch_array($sqlquery)){
////
$webname = strtolower($row['WebsiteName']);
$newquery = mysql_query("select Price,Link,DeliveryTime,EMI from $webname where ProductId='$productid'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
////
/*<img src="Websites/'.$row['WebsiteName'].'/'.$webname.'.png">*/

if($nrow['EMI']==1){$emi = "Available";}
else{$emi = "Not Available";}

echo '<table border="0" width="100%" height="20px" bgcolor="'.$bgcolor.'">
<tr>
<td width="20%" valign="middle" style="color:#0099FF;"><img src="Websites/'.$row['WebsiteName'].'/'.$webname.'.png"></td>
<td width="20%" align="center" style="color:#CC3366;"><img src="http://www.eShopAlert.com/Images/rupee.jpg"> '.number_format($nrow['Price']).'</td>
<td width="20%" align="left" style="font-size:12px;">'.$nrow['DeliveryTime'].'</td>
<td width="20%" align="center" style="font-size:12px;">'.$emi.'</td>
<td width="20%" align="center"><a href="'.$nrow['Link'].'" target="_blank" style="text-decoration:none;cursor:pointer;color:green;">Go To Store</a></td>
</tr>
</table>
<hr style="border: none;border-top: dashed 1px #00CC33;color: #ffffff;background-color: #ffffff;"/>';
}
////
}
////
$g=$g+1;
}

exit();
}


if($_GET['request']=="increaseCounter"){
// Increase the Search Counter and Like Counter
$extra_link = getlink($_GET['databasequery']);
$sqlquery = mysql_query("select Views from products where ProductName='$extra_link'") or die(mysql_error());
while($row = mysql_fetch_array($sqlquery)){
$views = $row['Views'];
}
$views = $views+1;
$sqlquery = mysql_query("update products SET Views='$views' where ProductName='$extra_link'") or die(mysql_error());
exit();
}

/*
if($_GET['request']=="updateExpiryTime"){
// Update the Expiry Time
$extra_link = getlink($_GET['databasequery']);
$sqlquery = mysql_query("update products SET ExpiryTime=now() where ProductName='$extra_link'") or die(mysql_error());
exit();
}
*/

$sqlquery = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
if(mysql_num_rows($sqlquery)>0){

/* Performing Multithreading */

$databaselist[0] = 'http://www.eShopAlert.com/Database_Search/Database_Search.php?request=retreiveImage&&databasequery='.$parserquery.'';
$databaselist[1] = 'http://www.eShopAlert.com/Database_Search/Database_Search.php?request=retreiveDetails&&databasequery='.$parserquery.'';
$databaselist[2] = 'http://www.eShopAlert.com/Database_Search/Database_Search.php?request=increaseCounter&&databasequery='.$parserquery.'';
//$databaselist[3] = 'http://www.eShopAlert.com/Database_Search/Database_Search.php?request=updateExpiryTime&&//databasequery='.$parserquery.'';

for($k=0;$k<=2;$k++){
$databasecurls[$k] = databasecurl($databasecurlHandle,$databaselist[$k]);
}

databaseExecHandle($databasecurlHandle); 

/* Printing the Output */

for ($k = 0;$k <= 2; $k++)
{
echo $databasetext[$k] =  curl_multi_getcontent($databasecurls[$k]);
echo str_pad('',4096)."\n";   
flush();
}  

for ($k = 0;$k <= 2; $k++){//remove the handles
curl_multi_remove_handle($databasecurlHandle,$databasecurls[$k]);
}

curl_multi_close($databasecurlHandle);

} // end of if statement 


$final =  'Database Ending Time '.microtime(true).'<br/>';
?>

<script>
function moredescription(x){
$("#lessdescription").hide();
$("#moredescription").show();
}

function lessdescription(x){
$("#lessdescription").show();
$("#moredescription").hide();
}
</script>