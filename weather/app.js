var request = require('request');

function toFahrenheit(kelvin) {
    return Math.round(((kelvin - 273.15) * 1.8) + 32);
}

function printWeather(lat, lon) {
    request('http://api.openweathermap.org/data/2.5/weather?lat=' + lat + '&lon=' + lon + '&appid=f603ce81469f752223b79a82e921a40d', function (error, response, body) {
	if (!error && response.statusCode == 200) {
	    data = JSON.parse(body);
	    console.log(data.name + " - " + data.weather[0].description + ", " + toFahrenheit(data.main.temp) + " [" + toFahrenheit(data.main.temp_min) + " min, " + toFahrenheit(data.main.temp_max) + " max]");
	}
    })
}

printWeather(47.61, -122.33);
printWeather(45.52, -122.68);
