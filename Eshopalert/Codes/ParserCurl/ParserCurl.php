<?php
function parsercurl(&$parsercurlHandle,$parserurl){ /// Adding curls to multi curl handler
$parserch = curl_init();
curl_setopt($parserch, CURLOPT_URL, $parserurl);
curl_setopt($parserch, CURLOPT_TIMEOUT, 30);
curl_setopt($parserch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($parserch, CURLOPT_HEADER, false);
curl_multi_add_handle($parsercurlHandle,$parserch);
return $parserch;
}

function parserExecHandle(&$parsercurlHandle)
{
$parserflag=null;
do {
    curl_multi_exec($parsercurlHandle,$parserflag);
} while ($parserflag > 0);
}

$parsercurls[] = array();
$parserlist[] = array();
$parsercurlHandle = curl_multi_init();
?>