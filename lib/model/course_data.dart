import 'package:flutter/foundation.dart';


class CourseData extends ChangeNotifier {
   double? _wind_direct=0;
   double? _course_length=0;


  void set_wind_direct(double? Windspeed){
    _wind_direct=Windspeed;
     notifyListeners();
  }

   void set_coure_length(double? CoureLength){
      _course_length=CoureLength;
      notifyListeners();
   }

   double? get wd{
    double? aa=_wind_direct;
    return aa;
   }
}