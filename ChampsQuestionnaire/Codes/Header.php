<html>
<head>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="JavaScript/jquery-1.4.2.js" type="text/javascript"></script>
<script>
function changebgcolor(x){
if(x==1){
document.getElementById("question").style.backgroundColor = "#85a950";
}
}

function retainbgcolor(x){
if(x==1){
document.getElementById("question").style.backgroundColor = "#999999";
}
}
</script>
</head>
<body>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr style="background-image:url('Images/bg.jpg');background-repeat:repeat;" height="30">
<td></td><td></td>
<td align="right"><a href="signup.php" target="_parent" style="text-decoration:none;font-size:13px;">Sign Up</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="login.php" target="_parent" style="text-decoration:none;font-size:13px;">Log In</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span style="font-size:12px;">Beta</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td width="9%">&nbsp;&nbsp;<a href="index.php" target="_parent" style="text-decoration:none;">
<img src="Images/logo.jpg" alt="ChampsQuestionnaire"></a></td>
<td width="30%"><a href="index.php" target="_parent" style="text-decoration:none;"><span style="color:#85a950;font-size:26px;">Champs</span>
<span style="color:#008aaf;font-size:28px;font-weight:500;">Questionnaire</span></td></a>
<td align="right">
<table border="0"><tr>
<td align="center"><div style="background-color:#999999;height:28px;width:140px;color:#FFFFFF;font-size:20px;cursor:pointer;" id="question" onmouseover="
javascript:changebgcolor(1);" onmouseout="javascript:retainbgcolor(1);" onclick="window.open('Home/askquestion.php','_parent');">Ask Question</div></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td align="center"></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table>
</td>
</tr>
<tr style="background-image:url('Images/bg.jpg');background-repeat:repeat;" height="1">
<td colspan="3"></td>
</tr>
</table>
</body>
</html>