import 'package:flutter/foundation.dart';


class CourseData extends ChangeNotifier {
   double? _wind_direct=0;
   double? _course_length=0;
   double? _latitude=0;
   double? _longtitude=0;



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