<?php

include('../FacebookKit/facebook.php');

$app_id = '512711192101658';

$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
  
));

if (isset($_SESSION['fb_' . $app_id . '_code'])) {
    unset ($_SESSION['fb_' . $app_id . '_code']);
}
if (isset($_SESSION['fb_' . $app_id . '_access_token'])) {
    unset ($_SESSION['fb_' . $app_id . '_access_token']);
}
if (isset($_SESSION['fb_' . $app_id . '_user_id'])) {
    unset ($_SESSION['fb_' . $app_id . '_user_id']);
}



//echo $user = $facebook->getUser();

header('Location: ../InnerPages/PostAlbums.php?facebookpostlogout=1');


?>