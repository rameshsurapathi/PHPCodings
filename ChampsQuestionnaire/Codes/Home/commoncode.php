<?php

while($row = mysql_fetch_array($query)){
$qid = $row['QuestionId'];
$title = $row['Title'];
$desc = $row['Description'];
if(strlen($desc)>200){$desc = substr($desc,0,200).'..';}
$userid = $row['UserID'];
$date = $row['Date'];
$views = $row['Views'];
$likes = $row['Likes'];
$qansws = $row['Answers'];

$newquery1 = mysql_query("select FirstName,Questions,Answers,Points,Tags from users where UserId='$userid'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery1)){
$firstname = $row1['FirstName'];
$points = $row1['Points'];
$questions = $row1['Questions'];
$utags = $row1['Tags'];
$answers = $row1['Answers'];
$newquery2 = mysql_query("select UserName from usertype where UserCode<=$points order by UserCode ASC limit 1") or die(mysql_error());
while($row2 = mysql_fetch_array($newquery2)){
$role = $row2['UserName'];
}
}

$file = '../UserPhotos/'.$userid.'.jpg';
if(is_file($file)){
$photo = '../UserPhotos/'.$userid.'.jpg';
}
else{
$photo = '../UserPhotos/noimage.png';
}

echo '<br/><br/>';
echo '<div>&nbsp;&nbsp;&nbsp;&nbsp;<a href="../question.php?'.$qid.'" style="font-size:20px;">'. $title.'</a></div>
<table border="0" width="100%">
<tr>
<td width="3%"></td>
<td width="7%" valign="top"><a href="../user.php?'.$userid.'" style="text-decoration:none;">
<img src="'.$photo.'" width="50" height="50"></a></td>
<td width="22%" valign="top"><span><a href="../user.php?'.$userid.'" style="color:#008aaf;text-decoration:none;">'.$firstname.'</a></span>
<br/><span style="font-size:12px;">Role : '.$role.'</span>
<br/><span style="font-size:12px;">Points : '.$points.'&nbsp;Answers : '.$answers.'</span>
<br/><span style="font-size:12px;">Questions : '.$questions.'&nbsp;Tags : '.$utags.'</span>
</td>
<td width="2%"></td>
<td width="68%" valign="top">'.$desc.'</td>
</tr>
<tr>
<td width="3%"></td>
<td width="7%"></td><td width="22%"></td><td width="2%"></td>
<td width="68%">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#85a950;font-size:13px;">'.$qansws.' Answers&nbsp;<b>|</b>&nbsp;
'.$views.' Views&nbsp;<b>|</b>&nbsp;'.$likes.' Likes&nbsp;<b>|</b>&nbsp;asked '.$date.'</span></td>
</tr>
</table>
<br/><br/>
';

}


?>