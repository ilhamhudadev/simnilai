import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:standard_project/module/grade/academic/data/model/classmodel.dart';
import 'package:standard_project/module/grade/academic/data/model/transkipmodel.dart';
import 'package:standard_project/module/grade/academic/data/repo/academic_repo.dart';
import 'package:standard_project/module/grade/academic/data/repo/class_repo.dart';
import 'package:standard_project/module/grade/academic/data/repo/transkip_repo.dart';


class TranskipApiController extends GetxController with TranskipapiRepo {
  ScrollController scrollController = ScrollController();

  Future<List<ApitranskipModel>> futuretranskipData() {
    return fetchtranskipData();
  }
}
