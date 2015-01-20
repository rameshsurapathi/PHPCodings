<?php

function pricergx($price,$wb){
$newprice = preg_replace ( '#([^0-9])#', '', $price);
return $newprice;
}

function pricergx1($price,$wb){
$newprice = explode(".",preg_replace ( '#([^.0-9])#', '', $price));
return $newprice[1];
}

function pricergx2($price,$wb){
$newprice = explode(".",preg_replace ( '#([^.0-9])#', '', $price));
return $newprice[0];
}
?>