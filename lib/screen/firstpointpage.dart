import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:make_course/model/course_data.dart';
import ""
class FirstPointPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CourseData data=Provider.of<CourseData>(context,listen: false);
    print("dfd");
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(

          ),
        ));
  }
}
