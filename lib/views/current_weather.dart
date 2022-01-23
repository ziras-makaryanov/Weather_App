

import 'package:flutter/material.dart';

Widget currentWeather(String icon, String temp, String location){
  return Container(
    padding: EdgeInsets.only(left: 10,right: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 110,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border:Border.all(width: 0.7, color: Color(0xffB5BACB)),
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff605CC5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$temp",
                      style: TextStyle(fontWeight:FontWeight.w800,fontSize: 28,color: Colors.white),
                    ),
                    Text(
                      "°C",
                      style: TextStyle(fontWeight:FontWeight.w600,fontSize: 14,color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        SizedBox(width: 10.0,),
        Flexible(
          flex:3,
          fit: FlexFit.tight,
          child: Image.asset(
            "assets/weather_icons/$icon.png",
            height: 150,
          ),
        ),
        SizedBox(width: 10.0,),
        /*Flexible(
          flex:3,
          fit: FlexFit.tight,
          child: Text(
            "${temp} °C",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color:Color(0xff262F39),
            ),
          ),
        ),*/
      ],
    ),
  );
}