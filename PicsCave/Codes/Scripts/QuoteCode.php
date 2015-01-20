<?php
include_once('../Config/Config.php');
if(isset($_POST['request'])&&$_POST['request']=="imagemaker"){
if(isset($_POST['imwidth'])&&isset($_POST['imheight'])){
$width = mysql_real_escape_string($_POST['imwidth']);
$height = mysql_real_escape_string($_POST['imheight']);
$bgcol = hex2rgb(mysql_real_escape_string($_POST['bgcol']));

$txt = stripslashes(mysql_real_escape_string($_POST['txt']));
$txtcol = hex2rgb(mysql_real_escape_string($_POST['txtcol']));
$fsize = mysql_real_escape_string($_POST['fsize']);
$ffamily = mysql_real_escape_string($_POST['ffamily']);
$top = mysql_real_escape_string($_POST['top']);
$left = mysql_real_escape_string($_POST['left']);
$angle = mysql_real_escape_string($_POST['angle']);

$my_img = imagecreate( $width, $height );
$background = imagecolorallocate( $my_img, $bgcol[0], $bgcol[1], $bgcol[2] );

$font = '../Fonts/'.$ffamily.'.ttf';
$text_colour = imagecolorallocate( $my_img, $txtcol[0], $txtcol[1], $txtcol[2] );


$words = explode(" ",$txt);
$wnum = count($words);
$line = '';
$text='';
for($i=0; $i<$wnum; $i++){
  $line .= $words[$i];
  $dimensions = imagettfbbox($fsize, $angle, $font, $line);
  $lineWidth = $dimensions[2] - $dimensions[0];
  if ($lineWidth > $width) {
    $text.=($text != '' ? '|'.$words[$i].' ' : $words[$i].' ');
    $line = $words[$i].' ';
  }
  else {
    $text.=$words[$i].' ';
    $line.=' ';
  }
}

$spacing=2;
$lines=explode('|',$text);
for($i=0; $i< count($lines); $i++)
    {
	$newY=$top+($i * $fsize * $spacing);
	$newL = $i*2+$left;
    if($newL==0){$newL = $left;}
	imagettftext($my_img, $fsize, $angle, $newL, $newY, $text_colour, $font,  $lines[$i]);
    }


$saveimage = mysql_real_escape_string($_POST['saveimage']);

if($saveimage=="savetrue"){
if(is_dir("../Photos/".$_SESSION['authenticateduser']."/Albums/Artistic")){
$query = mysql_query("select AlbumId from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumName='Artistic'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$albumid = $row['AlbumId'];
}
}
else{
$chars = "0123456789";
$albumid='';
$size = strlen( $chars );
for( $i = 0; $i < 5; $i++ ) {
	$albumid .= $chars[ rand( 0, $size - 1 ) ];
}
$query = mysql_query("insert into albums(UserId,AlbumId,AlbumName,AlbumDescription,AlbumLocation,AlbumTime,Date,Count) values('".$_SESSION['authenticateduser']."','$albumid','Artistic','','','',now(),'0')") or die(mysql_error());
$albumid = mysql_insert_id();
mkdir("../Photos/".$_SESSION['authenticateduser']."/Albums/Artistic",0755,true);
mkdir("../Thumbs/".$_SESSION['authenticateduser']."/Albums/Artistic",0755,true);
}

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$image_id='';
$size = strlen( $chars );
for( $j = 0; $j < 15; $j++ ) {
	$image_id .= $chars[ rand( 0, $size - 1 ) ];
}
$image_file = $image_id.'.jpg';

$query = mysql_query("select Count from albums where UserId='".$_SESSION['authenticateduser']."' and AlbumId='$albumid'") or die(mysql_error());
while($row = mysql_fetch_array($query)){
$count = $row['Count']+1;
}

$query = mysql_query("insert into photos(AlbumId,AlbumName,PhotoId,PhotoMessage,Date) values('$albumid','Artistic','$image_file','',now())") or die(mysql_error());	

$query = mysql_query("update albums SET Count='$count' where AlbumId='$albumid' and UserId='".$_SESSION['authenticateduser']."'") or die(mysql_error());

header( "Content-type: image/jpeg" );
ob_start();
imagejpeg($my_img);
$contents =  ob_get_contents();
ob_end_clean();

file_put_contents("../Photos/".$_SESSION['authenticateduser']."/Albums/Artistic/".$image_file."", $contents);
create_thumb('../Photos/'.$_SESSION['authenticateduser'].'/Albums/Artistic/', $image_file, '../Thumbs/'.$_SESSION['authenticateduser'].'/Albums/Artistic/',150);

echo 'albumid='.$albumid.'&&albumname=Artistic&&albumset=p';
}
else{
header( "Content-type: image/jpeg" );
ob_start();
imagejpeg($my_img);
$contents =  ob_get_contents();
ob_end_clean();
echo "<img src='data:image/png;base64,".base64_encode($contents)."' />";
}

imagedestroy($my_img);

}
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
function hex2rgb($hex) {
   $hex = str_replace("#", "", $hex);
      $r = hexdec(substr($hex,0,2));
      $g = hexdec(substr($hex,2,2));
      $b = hexdec(substr($hex,4,2));
      $rgb = array($r, $g, $b);
    return $rgb; // returns an array with the rgb values
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>