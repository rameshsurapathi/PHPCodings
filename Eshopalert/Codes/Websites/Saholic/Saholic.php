<?php
$start = microtime(true).'<br>';
include_once('../../Config/Config.php');
include_once('../RegularExpression/Pricergx.php');
$parserquery = mysql_real_escape_string($_GET['parserquery']);
include_once('../../GetLink/GetLink.php');
$extra_link = getlink($parserquery);

function curl($url){
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_TIMEOUT, 30);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HEADER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1');
return $output = curl_exec($ch); 
curl_close($ch);
}

$html = curl('http://www.saholic.com/search?q='.$extra_link.'');
$dom = new DOMDocument();
@$dom->loadHTML($html);
$domxpath = new DOMXPath($dom); 

$price = $domxpath->query( ".//div[@class='newPrice']" )->item(0)->nodeValue;
$link = $domxpath->query( ".//div[@class='title']//a/@href" )->item(0)->nodeValue;
$title = $domxpath->query( ".//div[@class='title']//a" )->item(0)->nodeValue;

$price = pricergx($price,21);

if($price!=""&&$link!=""){

echo '<table border="0" width="100%" height="20px" bgcolor="#FFFFFF">
<tr>
<td width="40%" valign="middle" style="color:grey;"><img src="Websites/Saholic/saholic.png"></td>
<td width="20%" align="center" style="color:#CC3366;"><img src="http://www.sreeku.com/eShopAlert.com/Images/rupee.jpg"> '.number_format($price).'</td>
<td width="20%" align="left" style="font-size:12px;">Delivery in 4 Business days.</td>
<td width="20%" align="center"><a href="http://www.saholic.com'.$link.'" target="_blank" style="text-decoration:none;cursor:pointer;color:green;">Go To Store</a></td>
</tr>
</table>
<hr style="border: none;border-top: dashed 1px #00CC33;color: #ffffff;background-color: #ffffff;"/>';
echo str_pad('',4096)."\n";   
flush();

$link = 'http://www.saholic.com'.$link;

// Get the productId for the present query ////

$sqlquery = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
while($newrow = mysql_fetch_array($sqlquery)){
$productid = $newrow['ProductId'];
}

$sqlquery = mysql_query("select ProductId from saholic where ProductId='$productid'") or die(mysql_error());
if(mysql_num_rows($sqlquery)>0){ // Product is present already in database
/// Update the Product details in the product details table ////
$newquery = mysql_query("Update saholic SET Price='$price',Link='$link',Title='$title' where ProductId='$productid'") or die(mysql_error());
}

else{ // Insert product details into website table for first time
$newquery = mysql_query("Insert into saholic(WebsiteId,ProductId,Price,Link,DeliveryTime,Title,Time) values('21','$productid','$price','$link','Delivery in 4 Business days.','$title',now())") or die(mysql_error());
}


}

$final = microtime(true)-$start.'<br>';
?>