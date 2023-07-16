
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:standard_project/module/grade/student/controller/student_controller.dart';
  
  class StudentScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return GetBuilder<StudentController>(
        init: StudentController(),
        builder: (StudentController controller) {
          return Scaffold();
        },
      );
    }
  }