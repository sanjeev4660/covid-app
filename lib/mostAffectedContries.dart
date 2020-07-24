import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MostAffected extends StatelessWidget {

  final List countryData;

  MostAffected({this.countryData});

  @override
  Widget build(BuildContext context) {

    return Container(

      child: ListView.builder(itemBuilder: (context,index){

        return Container(
          child:Row(
            children: <Widget>[
              Image.network(countryData[index]["countryInfo"]["flag"],height: 30, width: 50,),
              SizedBox(width: 25.0,),
              Text(
                countryData[index]["country"],
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 25.0,),

              Text(
               "Deaths :"+countryData[index]["deaths"].toString(),
               style: TextStyle(
                 color: Colors.redAccent
               ),
        )
            ],
          )

        );
      },
      itemCount: 150,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}


