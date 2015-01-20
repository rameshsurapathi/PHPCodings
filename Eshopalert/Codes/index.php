<?php
session_start();
include_once('Config/Config.php');

/* Author : Surapathi Ramesh Kumar
This is the main Page. In this Page, the product is searched in the search bar.
And after the product name is entered and clicked on search, then the control performs multithreading on
both database_Search.php page and parser.php page */


//////////////////////////////////////////////////////

if($_SESSION['ip']==""){
include('IpAddress/IpAddress.php');// user ip session
}

/////////////////////////////////////////////////////////////

//ob_implicit_flush(true);

///////////////////////////// Request has been made to server from html

if($_POST['request']=="mainrequest"){

$start = microtime(true);

include_once('Constants/Constants.php');
include_once('Curl/Curl.php');
include_once('GetLink/GetLink.php');

$searchquery = trim(mysql_real_escape_string($_POST['searchquery']));

//////////////// Bot Identification ////////////////////////////////////////
include_once('RobotCheck/RobotCheck.php'); /* To check whether a robot or human */

$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$txnid='';
$size = strlen( $chars );
for( $i = 0; $i < 10; $i++ ) {
	$txnid .= $chars[ rand( 0, $size - 1 ) ];
}
$insertquery = mysql_query("insert into transactions(txnid,ipaddress,query,time) values('$txnid','".$_SESSION['ip']."','$searchquery',now())") or die(mysql_error()); 

//////////////////////////////////////////////////////////////////////////////

$query = preg_replace('# #', ',',$searchquery);

$extra_link = getlink($query);

/* Code to check whether the entered query is a keyword or not.
If its akeyword, then below code is executed */

$lextra_link = strtolower($extra_link); // To change into lower String

$kquery = mysql_query("select Id from Keywords where Keyword='$lextra_link' and Status='1'") or die(mysql_error());
if(mysql_num_rows($kquery)>0){

$query = mysql_query("select ProductId,ProductName,Data,ImageUrl from products where ProductName like '$lextra_link%' OR ProductName='$lextra_link' OR ProductName='$lextra_link%'  order by Views DESC") or die(mysql_error());

echo $time = '<span style="font-size:14px;color:blue;">&nbsp;About '.(mysql_num_rows($query)-1).' results in '.number_format((microtime(true)-$start),2).' seconds</span><br/><br/>';

if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$nquery = preg_replace ( '#([+])#', ' ', trim($row['ProductName']));
$productid = $row['ProductId'];
$newquery = mysql_query("Select BestPrice,Stores from bestprice where ProductId = '$productid'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$bp = $nrow['BestPrice'];
$st = $nrow['Stores'];
} 

if($bp>0){

echo '<table border="0" width="16%" style="float:left;"><tr><td width="16%" style="border:0px solid grey;"><a href="http://www.eShopAlert.com/index.php?searchquery='.$row['ProductName'].'" style="cursor:pointer;color:black;text-decoration: none;font-size:12px;">
<img src="'.$row['ImageUrl'].'" width="100px" height="100px">
<p align="center" style="color:blue;font-weight:500;">
'.$row['Data'].'</p>
<p align="center" style="color:#CC3366;font-weight:500;">Best Alert: <img src="http://www.eShopAlert.com/Images/rupee.jpg"> '.number_format($bp).'</p>
<p align="center" style="color:green;font-weight:500;">Available at '.$st.' Stores</p>
</a>
</td>
</tr></table>';

} // end of if statement

} // end of while statement

} // end of if statement

exit();

} // END OF IF statement of keywords


/* 
If its not a keyword, then the product is entered into databse.
Else, All the products containing the keyword are shown.*/

/* Insert into main product table if product is not present */

else {

$pquery = mysql_query("select ProductId,ExpiryTime from products where ProductName='$extra_link'") or die(mysql_error());
if(mysql_num_rows($pquery)>0){}
else{
$sqlquery = mysql_query("Insert into products(ProductName,Views,ExpiryTime,Time) values('$extra_link','1',now(),now())") or die(mysql_error());
}
/////////////////////////////////////////////Trends Code/////

if($_SESSION['usertime']==""){
$_SESSION['usertime'] = strtotime("now"); // user time session
$timestatus="insert"; // insert the trends
}
elseif($_SESSION['usertime']>0){ // this code is used to get the time difference to store the trends
$presenttime = strtotime("now");
$timediff = $presenttime-$_SESSION['usertime'];

if($timediff>300){
$oldusertime = $_SESSION['usertime'];
$_SESSION['usertime'] = strtotime("now"); // user time session
$timestatus="insert"; // insert the trends
} // for every 5 mins, the session is restarted....End of if
else{
$timestatus="update"; // update the trends
}// end of else
}
////////////////////////////////////////////////////////////

//the main process starts

$list[0] = 'http://www.eShopAlert.com/Database_Search/Database_Search.php?query='.$query.'';//Database Search
$list[1] = 'http://www.eShopAlert.com/ImageScrapper/ImageScrapper.php?query='.$query.'';// Image Parser
$list[2] = 'http://www.eShopAlert.com/Parser/Parser.php?query='.$query.'';//Website Parser
$list[3] = 'http://www.eShopAlert.com/Suggestions/Suggestions.php?query='.$query.'';//Suggestions
$list[4] = 'http://www.eShopAlert.com/Trends/Trends.php?query='.$query.'&&usertime='.$_SESSION['usertime'].'&&ip='.$_SESSION['ip'].'&&timestatus='.$timestatus.'&&oldusertime='.$oldusertime.'';//Trends

/* Performing Multithreading */

/// Perform everything normally

if($flag==0){

if(mysql_num_rows($pquery)>0){
while($row = mysql_fetch_array($pquery)){
$expirytime = strtotime($row['ExpiryTime']);
}
$todaysdate = strtotime("now");
$diff = abs($expirytime - $todaysdate);
if($diff<3000){  // Time limit of 3000 secs, should be always less
$flagstart=0;
$flagend = 0;
for($i=$flagstart;$i<=$flagend;$i++){
$curls[$i] = curl($curlHandle,$list[$i]);
} // end of for loop
$curls[$i] = curl($curlHandle,$list[$i+2]);
$curls[$i+1] = curl($curlHandle,$list[$i+3]);
$flagend = $i+1;
}

else{
$flagstart=1;
$flagend = 2;
for($i=$flagstart;$i<=$flagend;$i++){
$curls[$i] = curl($curlHandle,$list[$i]);
} // end of for loop
$curls[$i] = curl($curlHandle,$list[$i]);
$curls[$i+1] = curl($curlHandle,$list[$i+1]);
$flagend = $i+1;
}

}// end of if 

else{
$flagstart=1;
$flagend = 2;
for($i=$flagstart;$i<=$flagend;$i++){
$curls[$i] = curl($curlHandle,$list[$i]);
} // end of for loop
$curls[$i] = curl($curlHandle,$list[$i]);
$curls[$i+1] = curl($curlHandle,$list[$i+1]);
$flagend = $i+1;
} // end of else

}// end of if that is flag=0

/////////////////////////////////////////////////////////////

/// Stop Parsing

else if($flag==1){
if(mysql_num_rows($pquery)>0){
$flagstart=0;
$flagend = 0;
for($i=$flagstart;$i<=$flagend;$i++){
$curls[$i] = curl($curlHandle,$list[$i]);
} // end of for loop
$curls[$i] = curl($curlHandle,$list[$i+2]);
$curls[$i+1] = curl($curlHandle,$list[$i+3]);
$flagend = $i+1;
} // hits the database, so we can stop parser , end of if statement

else{
$flagstart=1;
$flagend = 2;
for($i=$flagstart;$i<=$flagend;$i++){
$curls[$i] = curl($curlHandle,$list[$i]);
} // end of for loop
$curls[$i] = curl($curlHandle,$list[$i+1]);
$curls[$i+1] = curl($curlHandle,$list[$i+2]);
$flagend = $i+1;
} // end of else statement

} // end of else if 


////////////////////////////////////////////////////////////////

ExecHandle($curlHandle);


/////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////

// Get the Best Price
include_once('BestPrice/BestPrice.php');


////////////////////////////////////////////////////////

/// Output database results if product is present, otherwise display parser results

if(mysql_num_rows($pquery)>0&&$diff<3000){

$query = mysql_query("select ProductId from products where ProductName='$extra_link'") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$productid = $row['ProductId'];
$newquery = mysql_query("Select BestPrice,Stores from bestprice where ProductId = '$productid'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$bp = $nrow['BestPrice'];
$st = $nrow['Stores'];
}
}
}

if(isset($_SESSION['time'])&&$_SESSION['time']!=""){
echo $time = '<span style="font-size:14px;color:blue;">&nbsp;About '.$st.' Stores in '.$_SESSION['time'].' seconds</span>';
unset($_SESSION['time']);
}
else{
echo $time = '<span style="font-size:14px;color:blue;">&nbsp;About '.$st.' Stores in '.number_format((microtime(true)-$start),2).' seconds</span>';
}
echo curl_multi_getcontent ($curls[0]);
echo curl_multi_getcontent ($curls[1]);
echo curl_multi_getcontent ($curls[2]);
}
else{
//echo curl_multi_getcontent ($curls[1]);
//echo curl_multi_getcontent ($curls[2]);
$_SESSION['time'] = number_format((microtime(true)-$start),2);
echo '<script>$("#dummydiv").show();
window.location.href="http://www.eShopAlert.com/index.php?searchquery='.$searchquery.'&&filter=1";</script>';
}


for ($i=$flagstart;$i<=$flagend; $i++){//remove the handles
curl_multi_remove_handle($curlHandle,$curls[$i]);
}
curl_multi_close($curlHandle);
exit();

} // End of ELSE statement of Keywords

} // End of Main Function
?>





<html>
<head>
<link rel="shortcut icon" href="Images/favicon.jpg" type="image/jpeg">

<title style="font-family: 'Courier New', Courier, monospace;">Welcome to EShopAlert.com</title>

<!-- Javascript-->
<script src="Jquery-1.4.2/Jquery-1.4.2.js"></script>

<!-----------------------This Javascript Function is for Temporary Main Login Page Only------------------------------>

<script>
$(document).ready(function() {

var alertkey = "<?php echo $_GET['searchquery'];?>";
if(alertkey!=""){$("#alerts").hide();$("#dummydiv").show();}

$("*").click(function(){
  $("#autosuggestions").hide();
});

var login = "<?php echo $_SESSION['login']; ?>";
if(login==1){
}
else{
//window.parent.location="http://www.eShopAlert.com/MainLogin.php";
}
});


<!------------------------------------------------------------------------------->

function queryrequest(){
$("#autosuggestions").hide();
var searchquery = $("#searchquery").val();
var querylength = searchquery.length;
if(querylength>2){
var filter = "<?php echo $_GET['filter'];?>";
var url = "index.php";
$("#alerts").hide();
$("#dummydiv").hide();
if(filter==1){
$("#results").html('<div align="center" style="width:100%;height:330px;"><b>Loading the Results</b>&nbsp;<img src="Images/loader2.gif" width="50%" height="25px;"></div>').show();
}else{
$("#results").html('<div align="center" style="width:100%;height:330px;"><b>Fetching the Results</b>&nbsp;<img src="Images/loader1.gif" width="50%" height="25px;"></div>').show();
}
$.post(url,{request:"mainrequest",searchquery:searchquery},function(data){
if(data.length==16388){
$("#results").html('<p align="center" style="font-size:24px;color:green;">No Results Found</p><div style="height:270px;"></div>').show();
}
else{
$("#results").html(data).show();
}
});
}
else{
$("#alerts").html('<p align="center" style="font-size:24px;color:green;">No Results Found</p>').show();
}
}


<!------------------------------------------------------------------------------->


function alertwindow(){
var key1 = document.getElementById("searchquery").value;
if(key1!=""){
window.location.href="http://www.eShopAlert.com/index.php?searchquery="+key1;
}
}


<!------------------------------------------------------------------------------->


function showsuggestions(){
var key = document.getElementById("searchquery").value;
if(key!=""&&key.length>3){
var url = "AutoSuggestions/AutoSuggestions.php";
$.post(url,{key:key},function(data){
if(data.length>11){
document.getElementById("autosuggestions").style.display = "block";
$("#autosuggestions").html(data).show();
}
else{
document.getElementById("autosuggestions").style.display = "none";
}
});
}
else{
document.getElementById("autosuggestions").style.display = "none";
}
}

<!------------------------------------------------------------------------------->

function FormSubmit(){
var formkey = "<?php echo $_GET['searchquery'];?>";
if(formkey!=""){
var Form = document.forms.MyForm;
Form.submit();
}
}

<!------------------------------------------------------------------------------->

function changecolor(x){
if(x==1){
document.getElementById("alertme").style.backgroundColor = "white";
}
else if(x==2){
document.getElementById("luckyalert").style.backgroundColor = "white";
}
}

<!------------------------------------------------------------------------------->

function retaincolor(x){
if(x==1){
document.getElementById("alertme").style.backgroundColor = "#E4E4E4";
}
else if(x==2){
document.getElementById("luckyalert").style.backgroundColor = "#E4E4E4";
}
}
</script>

<!------------------------------------------------------------------------------->

<!-- Javascript-->

<style>

#header {
    background: linear-gradient(rgb(255, 255, 255), rgb(255, 255, 255)) repeat scroll 0% 0% transparent;
    border-bottom: 1px solid rgb(255, 255, 255);
    box-shadow: 0px 1px 0px rgba(255, 255, 255, 0.4), 0px 0px 10px rgba(0, 0, 0, 0.1);
	height:170px;
}

ul li {
    list-style:none;
    margin: 0px;
    padding: 6px;
    border-bottom:1px dotted #666;
    cursor: pointer;
background-color: #ffffff;
}
ul {
    font-family:Arial, Helvetica, sans-serif;
    color:#000;
    padding:0;
    margin:0;
}
ul li:hover {
    background-color: #E4E4E4;
    color:#000;
}

#autosuggestions{
height:200px; width:397px; background-color: #FFFFFF;display:none; position:absolute;top:170px;left:29.5%; border:thin; border-color:#333333; border-style:solid;overflow:auto;
}
</style>


<!--[if IE]>
	<style type="text/css">
	#autosuggestions{
height:200px; width:399px; background-color: #FFFFFF;display:none; position:absolute;top:176px;left:21.2%; border: 1px solid grey;overflow:auto;
}
</style>
<![endif]-->

</head>
<body onLoad="javascript:FormSubmit();">

<!--- Header Section------------------------->
<div style="width:100%; height:4%; background-color:#ffffff; color:#000000;">
<div align="right" style="font-size: 16px;">Beta.&nbsp;&nbsp;&nbsp;</div>
</div>

<div id="header">
<br/>
<a style="color:#CC3366; font-size:24px; font-family: 'Courier New', Courier, monospace; font-weight:500; cursor:pointer;text-decoration: none;" href="http://www.eShopAlert.com">&nbsp;EShopAlert</a>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span style="color: #333333;font-family: 'Courier New', Courier, monospace;">Get the Best Alert to Save your money</span>
<br/><br/><br/>
<form action="javascript:queryrequest();" method="post" name="MyForm">
<table border="0" align="center">
<tr>
<td valign="middle"><label style="font-size:18px; font-weight:500;">Search</label></td>
<td>&nbsp;&nbsp;</td>
<td><input type="text" style="width:400; height:30" name="searchquery" id="searchquery"  onKeyup="javascript:showsuggestions();"  value="<?php if($_GET['searchquery']){echo $_GET['searchquery'];} ?>"/>
</td>
<td><input type="button" name="alertme" id="alertme" value="Alert Me" onClick="javascript:alertwindow();" onMouseOver="changecolor(1);" onMouseOut="retaincolor(1);" style="height:30; cursor:pointer; background-color: #E4E4E4 ;color:#000000; border: thin; border-color: #CCCCCC; border-style:solid;" />
&nbsp;
<!--
<input type="button" name="luckyalert" id="luckyalert" value="I'm Feeling Lucky" onMouseOver="changecolor(2);" onMouseOut="retaincolor(2);" style="height:30;background-color: #E4E4E4 ;cursor:pointer; color:#000000;border: thin; border-color: #CCCCCC; border-style:solid;" />
-->
</td>
</tr>
</table>
</form>
</div>
<br/>
<!---------------------------------------------------->

<!--- Auto Suggestions Section------------------------->
<div id="autosuggestions">
</div>
<!---------------------------------------------------->

<!--- Advertisements Section------------------------->
<div id="alerts" style="height:52%;font-size:18px;font-family: 'Courier New', Courier, monospace;">
<div id="textmatter" style="font-size:12px;">
For better results,Try to enter complete and exact product name.<br/><br/>
EShopAlert gives you the most recent updated price of the product from all websites.</br></br>
</div>
<div align="center"><b>Best Alerts</b></div>
<br/><br/>
<?php
$query = mysql_query("select ProductId,ProductName,Data,ImageUrl from products order by Views DESC limit 50") or die(mysql_error());
if(mysql_num_rows($query)>0){
while($row = mysql_fetch_array($query)){
$newquery = mysql_query("Select BestPrice,Stores from bestprice where ProductId = '".$row['ProductId']."'") or die(mysql_error());
while($nrow = mysql_fetch_array($newquery)){
$bp = $nrow['BestPrice'];
$st = $nrow['Stores'];
}
if($bp>0&&$row['ImageUrl']!=""){
$extra_link1 = str_replace("+"," ",trim($row['ProductName']));
if(strlen($extra_link1)>20){$extra_link = substr($extra_link1,0,18).'..';}
else{$extra_link = $extra_link1;}
echo '<table border="0" width="16%" style="float:left;">
<tr>
<td width="16%" style="border:0px solid grey;"><a href="http://www.eShopAlert.com/index.php?searchquery='.$row['ProductName'].'" style="cursor:pointer;color:black;text-decoration: none;font-size:12px;">
<img src="'.$row['ImageUrl'].'" width="100px" height="100px" title="'.$extra_link1.'">
<p align="center" style="color:blue;font-weight:500;">
'.$extra_link.'</p>
<p align="center" style="color:#CC3366;font-weight:500;">Best Alert: <img src="http://www.eShopAlert.com/Images/rupee.jpg"> '.number_format($bp).'</p>
<p align="center" style="color:green;font-weight:500;">Available at <br/>'.$st.' Stores</p>
</a>
</td></tr></table>';
}
}
}
?>
</div>
<!---------------------------------------------------->

<!--- Dummy Div------------------------->
<div id="dummydiv" style="height:52%;display:none;">
<div align="center"></div>
</div>
<!---------------------------------------------------->

<!--- Results Section--------------------------------->
<div id="results">
</div>
<br/><br/>
<!---------------------------------------------------->

<hr style="height: 2px; border: none; background: #ada95b; width:100%;float:left;"/>

<div align="center" style="float:left;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Error.php" style="font-size:13px;color:red;text-decoration:none;font-family: 'Courier New', Courier, monospace;">Report an Error</a>
&nbsp;&nbsp;&nbsp;
<a href="Feedback.php" style="font-size:13px;color:green;text-decoration:none;font-family: 'Courier New', Courier, monospace;">Feedback</a>
&nbsp;&nbsp;&nbsp;
<a href="AddWebsite.php" style="font-size:13px;text-decoration:none;font-family: 'Courier New', Courier, monospace;">Add your Website</a>
&nbsp;&nbsp;&nbsp;
<span style="font-size:12px;font-family: 'Courier New', Courier, monospace;">Copyright @ EShopAlert.com, All Rights Reserved 2013.</span>
<br/><br/>
</div>
</body>
</html>
