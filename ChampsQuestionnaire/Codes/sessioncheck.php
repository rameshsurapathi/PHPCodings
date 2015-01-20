<?php
if(isset($_SESSION['authenticateduser'])){
header('location:http://localhost/ChampsQuestionnaire/Home/index.php');
}

?>