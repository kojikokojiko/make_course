import 'package:flutter/material.dart';
import 'package:make_course/model/course_data.dart';
import 'package:provider/provider.dart';
import "screen/frontpage.dart";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CourseData>(
      create: (context)=>CourseData(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: FrontPage(),
      ),
    );
  }
}
