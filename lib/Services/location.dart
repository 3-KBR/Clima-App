import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' ;
import 'package:http2/http2.dart';

// method to get the Latitude and Longitude of my city
Future myLocation_long() async{
  Position myPosition =  await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  return myPosition.longitude;
}

// method to get the Latitude and Longitude of my city
Future myLocation_lat() async{
  Position myPosition =  await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  return myPosition.latitude;
}



// get json weather data
Future jsonData() async{
  var uri = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=${await myLocation_lat()}&lon=${await myLocation_long()}&appid=707c8038a6ac8d79bd3d922750f5dfbf&units=metric');
  Response response = await get(uri);
  return response.body;

}



// get the temp and weather and city
Future weatherData() async{

  var finalInfo = jsonDecode(await jsonData());

  var temp = finalInfo['main']['temp'];

  var weather = finalInfo['weather'][0]['id'];

  var city = finalInfo['name'];

  return[temp , weather , city];

}

