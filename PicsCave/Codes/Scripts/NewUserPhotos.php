<?php
ini_set('max_execution_time', 30); // 10 Minutes

if (isset($_FILES['newfiles'], $_POST['new_album_id'])) {

$noofimages = count($_FILES['newfiles']['tmp_name'])-1;

for($i=0;$i<=$noofimages;$i++){

if(is_uploaded_file($_FILES['newfiles']['tmp_name'][$i]))
{
$image_name = $_FILES['newfiles']['name'][$i];
$image_temp = $_FILES['newfiles']['tmp_name'][$i];
$image_size = $_FILES['newfiles']['size'][$i];

$allowed_ext = array('jpg', 'jpeg', 'png', 'gif');
$a = explode('.', $image_name);
$image_ext = strtolower(end($a));

$new_album_id = $_POST['new_album_id'];

$newerrors = array();

list($imagewidth, $imageheight) = getimagesize($image_temp);

if (empty($image_name) || empty($new_album_id)) {
    $newerrors[] = '<p>Error : Image'.$i.' Name is empty</p>';
} 
elseif(in_array($image_ext, $allowed_ext) == false) {
        $newerrors[] = '<p>Error : Invalid Extension for Image'.$i.'</p>';
    }
	
elseif ($image_size > 524288||$imagewidth>720||$imageheight>720) { // greater than 0.5 MB then reduce

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$image_id='';
$size = strlen( $chars );
for( $j = 0; $j < 15; $j++ ) {
	$image_id .= $chars[ rand( 0, $size - 1 ) ];
}
$image_file = $image_id.'.'.$image_ext;

list($width, $height) = getimagesize($image_temp);
if($width>$height){$newwidth = 720;	$newheight = 540;}
else{ $newwidth = 540; $newheight = 720;}
if($_POST['albumset']=="p"){
$query = mysql_query("Select AlbumName from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_POST['new_album_id']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
}
create_thumb($image_temp,$image_file,'../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/',$newwidth,"resize");
}
elseif($_POST['albumset']=="fp"){
$query = mysql_query("Select AlbumName from fbalbums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_POST['new_album_id']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
}
create_thumb($image_temp,$image_file,'../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/',$newwidth,"resize");
}
upload_image($image_id, $image_ext, $new_album_id,$_POST['photomessage'][$i],$_POST['albumset'],"resize");
}  

else {
    upload_image($image_temp, $image_ext, $new_album_id,$_POST['photomessage'][$i],$_POST['albumset'],"normal");
        
} // end of else

} // end of if

} // end of for

if (!empty($newerrors)) {  
foreach ($newerrors as $error) {
	echo $error;
    }
} 
else{
//header('Location: ../InnerPages/ViewAlbum.php?album_id='.$album_id);
}


//exit();
} // end of if

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function upload_image($image_temp, $image_ext, $album_id,$pmessage,$set,$request) {

if($request=="normal"){
$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$image_id='';
$size = strlen( $chars );
for( $i = 0; $i < 15; $i++ ) {
	$image_id .= $chars[ rand( 0, $size - 1 ) ];
}
$image_file = $image_id.'.'.$image_ext;
}
elseif($request=="resize"){
$image_file = $image_temp.'.'.$image_ext;
}
 



if($set=="p"){
$query = mysql_query("Select AlbumName,Count from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_POST['new_album_id']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$count = $row['Count']+1;
}
$query = mysql_query("insert into photos(AlbumId,AlbumName,PhotoId,PhotoMessage,Date) values('".$_POST['new_album_id']."','$albumname','$image_file','$pmessage',now())") or die(mysql_error());	
$query = mysql_query("update albums SET Count='".$count."' where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_POST['new_album_id']."'") or die(mysql_error());

if($request=="normal"){
move_uploaded_file($image_temp, '../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/'.$image_file);
}

create_thumb('../Photos/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/', $image_file, '../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/'.$albumname.'/',150,"normal");
}


elseif($set=="fp"){
$query = mysql_query("Select AlbumName,Count from fbalbums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_POST['new_album_id']."'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumname = $row['AlbumName'];
$count = $row['Count']+1;
}
$query = mysql_query("insert into fbphotos(AlbumId,AlbumName,PhotoId,PhotoMessage,Date) values('".$_POST['new_album_id']."','$albumname','$image_file','$pmessage',now())") or die(mysql_error());	
$query = mysql_query("update fbalbums SET Count='".$count."' where UserId='".$_SESSION['authenticateduser']."' and AlbumId='".$_POST['new_album_id']."'") or die(mysql_error());

if($request=="normal"){
move_uploaded_file($image_temp, '../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/'.$image_file);
}

create_thumb('../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/', $image_file, '../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$albumname.'/',150,"normal");
}

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function create_thumb($imagepath,$imagefile, $thumbpath, $thumbWidth,$request){

if($request=="resize"){
$img = imagecreatefromjpeg($imagepath);
}
else{
// load image and get image size
$img = imagecreatefromjpeg( "{$imagepath}{$imagefile}" );
}
$width = imagesx( $img );
$height = imagesy( $img );

// calculate thumbnail size
$new_width = $thumbWidth;
$new_height = floor( $height * ( $thumbWidth / $width ) );

// create a new temporary image
$tmp_img = imagecreatetruecolor( $new_width, $new_height );

// copy and resize old image into new image
imagecopyresampled( $tmp_img, $img, 0, 0, 0, 0, $new_width, $new_height, $width, $height );

// save thumbnail into a file
imagejpeg( $tmp_img, "{$thumbpath}{$imagefile}",90 );

}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>

