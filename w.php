if($weather=='Clear sky'){
	$weather='sunny'
}else if($weather=='Scattered clouds'||$weather=='Broken clouds'||$weather=='Few clouds'||$weather=='Overcast clouds'){
	$weather='windy';
}else if($weather=='Light rain'||$weather=='Moderate rain'||$weather=='Shower rain'||$weather=='Light intensity shower rain'||$weather=='Light intensity drizzle'||$weather=='Thunderstorm'||$weather=='Heavy intensity rain'){
	$weather='rainy';
}else if($weather=='fog'||$weather=='mist'||$weather=='haze'){
	$weather='cold';
}
	

Sunny:

clear sky

clouds:

scattered clouds
broken clouds
few clouds
overcast clouds

rain:

light rain
moderate rain
shower rain
light intensity shower rain
light intensity drizzle
thunderstorm
heavy intensity rain

Cold:

fog
mist
haze