import 'package:get/get.dart';
import 'package:standard_project/core/route/route_constant.dart';
import 'package:standard_project/module/apibaru/screen/apibaru_screen.dart';
import 'package:standard_project/module/apilist/screen/samplelistapi.dart';
import 'package:standard_project/module/auth/screen/auth_screen.dart';
import 'package:standard_project/module/grade/student/screen/student_screen.dart';
// import 'package:standard_project/module/auth/screen/loginScreen.dart';
// import 'package:standard_project/module/grade/academic/screen/viewnilaiacademic.dart';

// import 'package:standard_project/module/grade/academic/screen/viewnilaiacademic.dart';
import 'package:standard_project/module/grade/teacher/screen/teacher_screen.dart';
import 'package:standard_project/module/home/screen/home_screen.dart';

import 'package:standard_project/module/profile/screen/profile_screen.dart';
import 'package:standard_project/module/profile/screen/view_user.dart';
import 'package:standard_project/module/samplehitapi/screen/samplehitapi_screen.dart';
import 'package:standard_project/module/grade/academic/screen/academic_screen.dart';
import 'package:standard_project/module/grade/academic/screen/kelas.dart';
import 'package:standard_project/module/grade/teacher/screen/teacher_screen.dart';
// import 'package:standard_project/module/home/screen/home_screen.dart';
import 'package:standard_project/module/profile/screen/profile_screen.dart';
import 'package:standard_project/module/profile/screen/view_user.dart';
import 'package:standard_project/module/study/screen/study_screen.dart';
import 'package:standard_project/module/grade/academic/screen/transkip.dart';

class AppRoute {
  static final all = [
    GetPage(name: RouteConstant.homeScreen, page: () => HomeScreen()),
    GetPage(name: RouteConstant.authScreen, page: () => AuthScreen()),
    // GetPage(name: RouteConstant.profilScreen, page: () => ProfileScreen()),
    // GetPage(name: RouteConstant.ViewUser, page: () => ViewUser()),
    GetPage(name: RouteConstant.teacher, page: () => TeacherScreen()),
    // GetPage(name: RouteConstant.TeacherScreen, page: () => TeacherScreen()),
    // GetPage(
    //     name: RouteConstant.viewnilaiacademic, page: () => viewnilaiacademic()),
    // GetPage(name: RouteConstant.loginScreen, page: () => loginScreen()),
    //Module Homescreen
    // GetPage(name: RouteConstant.homeScreen, page: () => HomeScreen()),
    // GetPage(name: RouteConstant.auth_screen, page: () => AuthScreen()),
    GetPage(name: RouteConstant.profilScreen, page: () => ProfileScreen()),
    GetPage(name: RouteConstant.viewUser, page: () => ViewUser()),
    GetPage(name: RouteConstant.studyScreen, page: () => Studyscreen()),
    GetPage(name: RouteConstant.teacherScreen, page: () => TeacherScreen()),
    GetPage(name: RouteConstant.academicScreen, page: () => AcademicScreen()),
    GetPage(name: RouteConstant.transkipScreen, page: () => TranskripScreen()),
    GetPage(name: RouteConstant.kelasScreen, page: () => KelasScreen()),
    GetPage(name: RouteConstant.teacherScreen, page: () => TeacherScreen()),
    // GetPage(
    //     name: RouteConstant.viewnilaiacademic, page: () => viewnilaiacademic()),
    GetPage(name: RouteConstant.sampleHitAPI, page: () => SamplehitapiScreen()),
    GetPage(name: RouteConstant.ApiScreen  , page: () =>  ApiScreen ()),
    GetPage(name: RouteConstant.ListapiScreen , page: () =>  ListapiScreen ()),
     GetPage(name: RouteConstant.studentScreen, page: () => StudentScreen()),
  ];
}
