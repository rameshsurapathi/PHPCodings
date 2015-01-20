<?php
include_once('../Config/Config.php');


function http_response($url)
{
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        $head = curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        return $httpCode ;
}

$urls = array(
    'http://www.flipkart.com/','http://www.infibeam.com'
    );

$names = array('Flipkart','Infibeam');

$status = array();

$i = 0;
foreach($urls as $url){
   $status[$url] = http_response($url);
if($status[$url]=="200"){
echo $names[$i].' is Working Fine <br/>';
}
else{
echo $names[$i].' is not Working Fine.An Error of '.$status[$url].' code has Occurred.Please check it. <br/>';
}
$i=$i+1;
}

?>