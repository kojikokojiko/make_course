import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:make_course/model/course_data.dart';
import "package:provider/provider.dart";
import 'package:make_course/model/course_data.dart';
import "package:make_course/screen/frontpage.dart";
import 'firstpointpage.dart';

class Nextpage extends StatefulWidget {
  @override
  _NextpageState createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  double? winddirect;
  double? courselength;
  @override
  Widget build(BuildContext context) {
    final CourseData data = Provider.of<CourseData>(context, listen: false);


    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    // validator: (value){
                    //   return value!.isEmpty ? "入力して下さい" :null;
                    // },
                    // validator: DescriptionValidator.validate,

                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "距離(m)を入力",
                      prefixIcon: Icon(Icons.bar_chart),
                    ),
                    onChanged: (value1) {
                      // print(value1);

                      courselength = double.parse(value1);
                      print(winddirect);
                      print(courselength);
                      // print(doublecheck);
                      print(winddirect == null);
                      print(courselength == null);
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      // contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      hintText: "風向を入力",
                      prefixIcon: Icon(Icons.air),
                      // enabledBorder: const OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   // color: Colors.blue
                      // )
                      // )
                    ),
                    onChanged: (value2) {
                      winddirect = double.parse(value2);
                      print(winddirect);
                      print(courselength);
                      // print(doublecheck);
                      print(winddirect == null);
                      print(courselength == null);
                    },
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    child: const Text(
                      "コースを作る",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      primary: Colors.blue,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      if ((courselength == null) || (winddirect == null)) {
                        print("nulllll");
                        showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: Text("Alert"),
                                content: Text("値を入力してください"),
                              );
                            });
                      } else {
                        print("dfdf");
                        print(courselength);
                        print(winddirect);
                        print("dfdf");
                        data.set_wind_direct(winddirect);
                        data.set_coure_length(courselength);
                        print(data.wd);
                        // print(Provider.of<CourseData>(context).wind_direct);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstPointPage()));
                      }

                      // print(data.course_length);
                      // print(data.wind_direct);

                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextpage()));
                    },
                  ),
                ],
              ),
            ),
          ),
        )
        // appBar: AppBar(
        //   title: const Text("Make_Course"),
        //   backgroundColor: Colors.blue,
        // ),

        );
  }
}
