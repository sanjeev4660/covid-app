import 'dart:convert';
import 'dart:ui';

import 'package:covidapp/WorldWide.dart';
import 'package:covidapp/mostAffectedContries.dart';
import 'package:flutter/material.dart';
import 'loadingScreen.dart';
import 'searchScreen.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map WorldData;
  fetchWorldData() async{
    http.Response response =await http.get("https://corona.lmao.ninja/v2/all");
      WorldData=jsonDecode(response.body);

  }
  List countryData;
  fetchcountryData () async{
    http.Response response =await http.get("https://corona.lmao.ninja/v2/countries");
    countryData=jsonDecode(response.body);

  }
  Map eachCountrydata;
  fetcheachCountrydata() async{
    http.Response response=await http.get("https://api.covid19api.com/live/country/south-africa");
  }

  @override
  void initState() {
    fetchWorldData();
    fetchcountryData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "COVID19 Tracker",
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            WorldData==null?CircularProgressIndicator():WorldWide(WorldData: WorldData,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Country wide deaths",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          countryData==null?Container(): MostAffected(countryData: countryData,),
          ],
        ),
      )
    );
  }
}