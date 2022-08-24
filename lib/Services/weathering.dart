import 'dart:ffi';

import 'package:clima/Services/location.dart';

Future getWeatherStatus() async{

  var info = await weatherData();
  int temp = info[0].toInt();
  int condition = info[1].toInt();
  String city = info[2];

  if(condition < 300 ){
    condition = 1;
  }
  else if(condition < 500 ){
    condition = 2;
  }
  else if(condition < 600 ){
    condition = 3;
  }
  else if(condition < 800 ){
    condition = 4;
  }
  else if(condition == 800 ){
    condition = 5 ;
  }
  else if(condition > 800 ){
    condition = 6 ;
  }

  return [temp , condition , city];

}