import "package:flutter/material.dart";
import "package:make_course/screen/firstpointpage.dart";
import 'package:provider/provider.dart';
import 'package:make_course/model/course_data.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class DownWind extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final CourseData data = Provider.of<CourseData>(context);
    double _nextlat=data.calc()[0];
    double _nextlong=data.calc()[1];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("下マークを設置"),
        backgroundColor: Colors.blue,
      ),

      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "緯度 $_nextlat",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    "経度 $_nextlong",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),

        ),
    ),
      ),);
  }
}
