import 'package:flutter/foundation.dart';

import 'dart:math';
class CourseData extends ChangeNotifier {
   double? _wind_direct=0;
   double? _course_length=0;
   double? _latitude=0;
   double? _longtitude=0;

   // 北緯35度の時の一度ずれるごとの距離
   double mperlat=110940.5844;
   double mperlong=91287.7885;

   List<double> calc(){

     double theta=2*pi*_wind_direct!/360;
     double deltalat=_course_length!*cos(theta)/mperlat;
     double deltalong=_course_length!*sin(theta/mperlong);

     double nextlat=_latitude!-deltalat;
     double nextlong=_longtitude!-deltalong;
     List<double> idokeido=[nextlat,nextlong];
     return idokeido;
   }

  void set_wind_direct(double? Windspeed){
    _wind_direct=Windspeed;
     notifyListeners();
  }

   void set_coure_length(double? CoureLength){
      _course_length=CoureLength;
      notifyListeners();
   }


   void set_latitude(double? Latitude){
     _latitude=Latitude;
     notifyListeners();
   }

   void set_longtitude(double? Longtitude){
     _longtitude=Longtitude;
     notifyListeners();
   }

   double? get wd{
    double? aa=_wind_direct;
    return aa;
   }

   double? get long{
     double? aa=_longtitude;
     return aa;
   }

   double? get lat{
     double? aa=_latitude;
     return aa;
   }
}