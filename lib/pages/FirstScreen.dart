import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_api_client.dart';
import 'package:weather_app/views/city_widgets.dart';
import 'package:weather_app/pages/SecondScreen.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {

  WeatherApiClient client = WeatherApiClient();
  Weather? dataFirst,dataSecond,dataThird,dataSelected;
  var arr=["California","Bishkek","Abuja"];
  Future<Weather?> getData() async {
    dataFirst = await client.getCurrentWeather(arr[0]);
    dataSecond = await client.getCurrentWeather(arr[1]);
    dataThird = await client.getCurrentWeather(arr[2]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Icon(Icons.menu_rounded,size:32),
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom:10,left: 35),
                  child: Text(
                    "Your are here",
                    style: TextStyle(
                      color:Color(0xff454294),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(
          primary: Color(0xff605CC5),
          side: BorderSide(width: 0.7, color: Colors.black87),
          shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
          ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen("California")),
            );
          },
          child:cityWidget(
                    "${dataFirst!.icon}",
                    "${dataFirst!.temp?.round()}",
                    "${dataFirst!.temp_max?.round()}",
                    "${dataFirst!.temp_min?.round()}",
                    "${dataFirst!.cityName}",
                    "${dataFirst!.primary}",
                    "${dataFirst!.description}"
                ),),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom:10,left: 35),
                  child: Text(
                    "You friends location",
                    style: TextStyle(
                      color: Color(0xff454294),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
          Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(
          primary:Color(0xff605CC5),
          side: BorderSide(width: 0.7, color: Colors.black87),
          shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
          ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen("Bishkek")));
          },
          child:cityWidget(
                    "${dataSecond!.icon}",
                    "${dataSecond!.temp?.round()}",
                    "${dataSecond!.temp_max?.round()}",
                    "${dataSecond!.temp_min?.round()}",
                    "${dataSecond!.cityName}",
                    "${dataSecond!.primary}",
                    "${dataSecond!.description}"
                ),),),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff605CC5),
                      side: BorderSide(width: 0.7, color: Colors.black87),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen("Abuja")),
                      );
                      },
                    child:cityWidget(
                        "${dataThird!.icon}",
                        "${dataThird!.temp?.round()}",
                        "${dataThird!.temp_max?.round()}",
                        "${dataThird!.temp_min?.round()}",
                        "${dataThird!.cityName}",
                        "${dataThird!.primary}",
                        "${dataThird!.description}"
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      child: Icon(Icons.add,size: 32,),
                      backgroundColor: Color(0xff605CC5),
                      foregroundColor: Colors.white,
                      onPressed: () => {

                      },
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ],
            );
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        }
      ),
    );
  }
}
