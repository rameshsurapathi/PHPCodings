<?php
/* Author : Surapathi Ramesh Kumar
In this page, multithreading for the parsing of all websites are implemented */

$start = microtime(true);

include_once('../Config/Config.php');
include_once('../ParserCurl/ParserCurl.php');

$newquery = mysql_real_escape_string($_GET['query']);
$f=0;
$website = array();
$query = mysql_query("select WebsiteName from websites where Status='1' order by WebsiteId ASC") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$website[$f] = $row['WebsiteName'];
$f=$f+1;
} 
//echo $f;

/* Performing Multithreading */

for($j=0;$j<$f;$j++){
$parserlist[$j] = 'http://www.eShopAlert.com/Websites/'.$website[$j].'/'.$website[$j].'.php?parserquery='.$newquery.'';
$parsercurls[$j] = parsercurl($parsercurlHandle,$parserlist[$j]);
}

parserExecHandle($parsercurlHandle); 

/* Printing the Output */

for ($j = 0;$j < $f; $j++)
{
echo $parsertext[$j] =  curl_multi_getcontent($parsercurls[$j]);
}  

for ($j = 0;$j < $f; $j++){//remove the handles
curl_multi_remove_handle($parsercurlHandle,$parsercurls[$j]);
}

curl_multi_close($parsercurlHandle);

echo $final =  '<br/><br/>Parser Ending Time '.(microtime(true)-$start).'<br/>';
?>