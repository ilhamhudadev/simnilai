import 'package:get/get.dart';
import 'package:standard_project/core/route/route_constant.dart';
import 'package:standard_project/module/auth/screen/auth_screen.dart';
import 'package:standard_project/module/auth/screen/loginScreen.dart';
import 'package:standard_project/module/grade/academic/screen/viewnilaiacademic.dart';
import 'package:standard_project/module/grade/teacher/screen/teacher_screen.dart';
import 'package:standard_project/module/home/screen/home_screen.dart';
import 'package:standard_project/module/profile/screen/profile_screen.dart';
import 'package:standard_project/module/profile/screen/view_user.dart';
import 'package:standard_project/module/study/screen/teacher.dart';

class AppRoute {
  static final all = [
    GetPage(name: RouteConstant.homeScreen, page: () => HomeScreen()),
    GetPage(name: RouteConstant.auth_screen, page: () => AuthScreen()),
    GetPage(name: RouteConstant.profilScreen, page: () => ProfileScreen()),
    GetPage(name: RouteConstant.ViewUser, page: () => ViewUser()),
    GetPage(name: RouteConstant.teacher, page: () => Teacher()),
    GetPage(name: RouteConstant.TeacherScreen, page: () => TeacherScreen()),
    GetPage(
        name: RouteConstant.viewnilaiacademic, page: () => viewnilaiacademic()),
    GetPage(name: RouteConstant.loginScreen, page: () => loginScreen())
  ];
}
