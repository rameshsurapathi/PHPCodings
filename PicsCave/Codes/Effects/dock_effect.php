<html>
	<head>
		
		<script type="text/javascript" src="JavaScript/jquery-1.4.2.js"></script>
		<script type="text/javascript" src="JavaScript/icon_dock.js"></script>
	</head>
	<body>
		<div id="Bar">
	<a href="http://www.facebook.com" target="_blank" name="Facebook" title="Facebook">
	<img src="Images/Footer/Facebook-icon_30.png" alt="Campana_alt" border="0" />
	</a>
	<a href="http://www.twitter.com" target="_blank" name="Twitter" title="Twitter">
		<img src="Images/Footer/twitter_30.png" alt="Campana_alt" border="0" />
	</a>
	<a href="http://www.linkedin.com" target="_blank" name="Linkedin" title="Linkedin">
		<img src="Images/Footer/Linkedin_30.png" alt="Campana_alt" border="0" />
	</a>
	</div>
	<script type="text/javascript">
	var confObject = {
		iconMinSide : 30,
		iconMaxSide : 40,
		distAttDock : 100,
		coefAttDock : 3,	
		veloOutDock : 500,
		valign: 'middle'
	}
	jQuery(function() {
 		jQuery("#Bar").addDockEffect(confObject);
	});
</script>
	</body>
<html>