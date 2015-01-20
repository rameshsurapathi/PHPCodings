<?php
include_once('../Config/NoSessionConfig.php');

if($_POST['request']=="importalbumids"){

$response ='';

$albumids = mysql_real_escape_string($_POST['albumids']);
$time = mysql_real_escape_string($_POST['time']);

ini_set('max_execution_time', $time+600); // time+10 mins

include('../FacebookKit/facebook.php');

$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
  
));

$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();

if ($user) {
  try {
$user_profile = $facebook->api('/me');

$albums = $facebook->api('/me/albums');

foreach($albums['data'] as $album)
{

if (strpos($albumids,$album['id']) !== false) { // check whether the albums user wants to upload,matches or not

//if it matches......check whether the album already present in FbAlbums Folder or not
$query = mysql_query("select Id from fbalbums where UserId='".$_SESSION['authenticateduser']."' and AlbumName='".$album['name']."'") or die(mysql_error());

// If it is present, then delete it
if(mysql_num_rows($query)>0&&$album['name']!="Untitled Album"){
$response.='<p style="font-size:11px;color:red;" align="center">'.$album['name'].' Album already Exists.To Add more photos to this album,click on view albums,and go to album and click on Add new photos to Album</p>';
}

// if it not present, then create it

else{

$chars = "0123456789";
$albumid='';
$size = strlen( $chars );
for( $i = 0; $i < 5; $i++ ) {
	$albumid .= $chars[ rand( 0, $size - 1 ) ];
}

if(isset($album['description'])&&$album['description']!=""){$albumdesc = $album['description'];}
else{$albumdesc="NULL";}
if(isset($album['location'])&&$album['location']!=""){$albumloc = $album['location'];}
else{$albumloc="NULL";}

$query = mysql_query("insert into fbalbums(UserId,AlbumId,AlbumName,AlbumDescription,AlbumLocation,AlbumTime,Date,Count) values('".$_SESSION['authenticateduser']."','$albumid','".$album['name']."','$albumdesc','$albumloc','".$album['created_time']."',now(),'".$album['count']."')") or die(mysql_error());

$id = mysql_insert_id();
if($id>0){

mkdir("../Photos/".$_SESSION['authenticateduser']."/FbAlbums/".$album['name']."",0755,true);
mkdir("../Thumbs/".$_SESSION['authenticateduser']."/FbAlbums/".$album['name']."",0755,true);

// get all photos for album
$photos = $facebook->api("/{$album['id']}/photos"); 

foreach($photos['data'] as $photo)
        {
		
		
$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$image_id='';
$size = strlen( $chars );
for( $i = 0; $i < 15; $i++ ) {
	$image_id .= $chars[ rand( 0, $size - 1 ) ];
}

$image_file = $image_id.'.jpg';
		
$url = $photo['source'];
$img = '../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$album['name'].'/'.$image_file;
file_put_contents($img, file_get_contents($url));

if(!isset($photo['message'])){$photo['message']='';}

$query = mysql_query("insert into fbphotos(AlbumId,AlbumName,PhotoId,PhotoMessage,Date) values('$albumid','".$album['name']."','$image_file','".$photo['message']."',now())") or die(mysql_error());	

create_thumb('../Photos/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$album['name'].'/', $image_file, '../Thumbs/'.$_SESSION['authenticateduser'].'/FbAlbums/'.$album['name'].'/',150);	
		
       }

$response.='<p align="center">'.$album['name'].' Album has got uploaded</p>';
}
else{
$response.='<p align="center">'.$album['name'].' Album has not got uploaded.Please Try Again</p>';
}
	   
  
} // end of else part

} // end of if statment,that checks the album ids matches or not

} // end of for loop of all albums

    } catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
}

if ($user) {
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/logout.php'));
 $response.= '<div align="center">Note : IF you are done with importing Albums from Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
} else {
  $loginUrl = $facebook->getLoginUrl(array('scope' => 'user_status,publish_stream,user_photos'));
  $response.= '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}

echo $response;

}
    
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function create_thumb($imagepath,$imagefile, $thumbpath, $thumbWidth){

// load image and get image size
$img = imagecreatefromjpeg( "{$imagepath}{$imagefile}" );
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
imagejpeg( $tmp_img, "{$thumbpath}{$imagefile}",100 );

}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>


