/*

// Code to empty all website tables

include_once('Config/Config.php');

$newquery = mysql_query("select WebsiteName from websites") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$table =  strtolower($nrow['WebsiteName']);
$sqlquery = mysql_query("truncate table $table") or die(mysql_error());
}

//

// To Upload all new logos //

include_once('Config/Config.php');

$newquery = mysql_query("select WebsiteName from websites") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$table =  strtolower($nrow['WebsiteName']);

echo $file = "http://www.eshopalert.com/Images/logos/".$table.".png";
echo '<br/>';
echo $newdir = "Websites/".$nrow['WebsiteName']."/".$table.".png";
echo '<br/>';

copy($file,$newdir);

}

//

// To delete all website images //

include_once('Config/Config.php');

$newquery = mysql_query("select WebsiteName from websites") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$table =  strtolower($nrow['WebsiteName']);

echo $file = "Websites/".$nrow['WebsiteName']."/".$table.".png";

unlink($file);

}

//

*/