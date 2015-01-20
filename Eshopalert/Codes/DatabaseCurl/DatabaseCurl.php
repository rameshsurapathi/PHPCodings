<?php
function databasecurl(&$databasecurlHandle,$databaseurl){ /// Adding curls to multi curl handler
$databasech = curl_init();
curl_setopt($databasech, CURLOPT_URL, $databaseurl);
curl_setopt($databasech, CURLOPT_TIMEOUT, 30);
curl_setopt($databasech, CURLOPT_RETURNTRANSFER, true);
curl_setopt($databasech, CURLOPT_HEADER, false);
curl_multi_add_handle($databasecurlHandle,$databasech);
return $databasech;
}

function databaseExecHandle(&$databasecurlHandle)
{
$databaseflag=null;
do {
    curl_multi_exec($databasecurlHandle,$databaseflag);
} while ($databaseflag > 0);
}

$databasecurls[] = array();
$databaselist[] = array();
$databasecurlHandle = curl_multi_init();
?>