import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'WorldWide.dart';
import 'dart:core';

class LoadingScreen {

  LoadingScreen(this.url);
  final url;


   Future getData()async{
    http.Response response =await http.get(url);
    if(response.statusCode ==200){
      String data = response.body;
      var active = jsonDecode(data)["active"];
      print(data);
//      return jsonDecode(data);

    }
    else{
      print(response.statusCode);
    }
  }
}