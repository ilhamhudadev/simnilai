import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/grade/academic/data/model/academicmodel.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';
import 'package:standard_project/module/grade/academic/data/repo/academic_repo.dart';
import 'package:standard_project/module/grade/academic/data/repo/class_repo.dart';


class AcademicapiController extends GetxController with academicapiRepo {
  ScrollController scrollController = ScrollController();

  Future<List<ApiacademicModel>> futureacademicData() {
    return fetchacademicData();
  }
}
