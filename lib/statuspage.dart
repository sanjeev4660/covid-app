import 'package:covidapp/constants.dart';
import 'package:flutter/material.dart';

class statusPage extends StatelessWidget {
  statusPage({this.status , this.cases});
  final String status;
  final int cases;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          status,
          style: ktextiStyle,
        ),
        SizedBox(
          height: 10.0,
        ),

        Text(
          cases.toString(),
          style: ktextiStyle,
        )


      ],
    );
  }
}
