import 'package:flutter/material.dart';
import 'statuspage.dart';
import 'searchScreen.dart';
class cityWide extends StatelessWidget {

  final List countryData;

  cityWide({this.countryData});
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.redAccent,

                child: statusPage(status: "CONFORNMED", cases: 70),
                height: 100.0,

              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.green,
                child: statusPage(status: "DISCHARGED", cases: 70,),


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
                child: statusPage(status: "ACTIVE", cases: 70,),


                height: 100.0,

              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                child: statusPage(status: "DEATHS", cases: 70,),


                height: 100.0,

              ),
            )
          ],

        ),


      ],

    );
  }
}
