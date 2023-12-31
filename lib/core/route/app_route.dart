import 'package:get/get.dart';
import 'package:standard_project/core/route/route_constant.dart';

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
import 'package:standard_project/module/study/data/model/study.dart';
import 'package:standard_project/module/study/data/model/study.dart';

import 'package:standard_project/module/grade/academic/screen/transkip.dart';
import 'package:standard_project/module/study/screen/study_screen.dart';

class AppRoute {
  static final all = [
    GetPage(name: RouteConstant.homeScreen, page: () => HomeScreen()),
    GetPage(name: RouteConstant.authScreen, page: () => AuthScreen()),
    GetPage(name: RouteConstant.teacher, page: () => TeacherScreen()),
    GetPage(name: RouteConstant.profilScreen, page: () => ProfileScreen()),
    GetPage(name: RouteConstant.teacherScreen, page: () => TeacherScreen()),
    GetPage(name: RouteConstant.academicScreen, page: () => AcademicScreen()),
    GetPage(name: RouteConstant.transkipScreen, page: () => TranskripScreen()),
    GetPage(name: RouteConstant.kelasScreen, page: () => KelasScreen()),
    GetPage(name: RouteConstant.teacherScreen, page: () => TeacherScreen()),
    GetPage(name: RouteConstant.sampleHitAPI, page: () => SamplehitapiScreen()),
    GetPage(name: RouteConstant.studentScreen, page: () => StudentScreen()),
  ];
}
