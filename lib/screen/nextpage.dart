import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: "距離を入力",
                    prefixIcon: Icon(Icons.bar_chart,color: Colors.blue),


                  ),
                ),
                SizedBox(height: 20),

                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    // contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      hintText: "風速を入力",
                      prefixIcon: Icon(Icons.air,color: Colors.blue),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue
                        )
                      )

                  ),
                )

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
