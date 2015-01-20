<?php
$query = mysql_query("select CategoryId,Title,Description from questions where QuestionId='$qid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$title = $row['Title'];
$qdesc = $row['Description'];
$catid = $row['CategoryId'];
}

$query = mysql_query("select CategoryName from categories where CategoryId='$catid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){$catname = $row['CategoryName'];}

echo '<form>
<table border="0" width="100%">
<tr><td colspan="4"><br/></td></tr>
<tr>
<tr>
<td width="3%"></td>
<td style="font-size:16px;">Category</td>
<td>&nbsp;</td>
<td>
<select style="width:200px;height:30px;" id="cate" name="cate">
<option value="'.$catid.'">'.$catname.'</option>';

$query = mysql_query("select CategoryId,CategoryName from categories where Status='1'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
if($catid!=$row['CategoryId']){
echo '<option value="'.$row['CategoryId'].'">'.$row['CategoryName'].'</option>';
}
}

echo '</select>
</td>
</tr>
<td width="3%"></td>
<td style="font-size:16px;">Title</td>
<td>&nbsp;</td>
<td><input type="text" name="title" id="title" style="height:30px;width:580px;" value="'.$title.'">
</td>
</tr>
<tr>
<td width="3%"></td>
<td style="font-size:16px;" valign="top">Description</td>
<td>&nbsp;</td>
<td><textarea id="qdescription" name="qdescription" rows="10" cols="70">'.$qdesc.'</textarea></td>
</tr>
<tr>
<td width="3%"></td>
<td style="font-size:16px;">Tags</td>
<td>&nbsp;</td>
<td><input type="text" name="tags" id="tags" style="height:30px;width:580px;" value="';

$query = mysql_query("select TagId from questiontags where QuestionId='$qid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("select TagName from tags where TagId='".$row['TagId']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery)){
echo $row1['TagName'].' ';
}
}

echo '"></td>
</tr>
<tr><td colspan="4"><br/></td></tr>
<tr><td width="3%"></td>
<td></td><td>&nbsp;</td>
<td><div align="center" style="background-color:#333333;height:28px;width:180px;color:#FFFFFF;font-size:16px;cursor:pointer;" onclick="javascript:
updatequestion();">Update your Question</div></td></tr>
</table>
</form>';

?>

