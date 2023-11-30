import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/grade/student/data/model/student_model.dart';
import 'package:standard_project/module/grade/student/data/repo/student_repo.dart';

class ApiStudentController extends GetxController with StudenttRepo {
  ScrollController scrollController = ScrollController();

  Future<StudentKHSModel> futurelistData() {
    return fetchstudentdata();
  }

  String checkNilaiTotal(p, t1, uts, t2, uas) {
    var np = 0.1 * double.parse(p);
    var nt1 = 0.1 * double.parse(t1);
    var nt2 = 0.1 * double.parse(t2);
    var nuts = 0.3 * double.parse(uts);
    var nuas = 0.4 * double.parse(uas);

    var nilaiTotal = np + nt1 + nt2 + nuts + nuas;

    return nilaiTotal.toStringAsFixed(0);
  }

  String checkNilaiHuruf(p, t1, uts, t2, uas) {
    var np = 0.1 * double.parse(p);
    var nt1 = 0.1 * double.parse(t1);
    var nt2 = 0.1 * double.parse(t2);
    var nuts = 0.3 * double.parse(uts);
    var nuas = 0.4 * double.parse(uas);

    var nilaiTotal = np + nt1 + nt2 + nuts + nuas;

    if (nilaiTotal >= 85) {
      return "A";
    } else if (nilaiTotal >= 80 && nilaiTotal < 85) {
      return "AB";
    } else if (nilaiTotal >= 75 && nilaiTotal < 80) {
      return "B";
    } else if (nilaiTotal >= 70 && nilaiTotal < 75) {
      return "BC";
    } else if (nilaiTotal >= 60 && nilaiTotal < 70) {
      return "C";
    } else if (nilaiTotal >= 50 && nilaiTotal < 60) {
      return "D";
    } else {
      return "E";
    }
  }

  double calculateAverage(List<int> values) {
    if (values.isEmpty) {
      return 0.0;
    }

    int sum = 0;
    for (int value in values) {
      sum += value;
    }

    double average = sum / values.length;
    return average;
  }
}
