<?php
$start = microtime(true).'<br>';
include_once('../Config/Config.php');
$parserquery = mysql_real_escape_string($_GET['query']);
include_once('../GetLink/GetLink.php');
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

$html = curl('http://www.junglee.com/mn/search/junglee/ref=nav_sb_noss?url=search-alias%3Daps&p_87=1&field-keywords='.$extra_link.'');
$dom = new DOMDocument();
@$dom->loadHTML($html);
$domxpath = new DOMXPath($dom); 


$img = $domxpath->query( ".//img[@class='productImage']/@src" )->item(0)->nodeValue;
$data = $domxpath->query( ".//a[@class='title']" )->item(0)->nodeValue;

if($img!=""&&$data!=""){


$newlink = $domxpath->query( ".//a[@class='title']/@href" )->item(0)->nodeValue;
$newhtml = curl($newlink);
$newdom = new DOMDocument();
@$newdom->loadHTML($newhtml);
$newdomxpath = new DOMXPath($newdom);

$description = $newdomxpath->query( ".//div[@id='bottom-3']//div[@class='descriptionContent']" )->item(0)->nodeValue;
$features = $newdomxpath->query( ".//div[@class='bulletPoints']//ul//li" );

$allfeatures='';
foreach($features as $n){
$allfeatures.= '<p>'.$n->nodeValue.'</p>';
}
if($description!=""){$description = '<p><b>Product Description</b></p>'.preg_replace("/'/","",$description);}
if($features!=""){$allfeatures = '<p><b>Product Features</b></p>'.preg_replace("/'/","",$allfeatures);}

/*
$nquery = preg_replace ( '#([+])#', ' ', trim($extra_link));
echo '<p style="color:#000000;">Results for '.$nquery.'</p>';
echo str_pad('',4096)."\n";   
flush();

echo '<table border="0">
<tr><td><img src="'.$img.'"></td><td>'.$data.'</td></tr>
<tr><td colspan="2">'.$description.'</td></tr>
<tr><td colspan="2"><br/></td></tr>
<tr><td colspan="2">'.$allfeatures.'</td></tr>
</table> ';
echo str_pad('',4096)."\n";   
flush();

echo '<table border="0" width="100%" height="20px" bgcolor="#E4E4E4">
<tr>
<td width="40%">Vendors</td>
<td width="20%" align="center">Amount</td>
<td width="20%" align="center">Delivery Time</td>
<td width="20%" align="center">Vendor Store</td>
</tr>
</table>';
echo str_pad('',4096)."\n";   
flush();
*/


// Get the productId for the present query ////

$sqlquery = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
while($newrow = mysql_fetch_array($sqlquery)){
$productid = $newrow['ProductId'];
}

/// Update the Product details in the product details table ////
$newquery = mysql_query("Update products SET Data='$data',ImageUrl='$img',ExpiryTime=now(),Description='$description',Features='$allfeatures' where ProductId='$productid'") or die(mysql_error());

}

$final = microtime(true)-$start.'<br>';
?>