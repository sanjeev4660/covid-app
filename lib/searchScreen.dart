import 'package:covidapp/WorldWide.dart';
import 'package:covidapp/cityWide.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class searchScreen extends StatefulWidget {
  @override
  _searchScreenState createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  @override

  Widget build(BuildContext context) {
    String cityName;
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      body: Container(


        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);

                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),

                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.location_city,
                      color: Colors.white,
                    ),
                    hintText: "Enter city name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none
                    ),
                  ),
                  onChanged: (value){
                     cityName=value;
                  },
                ),
              ),
              FlatButton(
                onPressed: () {
                    Navigator.pop(context, WorldWide());
                },
                child: Text(
                  'Get COVID Data',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    backgroundColor: Colors.black87,
                    fontSize: 20.0,
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
