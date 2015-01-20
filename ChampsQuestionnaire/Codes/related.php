<?php
$patterns = array('/what/','/are/','/the/','/What/','/is/','/for/','/it/');
$title = preg_replace($patterns," ",$title);
$titlearray = explode(" ",$title);
$count = count($titlearray);
$mainquery = '';
for($i=0;$i<$count-1;$i++){
if($titlearray[$i]!=""){
$mainquery.="select QuestionId,Title from questions where Title like '%$titlearray[$i]%' UNION ";
}
}
$mainquery.="select QuestionId,Title from questions where Title like '%$titlearray[$i]%'";
$query = mysql_query("$mainquery") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
echo '<p><a href="question.php?'.$row['QuestionId'].'" style="font-size:13px;color:#010aaf;text-decoration:none;">'.$row['Title'].'</a></p>';
}
}
?>