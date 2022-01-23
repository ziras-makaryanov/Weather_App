import 'package:flutter/material.dart';

TextStyle titleFont = const TextStyle(fontWeight:FontWeight.w500,fontSize: 18,color: Colors.white);
TextStyle infoFont = const TextStyle(fontWeight:FontWeight.w800,fontSize: 28,color: Colors.white);
TextStyle addFont = const TextStyle(fontWeight:FontWeight.w600,fontSize: 14,color: Colors.white);

Widget additionalInformation(
    String wind,String humidity, String feelsLike){
  return Container(
    padding: EdgeInsets.all(10),
    child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
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
                        "Wind",
                        style: titleFont,
                    ),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$wind",
                          style: infoFont,
                        ),
                        Text(
                          "m/s",
                          style: addFont,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20),
            Container(
              width: 120,
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
                        "Humidity",
                        style: titleFont
                    ),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$humidity",
                          style: infoFont,
                        ),
                        Text(
                          "%",
                          style:addFont,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20),
            Container(
              width: 120,
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
                      "Feels like",
                      style: titleFont,
                    ),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$feelsLike",
                          style: infoFont,
                        ),
                        Text(
                          "°C",
                          style: addFont,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
  );
}