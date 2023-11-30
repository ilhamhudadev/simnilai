import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_project/core/variables/app_constant.dart';
import 'package:standard_project/module/study/data/model/matakuliah.dart';
import 'package:standard_project/module/study/data/repo/study_repo.dart';
import 'package:dio/dio.dart' as DioPlugin;
import 'package:dio/dio.dart';

class StudyController extends GetxController with StudyRepo {
  Future<MataKuliahModel> futuretranskipData() {
    return fetchtranskipData();
  }

  TextEditingController searchController = TextEditingController();
  RxList<Data> filteredDataList = <Data>[].obs;
  int currentPage = 1;

  Future<void> NextPreviousButton() async {
    var searchText = searchController.value.text;
    debugPrint("Print 1");
    try {
      final Dio _dio = Dio();
      final response = await _dio
          .get('http://localhost:3000/api/matakuliah/$currentPage/10');
      debugPrint("Print 10 ${response.data}");
      MataKuliahModel data = MataKuliahModel.fromJson(response.data);
      debugPrint("Print 11 ");
      if (data.data!.isNotEmpty) {
        filteredDataList.value = data.data!;
      } else {
        setSnackbar("Tidak ada mata kuliah ditemukan");
      }
    } catch (e) {
      throw Exception(null);
    }
  }
}
