import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:make_course/model/course_data.dart';
import 'package:geolocator/geolocator.dart';
import 'package:make_course/screen/downwind.dart';
class FirstPointPage extends StatefulWidget {
  @override
  State<FirstPointPage> createState() => _FirstPointPageState();
}

class _FirstPointPageState extends State<FirstPointPage> {
  String _location = "no data";
  String _lat = "no data";
  String _long = "no data";
  double _dlat=0;
  double _dlong=0;

  Future<void> getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    // 北緯がプラス。南緯がマイナス
    print("緯度: " + position.latitude.toString());
    // 東経がプラス、西経がマイナス
    print("経度: " + position.longitude.toString());

    setState(() {
      _lat = position.latitude.toString();
      _long = position.longitude.toString();
      _dlat = position.latitude;
      _dlong = position.longitude;
    });
  }

  @override
  Widget build(BuildContext context) {
    final CourseData data = Provider.of<CourseData>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("上マークを設置"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ボタンを押して現在地を取得",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              "緯度 $_lat",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "経度 $_long",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text(
                "下マークの位置を確認",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                primary: Colors.blue,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                )
                
              ),
              onPressed: () {
                data.set_latitude(_dlat);
                data.set_longtitude(_dlong);
                print("pp");
                print(data.long);
                print(data.lat);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DownWind()));

              },
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getLocation,
        child: Icon(Icons.location_on),
      ),
    );
  }
}
