import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/apibaru/data/model/model_api.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';
import 'package:standard_project/module/grade/academic/data/repo/academic_repo.dart';
import 'package:standard_project/module/grade/academic/data/repo/class_repo.dart';


class classapiController extends GetxController with classapiRepo {
  ScrollController scrollController = ScrollController();

  Future<List<ApiclassModel>> futureclassData() {
    return fetchclassData();
  }
}
