<?php
	require 'dbconnect.php';
?>

<html>
	<head>

	<!-- include our libraries and css files -->

	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/handlebars-v3.0.3.js"></script>

	<script src="js/bootstrap.min.js"></script>
	<script src="js/myscripts.js"></script>
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/gallery.css" rel="stylesheet">
	<meta charset="utf-8">
	<script>

	window.addEventListener("play", function(evt)
	{
		if(window.$_currentlyPlaying && window.$_currentlyPlaying != evt.target)
		{
			window.$_currentlyPlaying.pause();
		} 
		window.$_currentlyPlaying = evt.target;
	}, true);

	</script>
	</head>

	<body>

		<div id="container" class = "container-fluid">
			<div class="row">
				<div class="col-md-2">
					<div id="content_left">
						<nav class = "navbar navbar-default">
							<div class = "container-fluid">
								<!--collapsed nav bar-->
								<div class = "navbar-header">
									<button type ="button"
									class = "navbar-toggle collapsed"
									data-toggle = "collapse"
									data-target = "#main_navbar"
									aria-expanded = "false">open</button>
								</div>
								<ul class="nav nav-pills nav-stacked nav-pills-stacked-example" id = "main_navbar">

									
									<hr><li><a href="index.php" class = "btn1">Home</a></li></hr>
									<li></li>
									<hr><li><a href="library.php" class = "btn2">Library</a></li></hr>
									<li></li>
									<hr></hr>
								</ul>
								<div id="weather" class = "center container-fluid">
								<div id="description"></div>
								<h1 id="temp"></h1>
								</div>
							
							</div>
						</nav>
					</div>
				</div>
				<div class="col-md-10">
					<div class = "Output">
						<div class = "col-md-7">
							<h1 style="color: white;">Library</h1><hr>
							<?php
								if(isset($_POST['song_n'])){
									$song_name = $_POST['song_n'];
									echo '<h3 style="color: white;">'.$song_name.'</h3>';
									$q="select song_link from list_of_songs where `song_name`='$song_name'";
									$query_ru = mysqli_query($mycon,$q);
									$name = mysqli_fetch_assoc($query_ru);
									$song_link=$name['song_link'];
							?>
							<div class="embed-responsive embed-responsive-16by9">
								
							<!-- Output -->
							<iframe class="embed-responsive-item" width=600 height=350 src="https://www.youtube.com/embed/<?php echo $name['song_link'];?>" allowfullscreen></iframe>
							</div>
							<?php
								}else{
									echo '<h1 style="color: white;">Select a Song from Play List</h1>';
								}
							?>
						</div>
						<div class = "col-md-5" style="border: 1px black solid;position: relative;height: 100%;overflow: auto;">
						
							<!-- Right nav -->
							
							<?php
								echo '<h3 style="color: white;">PlayList<h3><hr>';
								$query="select `song_name` from `list_of_songs` order by RAND()";
								$query_run = mysqli_query($mycon,$query);
								while($rows=mysqli_fetch_assoc($query_run)){
									?>
									<form action="library.php" method="POST">
										<input type="submit" name="song_n" class="s_btn" value="<?php echo $rows['song_name']?>" style="outline: none;border: none;width: 100%;height: 8%;">
									</form>
									<hr>
									<?php
								}
							?>
						</div>
					</div>
		</div>
		
		<style>
			.s_btn:hover{
				background: cyan;
				border-radius: 40px;
				transition: 1s;
			}
		</style>
		<style>
		body
		{
			background: hsla(333, 100%, 53%, 1);

background: linear-gradient(90deg, hsla(333, 100%, 53%, 1) 0%, hsla(33, 94%, 57%, 1) 100%);

background: -moz-linear-gradient(90deg, hsla(333, 100%, 53%, 1) 0%, hsla(33, 94%, 57%, 1) 100%);

background: -webkit-linear-gradient(90deg, hsla(333, 100%, 53%, 1) 0%, hsla(33, 94%, 57%, 1) 100%);

filter: progid: DXImageTransform.Microsoft.gradient( startColorstr="#FF0F7B", endColorstr="#F89B29", GradientType=1 );
			font-family: Impact, Charcoal, sans-serif;
		}
		}
	</style>
		
		
		<script type = "text/x-handlebars-template" id = "template">
				<div class = "row row-eq-height">
					{{#each images}}
						<div class = " col-xs-12 col-md-3">
							<div class = "thumbnail">
								<iframe id = "video" src = "{{video}}"/>
								<h3>{{Song}}</h3>
							</div>
						</div>
					{{/each}}
				</div>
		</script>	
		
		
		
		
		
		
		
		
		<!-- javascript code to fill the template -->
	  <script type="text/javascript">

		// grab our template code from the DOM
		var source   = $("#template").html();

		// compile the template so we can use it
		var template = Handlebars.compile(source);

		// create some data
		var task1 = {images:
			[
				{
					src :"https://wallpapercave.com/wp/wp1859031.jpg",
					video: "https://www.youtube.com/embed/tgbNymZ7vqY",
					Song:"Samajavaragamana",
				},
				{
					src : "https://wallpapertag.com/wallpaper/full/7/f/5/838404-ms-dhoni-wallpapers-1920x1248-phone.jpg",
					video: "https://www.youtube.com/embed/tgbNymZ7vqY",
					Song:"Samajavaragamana",
				},
				{
					src :"https://wallpapercave.com/wp/wp1859061.jpg",
					video: "https://www.youtube.com/embed/tgbNymZ7vqY",
					Song:"Samajavaragamana",
				},
				{
					src :"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTea6biCYe7Ef1RxunpRilyXNGOJYU22X7mcSaZKv1ATvE8C4LL&usqp=CAU",
					video: "https://www.youtube.com/embed/tgbNymZ7vqY",
					Song:"Samajavaragamana",
				}
			]
		};

		// generate HTML from the data
		var html    = template(task1);

		// add the HTML to the content div
		$('#content').html(html);
	  </script>
	</body>
</html>