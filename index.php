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
            <div class="col-md-10" >
				<div class = "Home" >
					<div class="page-header">
						<h1 style="color: white;">Hey! How Are U Feeling Today?</h1>
					</div>

						<div class = "row row-eq-height">
							<form action="playlist.php" method="POST">
								<div class = " col-xs-12  col-md-6 col-lg-6">
									<div class = "thumbnail button">
										<input type="radio" id="mood" value="happy" name = "mood"/>
										<label for="happy"><img src = "images/happy.jpeg"/><br><h4>Happy</h4></label><br>
									</div>
								</div>
								<div class = " col-xs-12  col-md-6 col-lg-6">
									<div class = "thumbnail button">
										<input type="radio" id="mood" value="sad" name = "mood"/>
										<label for="sad"><img src = "images/sad.jpeg"/><br><h4>Sad</h4></label><br>
									</div>
								</div>
								<div class = " col-xs-12  col-md-6 col-lg-6">
									<div class = "thumbnail button">
										<input type="radio" id="mood" value="angry" name = "mood"/>
										<label for="angry"><img src = "images/angry.jpeg"/><br><h4>Angry</h4></label><br>
									</div>
								</div>

								<div class = " col-xs-12  col-md-6 col-lg-6">
									<div class = "thumbnail button">
										<input type="radio" id="mood" value="lonely" name = "mood"/>
										<label for="lonely"><img src = "images/lonely.jpeg"/><br><h4>Lonely</h4></label><br>
									</div>
								</div>
							

							
								<input type="submit" class = "btn3" value="submit">
							</form>
					</div>
				</div>
				
	</div>
	
	
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
	</style>
	
	
	
	
	
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