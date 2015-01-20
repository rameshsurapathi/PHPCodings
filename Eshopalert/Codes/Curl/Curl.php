<?php

$curls[] = array();
$list[] = array();
$curlHandle = curl_multi_init();

function curl(&$curlHandle,$url){ /// Adding curls to multi curl handler
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_TIMEOUT, 30);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HEADER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1');
curl_multi_add_handle($curlHandle,$ch);
return $ch;
}


function ExecHandle(&$curlHandle)
{
$flag=null;
do {
$cm = curl_multi_exec($curlHandle,$flag);
}
while ($flag>0);
}

 


?>