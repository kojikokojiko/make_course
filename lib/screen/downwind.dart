import "package:flutter/material.dart";
import "package:make_course/screen/firstpointpage.dart";
import 'package:provider/provider.dart';
import 'package:make_course/model/course_data.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class DownWind extends StatefulWidget {
  @override
  State<DownWind> createState() => _DownWindState();
}

class _DownWindState extends State<DownWind> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    final CourseData data = Provider.of<CourseData>(context);
    double _nextlat = data.calc()[0];
    double _nextlong = data.calc()[1];
    Set<Marker> _markers = {
      Marker(
        markerId: MarkerId("marter1"),
        position: LatLng(_nextlat,_nextlong),
        infoWindow: InfoWindow(title: "下マーク"),
      ),
      Marker(
        markerId: MarkerId("marker2"),
        position: LatLng(data.lat!,data.long!),
        infoWindow: InfoWindow(title: "上マーク"),
      )
    };


    Set<Polyline> _lines = {
      Polyline(
        polylineId: PolylineId("line1"),
        points: [
          LatLng(_nextlat, _nextlong),
          LatLng(data.lat!, data.long!),
        ],
        color: Colors.blue,
      ),
    };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("下マークを設置"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          // padding: const EdgeInsets.all(10),
          child: GoogleMap(

            markers:_markers,
            polylines: _lines,
            mapType: MapType.hybrid,
            initialCameraPosition: CameraPosition(
              target: LatLng(_nextlat, _nextlong),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}
