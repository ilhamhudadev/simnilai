import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/grade/student/data/model/student_model.dart';
import 'package:standard_project/module/grade/student/data/repo/student_repo.dart';

class ApiStudentController extends GetxController with StudenttRepo {
  ScrollController scrollController = ScrollController();

  Future<List<ApiStudentModel>> futurelistData() {
    return fetchstudentdata();
    
  }
}