import 'dart:convert';

import 'package:covidapp/loadingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covidapp/statuspage.dart';
import 'loadingScreen.dart';
import 'searchScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';





class WorldWide extends StatelessWidget {

  final Map WorldData;
  WorldWide({this.WorldData});
  final Map eachCountrydata;
  WorldWide({this.eachCountrydata});
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "WorldWide",
                style: TextStyle(
                  fontSize: 30.0,


                ),

              ),
            ),
            FlatButton(
              onPressed: ()async{
                  var typedName2= await Navigator.push(
                  context, MaterialPageRoute(
                   builder: (context){
                   return searchScreen();

                   },
               ),
             );
                  print(typedName2);
             },

                child: Icon(
                  Icons.fast_forward,
                  size: 50.0,
                  color: Colors.black,
                ),

            )
          ],
        ),



        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.redAccent,

                child: statusPage(status: "CONFORNMED", cases: WorldData["cases"]),
                height: 100.0,

              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.green,
                child: statusPage(status: "DISCHARGED", cases: WorldData["recovered"],),


                height: 100.0,

              ),
            )
          ],

        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: statusPage(status: "ACTIVE", cases:  WorldData["active"],),


                height: 100.0,

              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                child: statusPage(status: "DEATHS", cases: WorldData["deaths"],),


                height: 100.0,

              ),
            )
          ],

        )



      ],
    );
  }
}


