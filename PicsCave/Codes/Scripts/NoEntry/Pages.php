<?php
include('../FacebookKit/facebook.php');

$facebook = new Facebook(array(
  'appId'  => '512711192101658',
  'secret' => 'ca4679226947e1ba6606cfb231c089f5',
  
));

$user = $facebook->getUser();
$access_token = $facebook->getAccessToken();

if ($user) {
  try {

$accounts = $facebook->api("/me/accounts");

echo print_r($accounts['data']);

foreach ($accounts['data'] as $account){
$photos = $facebook->api('/'.$account['id'].'/photos');
$page_access_token = $account['access_token'];
}


    } catch (FacebookApiException $e) {
    echo $e->getMessage();
    $user = null;
  }
}

if ($user) {
 
$logoutUrl = $facebook->getLogoutUrl(array('next' => 'http://www.PicsCave.com/FacebookKit/logout.php'));
 $result = '<br/><div align="center">Note : IF you are done with importing Albums from Facebook.com, then <a href="'.$logoutUrl.'">Logout from your Facebook Account</a></div>';
} else {
  $loginUrl = $facebook->getLoginUrl(array('scope' => 'user_status,publish_stream,user_photos'));
  $result = '<a href="'.$loginUrl.'">Please Login into your Facebook Account</a>';
}

echo $result;

?>


