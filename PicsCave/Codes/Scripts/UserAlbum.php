<?php
include_once('../Config/Config.php');

if($_POST['request']=="addnewalbum"){
$albumname = mysql_real_escape_string($_POST['albumname']);
$query = mysql_query("select Id from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumName='$albumname'") or die(mysql_error());
if(mysql_num_rows($query)>0){
echo '2';
}
else{

$albumdesc = mysql_real_escape_string($_POST['albumdesc']);
if($albumdesc==""){$albumdesc = "NULL";}
$albumloc = mysql_real_escape_string($_POST['albumloc']);
if($albumloc==""){$albumloc = "NULL";}
$day = mysql_real_escape_string($_POST['day']);
$month = mysql_real_escape_string($_POST['month']);
$year = mysql_real_escape_string($_POST['year']);

$time = $month.' '.$day.','.$year;
if($day==0&&$month==0&&$year==0){$time = "NULL";}

$chars = "0123456789";
$albumid='';
$size = strlen( $chars );
for( $i = 0; $i < 5; $i++ ) {
	$albumid .= $chars[ rand( 0, $size - 1 ) ];
}

$query = mysql_query("insert into albums(UserId,AlbumId,AlbumName,AlbumDescription,AlbumLocation,AlbumTime,Date,Count) values('".$_SESSION['authenticateduser']."','$albumid','$albumname','$albumdesc','$albumloc','$time',now(),'0')") or die(mysql_error());
$id = mysql_insert_id();
if($id>0){

mkdir("../Photos/".$_SESSION['authenticateduser']."/Albums/$albumname",0755,true);
mkdir("../Thumbs/".$_SESSION['authenticateduser']."/Albums/$albumname",0755,true);
echo '1';
}
else{
echo '0';
}

}//end of else

exit();
}

if($_POST['request']=="editalbum"){
$newalbumname = mysql_real_escape_string($_POST['newalbumname']);
$editalbumid = mysql_real_escape_string($_POST['editalbumid']);
$editalbumset = mysql_real_escape_string($_POST['editalbumset']);
$albumdesc = mysql_real_escape_string($_POST['albumdesc']);
if($albumdesc==""){$albumdesc = "NULL";}
$albumloc = mysql_real_escape_string($_POST['albumloc']);
if($albumloc==""){$albumloc = "NULL";}
$albumtime = mysql_real_escape_string($_POST['albumtime']);
$albumname = mysql_real_escape_string($_POST['albumname']);

if($editalbumset=="p"){
$query = mysql_query("select * from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='$editalbumid'") or die(mysql_error());
}
elseif($editalbumset=="fp"){
$query = mysql_query("select * from fbalbums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='$editalbumid'") or die(mysql_error());
}
while($row = mysql_fetch_array($query)){
$oldalbumdesc = $row['AlbumDescription'];
$oldalbumloc = $row['AlbumLocation'];
$oldalbumtime = $row['AlbumTime'];
}

if($newalbumname==$albumname&&$oldalbumdesc==$albumdesc&&$oldalbumloc==$albumloc&&$oldalbumtime==$albumtime){
echo '1';
}
else{

if($editalbumset=="p"){
$query = mysql_query("update albums SET AlbumName='$newwalbumname',AlbumDescription='$albumdesc',AlbumLocation='$albumloc',AlbumTime='$albumtime' where UserId='".$_SESSION['authenticateduser']."' and AlbumId='$editalbumid'") or die(mysql_error());

$numRows = mysql_affected_rows();
if($numRows>0){
echo '1';
}
elseif($numRows==0){
echo '0';
}

if($newalbumname!=$albumname){
$query = mysql_query("update photos SET AlbumName='$newalbumname' where AlbumId='$editalbumid'") or die(mysql_error());
rename("../Photos/".$_SESSION['authenticateduser']."/Albums/$albumname","../Photos/".$_SESSION['authenticateduser']."/Albums/$newalbumname");
rename("../Thumbs/".$_SESSION['authenticateduser']."/Albums/$albumname","../Thumbs/".$_SESSION['authenticateduser']."/Albums/$newalbumname");
}
}

elseif($editalbumset=="fp"){
$query = mysql_query("update fbalbums SET AlbumName='$newalbumname',AlbumDescription='$albumdesc',AlbumLocation='$albumloc',AlbumTime='$albumtime' where UserId='".$_SESSION['authenticateduser']."' and AlbumId='$editalbumid'") or die(mysql_error());

$numRows = mysql_affected_rows();
if($numRows>0){
echo '1';
}
elseif($numRows==0){
echo '0';
}

if($newalbumname!=$albumname){
$query = mysql_query("update fbphotos SET AlbumName='$newalbumname' where AlbumId='$editalbumid'") or die(mysql_error());
rename("../Photos/".$_SESSION['authenticateduser']."/FbAlbums/$albumname","../Photos/".$_SESSION['authenticateduser']."/FbAlbums/$newalbumname");
rename("../Thumbs/".$_SESSION['authenticateduser']."/FbAlbums/$albumname","../Thumbs/".$_SESSION['authenticateduser']."/FbAlbums/$newalbumname");
}



}


}

exit();


}

?>