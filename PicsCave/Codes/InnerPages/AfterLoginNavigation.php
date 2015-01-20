<html>
<head>

<link href="../CSS/navigationCSS.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../JavaScript/jquery-1.4.2.js"></script>
<script type="text/javascript" src="../JavaScript/jquery.easing.1.3.js"></script>
</head>
<body>

<div class="navigation" id="nav">
                <div class="item user">
                    <img src="../Images/bg_user.png" alt="" width="199" height="199" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>Account</h2>
                    <ul>
                        <li><a href="Profile.php">Profile</a></li>
						<li><a href="SecretText.php">Secret Text</a></li>
                        <li><a href="ChangeMyPassword.php">Change My Password</a></li>
                        <li><a href="DeleteMyAccount.php">Delete My Account</a></li>
						
                    </ul>
                </div>
                <div class="item home">
                    <img src="../Images/bg_home.png" alt="" width="199" height="199" class="circle"/>
                    <a href="UserHome.php" class="icon"></a>
                    <h2>Home</h2>
					</div>
                
                <div class="item camera">
                    <img src="../Images/bg_camera.png" alt="" width="199" height="199" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>Photos</h2>
                    <ul>
                        <li><a href="Albums.php">Create New Album</a></li>
                        <li><a href="ViewAllAlbums.php">View All Albums</a></li>
						<li><a href="ImportAlbums.php">Import Albums</a></li>
						<li><a href="PostAlbums.php">Post Albums</a></li>
                        </ul>
                </div>

<div class="item watermark">
                    <img src="../Images/bg_watermark.png" alt="" width="199" height="199" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>FunStuff</h2>
                    <ul>
                        <li><a href="Quotes.php">Banner Maker</a></li>
                        </ul>
                </div>
                
            </div>
        </div>
<script type="text/javascript">
	$(function() {
		$('#nav > div').hover(
		function () {
			var $this = $(this);
			$this.find('img').stop().animate({
				'width'     :'100px',
				'height'    :'100px',
				'top'       :'-25px',
				'left'      :'-25px',
				'opacity'   :'1.0'
			},500,'easeOutBack',function(){
				$(this).parent().find('ul').fadeIn(700);
			});

			$this.find('a:first,h2').addClass('active');
		},
		function () {
			var $this = $(this);
			$this.find('ul').fadeOut(500);
			$this.find('img').stop().animate({
				'width'     :'52px',
				'height'    :'52px',
				'top'       :'0px',
				'left'      :'0px',
				'opacity'   :'0.1'
			},1000,'easeOutBack');

			$this.find('a:first,h2').removeClass('active');
		}
	);
	});
</script>


</body>
</html>