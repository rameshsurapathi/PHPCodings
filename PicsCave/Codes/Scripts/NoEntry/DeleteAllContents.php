<?php
$query1 = mysql_query("select AlbumId,AlbumName from fbalbums where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($q1 = mysql_fetch_array($query1)){
$fbalbum = $q1['AlbumId'];
$albumname = $q1['AlbumName'];
$query2 = mysql_query("delete from fbphotos where AlbumId='$fbalbum'") or die(mysql_error());
$dir1 = '../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'';
$dir2 = '../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'';
deletefolder($dir1);
deletefolder($dir2);
}

$query3 = mysql_query("select AlbumId,AlbumName from albums where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
while($q3 = mysql_fetch_array($query3)){
$album = $q3['AlbumId'];
$albumname = $q3['AlbumName'];
$query4 = mysql_query("delete from photos where AlbumId='$album'") or die(mysql_error());
$dir3 = '../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'';
$dir4 = '../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'';
deletefolder($dir3);
deletefolder($dir4);
}

$query5 = mysql_query("delete from fbalbums where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
$query6 = mysql_query("delete from albums where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());



$query7 = mysql_query("delete from textwatermark where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
$query8 = mysql_query("delete from md5secrettexts where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

$query9 = mysql_query("delete from md5passwords where UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());
$query10 = mysql_query("delete from user where UserId='".$_SESSION['authenticateduser']."' and Activation='1' and Status='1'") or die(mysql_error());

$dir5 = '../Photos/'.$_SESSION['authenticateduser'].'/Albums';
$dir6 = '../Thumbs/'.$_SESSION['authenticateduser'].'/Albums';
deletefolder($dir5);
deletefolder($dir6);

$dir7 = '../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums';
$dir8 = '../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums';
deletefolder($dir7);
deletefolder($dir8);

$dir9 = '../Photos/'.$_SESSION['authenticateduser'].'';
$dir10 = '../Thumbs/'.$_SESSION['authenticateduser'].'';
deletefolder($dir9);
deletefolder($dir10);


function deletefolder($dir){
$files = glob( $dir . '/*', GLOB_MARK ); // get all file names
foreach($files as $file){ // iterate files
  if(is_file($file))
    unlink($file); // delete file
}
if(is_dir($dir)){
rmdir($dir);
}
}
?>