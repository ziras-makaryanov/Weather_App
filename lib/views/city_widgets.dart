import 'package:flutter/material.dart';

  Widget cityWidget(String icon, String temp,String tempMax,String tempMin, String location,String primary,String description){
    return  Container(
          padding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$location",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    "$primary",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffB5BACB),
                    ),
                  ),
                  Text(
                    "[ $description ]",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color:  Color(0xffB5BACB),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/weather_icons/$icon.png",
                        height: 44,
                      ),
                      SizedBox(width: 20.0,),
                      Text(
                        "$temp°",
                        style: TextStyle(
                          fontSize: 42.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.0,),
                  Text(
                    "max:$tempMax° , min:$tempMin°",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffB5BACB),
                    ),
                  ),
                ],
              ),
            ],
          )  ,
    );
  }
