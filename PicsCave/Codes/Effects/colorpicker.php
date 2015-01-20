<!DOCTYPE HTML>
<html>
	<head>
			
		<link rel="stylesheet" href="../Effects/mooRainbow/mooRainbow.css" type="text/css" />
		
		<script src="https://ajax.googleapis.com/ajax/libs/mootools/1.3.0/mootools-yui-compressed.js" type="text/javascript"></script>
		<script src="../Effects/mooRainbow/mootools-more.js" type="text/javascript"></script>
		<script src="../Effects/mooRainbow/mooRainbow1.js" type="text/javascript"></script>
		
		
		
	</head>
	<body>
	
	
		
			<input type="text" name="txtcol" id="txtcol" size="30" style="height:30px;" />
		
		<script type="text/javascript">
			var r = new MooRainbow('txtcol', {
					startColor: [255, 255, 255],
					imgPath: '../Effects/mooRainbow/images/',
					onChange: function(color) {
						this.element.value = color.hex;
						
					}
				});
		</script>
	
	</body>
</html>