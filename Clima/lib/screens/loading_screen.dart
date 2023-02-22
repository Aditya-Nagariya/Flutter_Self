import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';




class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b314f),
      body: Center(
         child: SpinKitSpinningLines(
           color: CupertinoColors.activeBlue,
           size: 100,
         ),//ElevatedButton(
        //   onPressed: () async {
        //     await getLocationData();
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => CityScreen()),
        //     );
        //   },
        //   child: Text('Get Location'),
        // ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init state called");
    getLocationData();
  }

  void getLocationData() async {

    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context)  {
      return LocationScreen(locationweather: weatherData,);
    }));

  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate called");
  }

  }



