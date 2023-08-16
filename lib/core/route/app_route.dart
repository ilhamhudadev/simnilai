import 'package:get/get.dart';
import 'package:standard_project/core/route/route_constant.dart';
import 'package:standard_project/module/grade/teacher/screen/teacher_screen.dart';
import 'package:standard_project/module/home/screen/home_screen.dart';

class AppRoute {
  static final all = [
    //Module Homescreen
    GetPage(name: RouteConstant.homeScreen, page: () => HomeScreen()),
    GetPage(name: RouteConstant.TeacherScreen, page: () => TeacherScreen())
  ];
}
