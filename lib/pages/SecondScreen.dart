import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_api_client.dart';
import 'package:weather_app/views/additional_info.dart';
import 'package:weather_app/views/current_weather.dart';

class SecondScreen extends StatefulWidget {
  final String city;
  SecondScreen(this.city);

  @override
  _SecondScreenState createState() => _SecondScreenState(city);
}
class _SecondScreenState extends State<SecondScreen> {
  WeatherApiClient client = WeatherApiClient();
  Weather? dataSelected;
  _SecondScreenState(city);
  String? person;
  double t=0;
  Future<Weather?> getData() async {
    dataSelected = await client.getCurrentWeather(widget.city);
    if(dataSelected?.temp != null){
      t=dataSelected!.temp!;
      if ( t >= -50 && t <= -2) {
        person="winter";
      }else if ( t > -2 && t <= 10) {
        person="canada_goose";
      }else if (t > 9 && t <= 15) {
        person="jacket";
      }else if (t > 14 && t <= 20) {
        person="long_sleeve";
      }else if (t > 20 && t <= 50) {
        person="t_shirt";
      }
    } else{
      print("Temp is null");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back", style: TextStyle(color:Color(0xffB5BACB)),),
        backgroundColor: Color(0xff605CC5),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                color: Color(0xffDFE3F1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0,),
                    currentWeather(
                        "${dataSelected!.icon}",
                        "${dataSelected!.temp?.round()}",
                        "${dataSelected!.cityName}"),
                    SizedBox(height: 10.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: additionalInformation(
                            "${dataSelected!.wind?.round()}",
                            "${dataSelected!.humidity}",
                            "${dataSelected!.feels_like?.round()}",
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Column(
                            children:[
                              SizedBox(height: 10.0,),
                              Center(
                                child: Image.asset(
                                  "assets/person/$person.png",
                                  height: 400,
                                ),
                              ),
                            ]
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return Center(child: Text('State: ${snapshot.connectionState}'));
            }
          },
        ),
      );
  }
}




