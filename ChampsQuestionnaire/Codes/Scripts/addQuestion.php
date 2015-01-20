
<?php
session_start();
include_once('../Config/Config.php');

if(isset($_POST['request'])&&$_POST['request']=="addquestion"){
$cate = mysql_real_escape_string($_POST['cate']);
$title = mysql_real_escape_string($_POST['title']);
$desc = mysql_real_escape_string($_POST['desc']);
$tags = mysql_real_escape_string($_POST['tags']);

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$questionid='';
$size = strlen( $chars );
for( $i = 0; $i < 9; $i++ ) {
	$questionid .= $chars[ rand( 0, $size - 1 ) ];
}

$tagarray = explode(" ",$tags);
$c = count($tagarray);
for($i=0;$i<$c;$i++){
$query = mysql_query("select TagId,Questions,Users,Views from tags where TagName='".$tagarray[$i]."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery1 = mysql_query("update tags SET Questions='".$row['Questions']."'+1 where TagId='".$row['TagId']."'") or die(mysql_error());
$newquery2 = mysql_query("update tags SET Views='".$row['Views']."'+1 where TagId='".$row['TagId']."'") or die(mysql_error());
$newquery3 = mysql_query("select UserId from usertags where UserId='".$_SESSION['authenticateduser']."' and TagId='".$row['TagId']."'") or die(mysql_error());
if(mysql_num_rows($newquery3)>0){
}
else{
$newquery4 = mysql_query("update tags SET Users='".$row['Users']."'+1 where TagId='".$row['TagId']."'") or die(mysql_error());
$newquery5 = mysql_query("insert into usertags(UserId,TagId) values('".$_SESSION['authenticateduser']."','".$row['TagId']."')") or die(mysql_error());
$newquery10 = mysql_query("select Points,Tags from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery10)){
$newquery11 = mysql_query("update users SET Points='".$row1['Points']."'+10,Tags='".$row1['Tags']."'+1 where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
}
}
$newquery6 = mysql_query("select CategoryId from categorytags where CategoryId='$cate' and TagId='".$row['TagId']."'") or die(mysql_error());
if(mysql_num_rows($newquery6)>0){
}
else{
$newquery7 = mysql_query("insert into categorytags(CategoryId,TagId) values('$cate','".$row['TagId']."')") or die(mysql_error());
$newquery8 = mysql_query("select Tags from categories where CategoryId='$cate'") or die(mysql_error());
while($row2 = mysql_fetch_array($newquery8)){
$newquery9 = mysql_query("update categories SET Tags='".$row2['Tags']."'+1 where CategoryId='$cate'") or die(mysql_error());
}
}
}
}
else{
$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$tagid='';
$size = strlen( $chars );
for( $j= 0; $j < 5; $j++ ) {
	$tagid .= $chars[ rand( 0, $size - 1 ) ];
}
$query = mysql_query("insert into tags(TagId,TagName,Questions,Users,Views,Status,Date) values('$tagid','$tagarray[$i]','1','1','1','1',now())") or
die(mysql_error());
$query1 =  mysql_query("insert into usertags(UserId,TagId) values('".$_SESSION['authenticateduser']."','$tagid')") or die(mysql_error());
$query2 = mysql_query("insert into categorytags(CategoryId,TagId) values('$cate','$tagid')") or die(mysql_error());
$query3 = mysql_query("insert into questiontags(QuestionId,TagId) values('$questionid','$tagid')") or die(mysql_error());
$newquery10 = mysql_query("select Points,Tags from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery10)){
$newquery11 = mysql_query("update users SET Points='".$row1['Points']."'+10,Tags='".$row1['Tags']."'+1 where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
}
$newquery8 = mysql_query("select Tags from categories where CategoryId='$cate'") or die(mysql_error());
while($row2 = mysql_fetch_array($newquery8)){
$newquery9 = mysql_query("update categories SET Tags='".$row2['Tags']."'+1 where CategoryId='$cate'") or die(mysql_error());
}
}

}

$query = mysql_query("select Questions from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$updatequery = mysql_query("update users SET Questions='".$row['Questions']."'+1 where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
}

$query = mysql_query("select Questions from categories where CategoryId='$cate'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$updatequery = mysql_query("update categories SET Questions='".$row['Questions']."'+1 where CategoryId='$cate'") or die(mysql_error());
}

$query = mysql_query("insert into questions(QuestionId,CategoryId,UserId,Title,Description,Tags,Answers,Views,Likes,Date) values('$questionid','$cate',
'".$_SESSION['authenticateduser']."','$title','$desc','$c','0','1','0',now())") or die(mysql_error());
if($query){
echo $questionid;
}
else{
echo '0';
}

exit();
}

elseif(isset($_GET['request'])&&$_GET['request']=="showquestionbox"){

$questionid = mysql_real_escape_string($_GET['questionid']);
$userid = mysql_real_escape_string($_GET['userid']);

$query = mysql_query("select CategoryId,Title,Description from questions where QuestionId='$questionid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$title = $row['Title'];
$desc = $row['Description'];
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
<td><textarea id="description" name="description" rows="10" cols="70">'.$desc.'</textarea></td>
</tr>
<tr>
<td width="3%"></td>
<td style="font-size:16px;">Tags</td>
<td>&nbsp;</td>
<td><input type="text" name="tags" id="tags" style="height:30px;width:580px;" value="';

$query = mysql_query("select TagId from questiontags where QuestionId='$questionid'") or die(mysql_error());
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
<td><div align="center" style="background-color:#333333;height:28px;width:80px;color:#FFFFFF;font-size:16px;cursor:pointer;" onclick="javascript:
updatequestion(\''.$questionid.'\');">Update</div></td></tr>
</table>
</form>';

echo '
<script type="text/javascript">
	 new nicEditor().panelInstance("description");
</script>';

}


elseif(isset($_POST['request'])&&$_POST['request']=="updatequestion"){
$questionid = mysql_real_escape_string($_POST['questionid']);
$cate = mysql_real_escape_string($_POST['cate']);
$title = mysql_real_escape_string($_POST['title']);
$desc = mysql_real_escape_string($_POST['desc']);
$tags = mysql_real_escape_string($_POST['tags']);

$tagarray = explode(" ",$tags);
$c = count($tagarray);

for($i=0;$i<$c;$i++){
$query = mysql_query("select TagId,Questions,Users,Views from tags where TagName='".$tagarray[$i]."'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$query1 = mysql_query("select TagId from questiontags where QuestionId='$questionid' and TagId='".$row['TagId']."'") or die(mysql_error());
if(mysql_num_rows($query1)>0){}
else{
$newquery1 = mysql_query("update tags SET Questions='".$row['Questions']."'+1 where TagId='".$row['TagId']."'") or die(mysql_error());
$newquery2 = mysql_query("update tags SET Views='".$row['Views']."'+1 where TagId='".$row['TagId']."'") or die(mysql_error());
$newquery3 = mysql_query("select UserId from usertags where UserId='".$_SESSION['authenticateduser']."' and TagId='".$row['TagId']."'") or die(mysql_error());
if(mysql_num_rows($newquery3)>0){
}
else{
$newquery4 = mysql_query("update tags SET Users='".$row['Users']."'+1 where TagId='".$row['TagId']."'") or die(mysql_error());
$newquery5 = mysql_query("insert into usertags(UserId,TagId) values('".$_SESSION['authenticateduser']."','".$row['TagId']."')") or die(mysql_error());
$newquery10 = mysql_query("select Tags from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery10)){
$newquery11 = mysql_query("update users SET Tags='".$row1['Tags']."'+1 where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
}
}
$newquery6 = mysql_query("select CategoryId from categorytags where CategoryId='$cate' and TagId='".$row['TagId']."'") or die(mysql_error());
if(mysql_num_rows($newquery6)>0){
}
else{
$newquery7 = mysql_query("insert into categorytags(CategoryId,TagId) values('$cate','".$row['TagId']."')") or die(mysql_error());
$newquery8 = mysql_query("select Tags from categories where CategoryId='$cate'") or die(mysql_error());
while($row2 = mysql_fetch_array($newquery8)){
$newquery9 = mysql_query("update categories SET Tags='".$row2['Tags']."'+1 where CategoryId='$cate'") or die(mysql_error());
}
}
}
}
}
else{
$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$tagid='';
$size = strlen( $chars );
for( $j= 0; $j < 5; $j++ ) {
	$tagid .= $chars[ rand( 0, $size - 1 ) ];
}
$query = mysql_query("insert into tags(TagId,TagName,Questions,Users,Views,Status,Date) values('$tagid','$tagarray[$i]','1','1','1','1',now())") or
die(mysql_error());
$query1 =  mysql_query("insert into usertags(UserId,TagId) values('".$_SESSION['authenticateduser']."','$tagid')") or die(mysql_error());
$query2 = mysql_query("insert into categorytags(CategoryId,TagId) values('$cate','$tagid')") or die(mysql_error());
$query3 = mysql_query("insert into questiontags(QuestionId,TagId) values('$questionid','$tagid')") or die(mysql_error());
$newquery10 = mysql_query("select Tags from users where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($row1 = mysql_fetch_array($newquery10)){
$newquery11 = mysql_query("update users SET Tags='".$row1['Tags']."'+1 where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
}
$newquery8 = mysql_query("select Tags from categories where CategoryId='$cate'") or die(mysql_error());
while($row2 = mysql_fetch_array($newquery8)){
$newquery9 = mysql_query("update categories SET Tags='".$row2['Tags']."'+1 where CategoryId='$cate'") or die(mysql_error());
}
}
}

$query = mysql_query("update questions SET CategoryId='$cate',Title='$title',Description='$desc',Tags='$c' where QuestionId='$questionid'") or die(mysql_error());
if($query){
echo $questionid;
}
else{
echo '0';
}
}
?>

