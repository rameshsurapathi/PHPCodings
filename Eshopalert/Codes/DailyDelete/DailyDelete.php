<?php
include_once('../Config/Config.php');

/*
delete the daily entries of trends from the trends table, as all the information gets updated in main trends table

and try to delete daily information in products and in all websites table that has default information ie no imageurl, no data, no price etc.

*/

//////////// Code to delete all products which have price 0,from website,product and bestprice tables

$query = mysql_query("SELECT ProductId FROM bestprice WHERE BestPrice='0'") or die(mysql_query());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){

$productid = $row['ProductId'];

$query1 = mysql_query("delete from bestprice where ProductId='$productid'") or die(mysql_error());
$query2 = mysql_query("delete from products where ProductId='$productid'") or die(mysql_error());

$query3 = mysql_query("select WebsiteName from websites") or die(mysql_error());
while($nrow = mysql_fetch_array($query3)){
$websitename =  strtolower($nrow['WebsiteName']);
$query4 = mysql_query("delete from $websitename where ProductId='$productid'") or die(mysql_error());
}

}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////


?>