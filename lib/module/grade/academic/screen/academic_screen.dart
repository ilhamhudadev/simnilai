
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:standard_project/module/grade/academic/controller/academic_controller.dart';
  
  class AcademicScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return GetBuilder<AcademicController>(
        init: AcademicController(),
        builder: (AcademicController controller) {
          return Scaffold();
        },
      );
    }
  }