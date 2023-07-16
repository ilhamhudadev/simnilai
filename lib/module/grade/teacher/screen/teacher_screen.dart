
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:standard_project/module/grade/teacher/controller/teacher_controller.dart';
  
  class TeacherScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return GetBuilder<TeacherController>(
        init: TeacherController(),
        builder: (TeacherController controller) {
          return Scaffold();
        },
      );
    }
  }