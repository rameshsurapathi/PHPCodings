<?php
session_start();

include_once('../Config/Config.php');
$parserquery = mysql_real_escape_string($_GET['query']);
include_once('../GetLink/GetLink.php');
$extra_link = getlink($parserquery);

$idquery = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
while($idrow = mysql_fetch_array($idquery)){
$productid = $idrow['ProductId'].',';
}


$trendsquery = mysql_query("select Trend from producttrends where Trend like '$productid%' order by Votes DESC limit 6") or die(mysql_error());
if(mysql_num_rows($trendsquery)>5){

echo '&nbsp;&nbsp;<p align="left" style="font-size:18px;color:green;">Customers who viewed this product also viewed</p>
&nbsp;&nbsp;
';

while($tqrow = mysql_fetch_array($trendsquery)){

$trend = $tqrow['Trend'];

$trendexplode = explode(",",$trend);

$newsqlquery = mysql_query("select ProductId,ProductName,Data,ImageUrl from products where ProductId='$trendexplode[1]'") or die(mysql_error());

if(mysql_num_rows($newsqlquery)>0){

while($row = mysql_fetch_array($newsqlquery)){

$newquery = mysql_query("Select BestPrice,Stores from bestprice where ProductId = '".$row['ProductId']."'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$bp = $nrow['BestPrice'];
$st = $nrow['Stores'];
}

if($bp>0&&$row['ImageUrl']!=""){
echo '<table border="0" width="16%" align="center" style="float:left;">
<tr>
<td width="16%" style="border:1px solid grey;"><a href="http://www.eShopAlert.com/index.php?searchquery='.$row['ProductName'].'" style="cursor:pointer;color:black;text-decoration: none;font-size:12px;">
<img src="'.$row['ImageUrl'].'" width="100px" height="100px">
<p align="center" style="color:blue;font-weight:500;">
'.$row['Data'].'</p>
<p align="center" style="color:#CC3366;font-weight:500;">Best Alert: <img src="http://www.eShopAlert.com/Images/rupee.jpg"> '.number_format($bp).'</p>
<p align="center" style="color:green;font-weight:500;">Available at '.$st.' Stores</p>
</a>
</td></tr></table>';
}

}

}

}


}

// When the product has been searched for first time or trend results are < 5

else{
$extra_link = str_replace(" ","+",trim($extra_link));

$newsqlquery = mysql_query("select ProductId,ProductName,Data,ImageUrl from products where ProductName like '$extra_link[0]%' order by Views limit 6") or die(mysql_error());
if(mysql_num_rows($newsqlquery)>0){

echo '&nbsp;&nbsp;<p align="left" style="font-size:18px;color:green;">Get the Best Alerts for your favorite Products</p>
&nbsp;&nbsp;
';

while($row = mysql_fetch_array($newsqlquery)){

$newquery = mysql_query("Select BestPrice,Stores from bestprice where ProductId = '".$row['ProductId']."'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$bp = $nrow['BestPrice'];
$st = $nrow['Stores'];
}

if($bp>0&&$row['ImageUrl']!=""){
echo '<table border="0" width="16%" style="float:left;">
<tr>
<td width="16%" style="border:0px solid grey;"><a href="http://www.eShopAlert.com/index.php?searchquery='.$row['ProductName'].'" style="cursor:pointer;color:black;text-decoration: none;font-size:12px;">
<img src="'.$row['ImageUrl'].'" width="100px" height="100px">
<p align="center" style="color:blue;font-weight:500;">
'.$row['Data'].'</p>
<p align="center" style="color:#CC3366;font-weight:500;">Best Alert: <img src="http://www.eShopAlert.com/Images/rupee.jpg"> '.number_format($bp).'</p>
<p align="center" style="color:green;font-weight:500;">Available at '.$st.' Stores</p>
</a>
</td></tr></table>';
}

}

}

}

?>