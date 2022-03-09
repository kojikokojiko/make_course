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

                    hintText: "距離(m)を入力",
                    prefixIcon: Icon(Icons.bar_chart),


                  ),
                ),
                SizedBox(height: 20),

                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    // contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      hintText: "風速(m/s)を入力",
                      prefixIcon: Icon(Icons.air),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue
                        )
                      )
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  child:const Text(
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
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextpage()));
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
