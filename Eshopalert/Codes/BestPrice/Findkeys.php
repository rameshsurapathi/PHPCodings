<?php
/// This function is used to find the similar keywords between search query and title of product from each website

function keys($a,$b){
$a =  strtolower($a);
$b = strtolower($b);
$percent = 0;
$numpercent=1;
$p=0;
$n=1;
$splita = explode("+",$a);

while($splita[$p]!=""){

// To check numeric keys

if (is_numeric($splita[$p])||ctype_alnum($splita[$p])){
$n=$n+1;
$pos = strpos($b,$splita[$p]);
if ($pos !== false) {
$numpercent = $numpercent+1;
}

}

// to check remaining keys

else{
$pos = strpos($b,$splita[$p]);
if ($pos !== false) {
     $percent = $percent+1;
} 
}

//////

$p=$p+1;
}

//// end of while

if($numpercent>1){
$result1 = abs((($percent+$numpercent-1)/$p)*100);
}
else{
$result1 = abs(($percent/$p)*100);
}

$result2 = abs(($numpercent/$n)*100);

$result = array($result1,$result2);

return  $result;
}


?>