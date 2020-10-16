const key = "40bab6a7a8d0cdff8dfcb18064563cc3";


function weatherBallon( lat,lon ) {
	fetch('http://api.openweathermap.org/data/2.5/weather?lat=' + lat +'&lon='+ lon + '&appid=' + key)  
	.then(function(resp) { return resp.json() }) // Convert data to json
	.then(function(data) {
		drawWeather(data);
	})
	.catch(function() {
		// catch any errors
	});
}
function drawWeather( d ) {
  var celcius = Math.round(parseFloat(d.main.temp)-273.15);
	var fahrenheit = Math.round(((parseFloat(d.main.temp)-273.15)*1.8)+32);
  var description = d.weather[0].description; 
  description = description.charAt(0).toUpperCase() + description.substr(1).toLowerCase();
	
	document.getElementById('description').innerHTML = description;
	document.getElementById('temp').innerHTML = celcius + '&deg;';
	document.getElementById('location').innerHTML = d.name;
  
}

var x = document.getElementById("demo");

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
	
  var Latitude = position.coords.latitude;
  var Longitude = position.coords.longitude;
  var appid = "40bab6a7a8d0cdff8dfcb18064563cc3";
  weatherBallon( Latitude,Longitude);


}
function mood(clicked){
	current_mood = clicked;
	console.log(current_mood);
}
function fetchVideo() {
  let parent = event.target.parentElement;
  let video = parent.dataset.video;
  let iframe = `<iframe width="560" height="315" src="${video}" frameborder="0" allowfullscreen allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe>`;
  let player = event.target.nextElementSibling;
  player.insertAdjacentHTML('beforeend', iframe);
  event.target.classList.add("hidden");
}
window.onload = function() {
	getLocation();
}