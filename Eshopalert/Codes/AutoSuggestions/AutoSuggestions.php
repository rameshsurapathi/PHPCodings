<?php
/* Author : Surapathi Ramesh Kumar  */
include_once('../Config/Config.php');

$key = str_replace(" ","+",trim(mysql_real_escape_string($_POST['key'])));

$query = mysql_query("select ProductId,ProductName from products where ProductName like '$key%' OR ProductName='$key'  order by Views DESC limit 5") or die(mysql_error());
if(mysql_num_rows($query)>0){

echo '<ul>';

while($row = mysql_fetch_array($query)){

$nquery = preg_replace ( '#([+])#', ' ', trim($row['ProductName']));

$productid = $row['ProductId'];

$newquery = mysql_query("Select BestPrice,Stores from bestprice where ProductId = '$productid'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$bp = $nrow['BestPrice'];
$st = $nrow['Stores'];
}


if($bp>0){
echo '<li>
<a href="http://www.eShopAlert.com/index.php?searchquery='.$row['ProductName'].'" style="cursor:pointer;color:black;text-decoration: none;">
<table border="0" width="100%" onmouseover="javascript:keepquery(\''.$nquery.'\');">
<tr>
<td width="50%" style="color:black;font-size:12px;" align="left">'.$nquery.'</td>
<td width="34%" style="color:#CC3366;font-size:11px;" #CC3366>Best Alert: <img src="http://www.eShopAlert.com/Images/rupee.jpg"> '.number_format($bp).'</td>
<td width="14%" style="color:green;font-size:11px;" #CC3366>'.$st.' Stores</td>
</tr></table>
</a>
</li>';
}

}
echo '</ul>';
}

?>

<script>
function keepquery(x){
document.getElementById("searchquery").value =""+x;
}
</script>

