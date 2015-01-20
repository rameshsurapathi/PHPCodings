<?php
function getlink($parserquery){

$extra_link = preg_replace ( '#([,])#', '+', trim($parserquery));

return $extra_link;
}
?>