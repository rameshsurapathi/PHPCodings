<?php
$db_host = "localhost";
$db_username = "picscave_picsca"; 
$db_pass = "picscave_picsca"; 
$db_name = "picscave_picscavedb";

mysql_connect("$db_host","$db_username","$db_pass") or die ("could not connect to mysql");
mysql_select_db("$db_name") or die ("no database");             
?>
