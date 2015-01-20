<html>
<head>
<script>
function adjustheight(){
var height1 = $(window).height()-70;
$('#footer').css({ 
    position: "absolute",
    top: height1, left: 0
}).appendTo('body');
}
</script>
</head>
<body onload="javascript:adjustheight();">

<table border="0" width="100%">
  <tr>
    <td width="50%">&nbsp; Copyright © PicsCave.com, All Rights Reserved 2013.
	&nbsp;&nbsp;
	<a href="FeedbackForm.php">Feedback</a>
	</td>
    <td width="50%" align="center">&nbsp; </td>
  </tr>
</table>

</body>
</html>