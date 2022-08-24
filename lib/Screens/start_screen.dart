import 'package:flutter/material.dart';
import 'package:clima/Services/weathering.dart';
import 'package:clima/Screens/location_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9bcdce),
      body: Center(child: Column(children: [

        SizedBox(height: 120,),

        Image.asset("images/main.jpg"),

        SizedBox(height: 120,),
        Container(
          height: 80,
          width: 280,
          child: ElevatedButton(
            onPressed: () async{
              var info = await getWeatherStatus();
              Navigator.push(context,MaterialPageRoute(builder: (context){return LocationScreen(locationWeather: info,);
              }));},

            child: Text("Start" , style: TextStyle(fontSize: 40),) ,


            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            ),

          ),
        )

      ],),),
    );
  }

}