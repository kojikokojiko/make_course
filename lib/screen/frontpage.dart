import 'package:flutter/material.dart';
import 'package:make_course/screen/nextpage.dart';


class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Make_Course"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: SizedBox(
            width: 300,
            height: 100,
            child: ElevatedButton(
              child:const Text(
                  "コースを作る",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,

                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextpage()));
              },
            ),
          ),

        ),
      ),
    );

  }
}
