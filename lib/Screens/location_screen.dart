import 'package:flutter/material.dart';
import 'package:clima/Services/weathering.dart';







class LocationScreen extends StatefulWidget {
  
  
  LocationScreen({this.locationWeather});
  final locationWeather;

  @override
  _LocationScreen createState() => _LocationScreen();
}










class _LocationScreen extends State<LocationScreen> {

  var info;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    info = widget.locationWeather;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9bcdce),

      body: Center(

        child: Column(

          children: [
            SizedBox(height: 90,),
            Image.asset("images/${info[1]}.jpg"),
            SizedBox(height: 30,),
            Center(child: Text("${info[2]}",style: TextStyle(fontSize: 70 , color: Colors.orange),),),
            SizedBox(height: 30,),
            Text("${info[0]}°",style: TextStyle(fontSize: 100 , color: Colors.orange),),

          ],
        ),
      ),

    );

  }

}