<?php
include_once('Config/Config.php');
include('Findkeys.php');

$plquery = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
while($row = mysql_fetch_array($plquery)){
$productid = $row['ProductId'];
}

$array = array(); // Original array
$newarray = array();// array to filter
$differ = array();// array to filter
$seq='';
$c=0;
$sum=0;
$newquery = mysql_query("select WebsiteName from websites") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$table =  strtolower($nrow['WebsiteName']);
$sqlquery = mysql_query("select WebsiteId,Price,Title from $table where ProductId='$productid'") or die(mysql_error());
if(mysql_num_rows($sqlquery)>0){
while($row = mysql_fetch_array($sqlquery)){

//echo $table.' '.$extra_link.' '.$row['Title'].'<br/>';

$result = keys($extra_link,$row['Title']);

//echo $result[0].' '.$result[1].'<br>';

if(strtolower($extra_link[0])==strtolower($row['Title'][0])&&$result[0]>=50&&$result[1]==100){//if the first letter of query matches with first letter 

$array[$row['WebsiteId']] = $row['Price'];
$sum = $sum+$row['Price'];
$c=$c+1;
}// end of if

}// end of while

}// end of if

}// end of while

////////////// Calculating the mean of differences and removing price which has higher standard deviation
/*
$newarray = $array;

sort($newarray);

for($y=0;$y<($c-2);$y++){
echo $newarray[$y+1].' '.$newarray[$y].'<br/>';
echo $differ[$y] = $newarray[$y+1]-$newarray[$y];
echo '<br/>';
$sum = $sum+$differ[$y];
}

if($sum>0){
echo $mean = round($sum/($c-1));
echo '<br/>';
echo $maxdev = $array[$c
}


foreach ($differ as $key => $val){
if($val>$mean){
echo $val.' '.$key;
foreach ($array as $key1 => $val1){
if($val1==$val){
unset($array[$key1]);
}
}
$c=$c-1;
}
}
*/
//////////////////////////////////////////////////////////////////////////////

if($sum>0){
$mean = round($sum/$c);
}


foreach ($array as $key => $val){
if(($val*2)<$mean){
unset($array[$key]);
$c=$c-1;
}
}

asort($array);

foreach ($array as $key => $val){
$seq.= $key .',';
}

sort($array);

$query = mysql_query("select ProductId from bestprice where ProductId='$productid'") or die(mysql_error());
if(mysql_num_rows($query)>0){
$equery = mysql_query("update bestprice SET BestPrice='$array[0]',Stores='$c',Sequence='$seq' where ProductId='$productid'") or die(mysql_error());
}
else{
$equery = mysql_query("insert into bestprice(ProductId,BestPrice,Stores,Sequence) values('$productid','$array[0]','$c','$seq')") or die(mysql_error());
}

?>